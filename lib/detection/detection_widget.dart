import 'dart:io';
import 'dart:async';
import 'dart:developer';
import '../main.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';

import '../auth/auth_util.dart';
import '../backend/firebase_storage/storage.dart';
import '../backend/backend.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:delayed_display/delayed_display.dart';

import '../blackmold/blackmold_widget.dart';
import '../downymildew/downymildew_widget.dart';
import '../mealybug/mealybug_widget.dart';
import '../dash_board/dash_board_widget.dart';

class DetectionWidget extends StatefulWidget {
  const DetectionWidget({Key key}) : super(key: key);

  @override
  _DetectionWidgetState createState() => _DetectionWidgetState();
}

class _DetectionWidgetState extends State<DetectionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String uploadedFileUrl = '';
  bool _loading = true;
  File _image;
  List _output;
  Timer _timer;
  final picker = ImagePicker();
  var _isDetection = false;
  var _isDetectionout = false;

  _startDetection() {
    _timer = new Timer(const Duration(milliseconds: 1000), () {
      this.setState(() {
        _isDetection = true;
      });
    });
  }

  _startDetectionout() {
    _timer = new Timer(const Duration(milliseconds: 2500), () {
      this.setState(() {
        _isDetectionout = true;
      });
    });
  }

  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Detection Again'),
            content: Text('Disease not found!!'),
            actions: <Widget>[
              TextButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashBoardWidget(),
                      ),
                    );
                  },
                  child: Text('Close')),
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 3,
        threshold: 0.5,
        imageMean: 127.5,
        imageStd: 127.5);

    setState(() {
      _output = output;
      _loading = false;
    });
    final diseaseCreateData = createDiseaseRecordData(
      name: "${_output[0]["label"]}",
      createAt: getCurrentTimestamp,
      pic: uploadedFileUrl,
      user: currentUserReference,
    );
    await DiseaseRecord.collection.doc().set(diseaseCreateData);
    _timer = new Timer(const Duration(milliseconds: 3000), () {
      if (_output[0]["index"] == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlackmoldWidget(),
          ),
        );
      } else if (_output[0]["index"] == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MealybugWidget(),
          ),
        );
      } else if (_output[0]["index"] == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DownymildewWidget(),
          ),
        );
      } else if (_output[0]["index"] == 3) {
        _showMaterialDialog();
      }
    });
  }

  pickGalleryImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image.path);
    });

    classifyImage(_image);
    _startDetection();
    _startDetectionout();
  }

  pickImage() async {
    var image = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
    _startDetection();
    _startDetectionout();
  }

  loadModel() async {
    await Tflite.loadModel(
        model: 'assets/model.tflite', labels: "assets/labels.txt");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
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
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xB4000000),
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Detection',
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 24, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Waiting for Detection',
                    style: FlutterFlowTheme.bodyText2.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF8B97A2),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.94,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: _output == null
                          ? Container()
                          : Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.96,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 6,
                                          color: Color(0xFFE0E0E0),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.file(
                                      _image,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
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
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    pickGalleryImage();
                  },
                  text: 'Pick Photo',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF00AE7C),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                  showLoadingIndicator: false,
                )),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  pickImage();
                },
                text: 'Pick Camera',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFF00AE7C),
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
                showLoadingIndicator: false,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: Color(0xFFDBE2E7),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFFDBE2E7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: _isDetection,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dateTimeFormat(
                                      'd/M H:m', getCurrentTimestamp),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: _isDetection,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Uploading',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF151B1E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: Color(0xFFDBE2E7),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFFDBE2E7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: _isDetectionout,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dateTimeFormat(
                                      'd/M H:m', getCurrentTimestamp),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: _isDetectionout,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Detection',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF151B1E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 7, 0, 0),
                                  child: _output == null
                                      ? Container()
                                      : Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(),
                                              _output != null
                                                  ? Text(
                                                      "${_output[0]["label"]}",
                                                      style: FlutterFlowTheme
                                                          .subtitle1
                                                          .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF39D2C0),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  : Container(),
                                              SizedBox(
                                                height: 10,
                                              )
                                            ],
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
          ],
        ),
      ),
    );
  }
}
