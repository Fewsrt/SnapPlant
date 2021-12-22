import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DownymildewWidget extends StatefulWidget {
  const DownymildewWidget({Key key}) : super(key: key);

  @override
  _DownymildewWidgetState createState() => _DownymildewWidgetState();
}

class _DownymildewWidgetState extends State<DownymildewWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          height: 300,
                          child: Stack(
                            alignment: AlignmentDirectional(0, 0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 50),
                                        child: PageView(
                                          controller: pageViewController ??=
                                              PageController(initialPage: 0),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                child: Image.asset(
                                                  'assets/images/20210629130852.jpg',
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/a2.1.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.asset(
                                              'assets/images/unnamed.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0, 0.85),
                                        child: SmoothPageIndicator(
                                          controller: pageViewController ??=
                                              PageController(initialPage: 0),
                                          count: 3,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) {
                                            pageViewController.animateToPage(
                                              i,
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                          },
                                          effect: SlideEffect(
                                            spacing: 8,
                                            radius: 20,
                                            dotWidth: 15,
                                            dotHeight: 15,
                                            dotColor: Color(0x89000000),
                                            activeDotColor: Color(0xFF00AE7C),
                                            paintStyle: PaintingStyle.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.95, -0.7),
                                child: InkWell(
                                  onTap: () async {
                                    Navigator.pop(context);
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFF5F5F5),
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Color(0xB4000000),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Plant  Name',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF8B97A2),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              'Downy mildew',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.title2.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Explanation',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF8B97A2),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: AutoSizeText(
                              'Also known by farmers as \"striped leaf disease\", it is one of the most important diseases of melons and melons. In Thailand, outbreaks of this disease have been reported in plantings of melons all over the world. In areas with humidity and temperature suitable for the infestation of fungi. Mildew usually occurs in temperate and tropical regions with rainfall and dew. with the length of time that will cause an outbreak of disease If there is no way to control the disease Will cause severe damage to melons and other plants of the melon family. both in the conditions of planting in the plot and in greenhouse conditions\n',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maintenance method',
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF8B97A2),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 20),
                              child: AutoSizeText(
                                '1. The planting distance is not too close to each other. to drain moisture\n2. If a diseased leaf is found, pluck it out. By being careful of the fly of fungal spores.\n3. Watering the melons from the top of the canopy to the bottom of the stem, also known as washing the leaves of the plant in the morning, along with watering. to clear the dew from the leaves of the plant especially during cold weather or severe dew\n4. After washing the leaves of the plant, it should be sprayed with wood vinegar at the rate of 10 cc per 20 liters of water, sprayed from top to bottom. Covering the canopy of the plant every 7-10 days will solve the problem of downy mildew infesting the plant.\n5. Use wood vinegar alternating with the use of antagonistic bacteria such as Bacillus subtilis at the rate of 30-50 grams per 20 liters of water, periodically spraying. or sprayed after the diseased leaves have been picked to prevent other plants from infecting the disease1. The planting distance is not very close to each other. to drain moisture\n',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(105, 0, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          NavBarPage(initialPage: 'DashBoard'),
                                    ),
                                  );
                                },
                                text: 'Go Back',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Color(0xFF00AE7C),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
