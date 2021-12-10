import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../log_in/log_in_widget.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController emailSignUpController;
  TextEditingController usernameController;
  TextEditingController passworSignUpController;
  bool passworSignUpVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailSignUpController = TextEditingController();
    usernameController = TextEditingController();
    passworSignUpController = TextEditingController();
    passworSignUpVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Image.network(
              'https://images.unsplash.com/photo-1562351757-66f3589f30cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=772&q=80',
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  constraints: BoxConstraints(
                    maxWidth: 100,
                    maxHeight: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Image.asset(
                            'assets/images/MainPage.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 20),
                              child: Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: TextFormField(
                                    controller: emailSignUpController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: GoogleFonts.getFont(
                                        'Lexend Deca',
                                        color: Color(0xFF455A64),
                                        fontWeight: FontWeight.w100,
                                        fontSize: 14,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: Color(0xFF455A64),
                                      fontWeight: FontWeight.w100,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 20),
                              child: Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: TextFormField(
                                    controller: usernameController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Username',
                                      hintStyle: GoogleFonts.getFont(
                                        'Lexend Deca',
                                        color: Color(0xFF455A64),
                                        fontWeight: FontWeight.w100,
                                        fontSize: 14,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: Color(0xFF455A64),
                                      fontWeight: FontWeight.w100,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 4, 20),
                              child: Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      21, 3, 20, 0),
                                  child: TextFormField(
                                    controller: passworSignUpController,
                                    obscureText: !passworSignUpVisibility,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: GoogleFonts.getFont(
                                        'Lexend Deca',
                                        color: Color(0xFF455A64),
                                        fontWeight: FontWeight.w100,
                                        fontSize: 14,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passworSignUpVisibility =
                                              !passworSignUpVisibility,
                                        ),
                                        child: Icon(
                                          passworSignUpVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: Color(0xFF455A64),
                                      fontWeight: FontWeight.w100,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                final user = await createAccountWithEmail(
                                  context,
                                  emailSignUpController.text,
                                  passworSignUpController.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                final usersCreateData = createUsersRecordData(
                                  displayName: usernameController.text,
                                );
                                await UsersRecord.collection
                                    .doc(user.uid)
                                    .update(usersCreateData);

                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'DashBoard'),
                                  ),
                                  (r) => false,
                                );
                              },
                              text: 'Sign up',
                              options: FFButtonOptions(
                                width: 300,
                                height: 50,
                                color: Color(0xFF00AE7C),
                                textStyle: GoogleFonts.getFont(
                                  'Lexend Deca',
                                  color: FlutterFlowTheme.tertiaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                ),
                                borderRadius: 25,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 38,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.7, -0.01),
                                            child: Container(
                                              width: 18,
                                              height: 18,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                              ),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              final user =
                                                  await signInWithGoogle(
                                                      context);
                                              if (user == null) {
                                                return;
                                              }
                                              await Navigator
                                                  .pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBarPage(
                                                          initialPage:
                                                              'DashBoard'),
                                                ),
                                                (r) => false,
                                              );
                                            },
                                            text: 'Sign up',
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.transparent,
                                              size: 20,
                                            ),
                                            options: FFButtonOptions(
                                              width: 100,
                                              height: 38,
                                              color: Colors.transparent,
                                              textStyle: GoogleFonts.getFont(
                                                'Lexend Deca',
                                                color: Color(0xFF616161),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                              ),
                                              borderSide: BorderSide(
                                                color: Color(0xFFAAAAAA),
                                                width: 0.5,
                                              ),
                                              borderRadius: 15,
                                            ),
                                            showLoadingIndicator: false,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 80),
                                    child: Text(
                                      'Have an account?',
                                      style: GoogleFonts.getFont(
                                        'Lexend Deca',
                                        color: Color(0xFFADADAD),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 80),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LogInWidget(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Log In',
                                        style: GoogleFonts.getFont(
                                          'Lexend Deca',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
