import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import 'package:snap_plant/log_in/log_in_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'dash_board/dash_board_widget.dart';
import 'disease/disease_widget.dart';
import 'account/account_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<SnapPlantFirebaseUser> userStream;
  SnapPlantFirebaseUser initialUser;
  bool displaySplashImage = true;
  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = snapPlantFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnapPlant',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null || displaySplashImage
          ? Container(
              color: Color(0x93FBD490),
              child: Center(
                child: Builder(
                  builder: (context) => Image.asset(
                    'assets/images/MainPage.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.7,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : LogInWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'DashBoard';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'DashBoard': DashBoardWidget(),
      'Disease': DiseaseWidget(),
      'Account': AccountWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 24,
            ),
            label: 'Dashboard',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.leaf,
              size: 24,
            ),
            label: 'Disease',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 24,
            ),
            label: 'Account',
            tooltip: '',
          )
        ],
        backgroundColor: Colors.white,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Color(0xFF00AE7C),
        unselectedItemColor: Color(0xFF363636),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
