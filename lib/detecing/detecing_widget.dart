import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetecingWidget extends StatefulWidget {
  const DetecingWidget({Key key}) : super(key: key);

  @override
  _DetecingWidgetState createState() => _DetecingWidgetState();
}

class _DetecingWidgetState extends State<DetecingWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0x89000000),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/09.12.2021_23.29.36_REC-removebg-preview.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Text(
              'Detecing possible diseases',
              style: FlutterFlowTheme.subtitle2.override(
                fontFamily: 'Poppins',
                color: Color(0xFFEDEFF5),
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
