import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MealybugWidget extends StatefulWidget {
  const MealybugWidget({Key key}) : super(key: key);

  @override
  _MealybugWidgetState createState() => _MealybugWidgetState();
}

class _MealybugWidgetState extends State<MealybugWidget> {
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
                          width: double.infinity,
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
                                              PageController(initialPage: 2),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                child: Image.asset(
                                                  'assets/images/Mealy_Cover_a833a1d7-02cb-4dca-961a-ec99c9c0ab60_2048x.jpg',
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/LHF-52454-are-mealybugs-harmful-to-humans-t1-min.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.asset(
                                              'assets/images/q5fk8_.jfif',
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
                                              PageController(initialPage: 2),
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
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                'Mealybug',
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
                              'The body is jointed, round or elongated in shape. The head and legs are under the body. There are 6 legs, no wings, covered with powder. mouth is sucking It can reproduce both by sex and asexual (Thelytokous parthenogenesis), in which the female does not need to be fertilized from the male. There are both types of ovum (Oviparous) or ovum (Viviparous). Egg mealybugs have a single egg, light yellow, elongated, packed in egg sacs, which are covered with cotton-like fibers. The mealybug larvae have light yellow larvae, elongated larvae, the first larvae (crawlers) are mobile, molting 3-4 times. The adults and females have a relatively flat body. There is a lot of fur on the back and sides. The spawning species creates an egg sac under the abdomen. Looks like fibers like cotton wrapped in another layer. As for the larvae of the species are Lum Tua Pom, Kamon, Suan Long and Dan Khang, Mapang Koh, sex hair cover 1, loose hornets or insects. Female leggings size The maintenance of the fart from the NP. Pang Mokoi is combined into a round shape. Tong Tua On and Tua Te Muay can sway but from the nature of the crime and the destruction of the people Jong Mok Nui Nong Mai Khiao',
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
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 2),
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
                                '1. Dishwashing liquid without bleach which has the effect of reducing surface tension causing the wax that the mealybug builds to cover itself and can\'t breathe Use a ratio of 3 tablespoons of dishwashing liquid to 20 liters of water. If it works, you will see the mealybug atrophy dry up.\n2. 2 bottles of white liquor recipe, 1 liter of 5% vinegar, 1 liter of EM substance, 1 liter of molasses and 10 liters of clean water. Mix them all together and ferment for 10-15 days. Also, do not close the lid tightly to allow the generated gas to escape. After maturity, use 1-5 tablespoons of water mixed with 5-10 liters of clean water to spray vegetables every 3 days, alternating with liquid fertilizer. If it is a garden plant, spray every 3-7 days, alternating with liquid fertilizer. Importantly, the spraying must be thorough. Otherwise, if there is a mealybug under the leaves or tightly stacked It may cause the bottom to survive and continue to propagate. Efforts must be made to eliminate the root cause, eliminate tumors, and use chemicals simultaneously. to defeat the little aphid',
                                textAlign: TextAlign.start,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
