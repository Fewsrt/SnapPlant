import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAccountWidget extends StatefulWidget {
  const EditAccountWidget({Key key}) : super(key: key);

  @override
  _EditAccountWidgetState createState() => _EditAccountWidgetState();
}

class _EditAccountWidgetState extends State<EditAccountWidget> {
  String uploadedFileUrl = '';
  TextEditingController textController1;
  TextEditingController emailAddressController;
  TextEditingController myBioController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController(text: currentUserEmail);
    textController1 = TextEditingController(text: currentUserDisplayName);
    myBioController = TextEditingController(text: currentUserUid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'Account'),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF14181B),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFDBE2E7),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: Container(
                    width: 90,
                    height: 90,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: uploadedFileUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        validateFileFormat(
                            selectedMedia.storagePath, context)) {
                      showUploadMessage(context, 'Uploading file...',
                          showLoading: true);
                      final downloadUrl = await uploadData(
                          selectedMedia.storagePath, selectedMedia.bytes);
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (downloadUrl != null) {
                        setState(() => uploadedFileUrl = downloadUrl);
                        showUploadMessage(context, 'Success!');
                      } else {
                        showUploadMessage(context, 'Failed to upload media');
                        return;
                      }
                    }
                  },
                  text: 'Change Photo',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF39D2C0),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                  showLoadingIndicator: false,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
            child: AuthUserStreamWidget(
              child: TextFormField(
                controller: textController1,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Your full name...',
                  hintStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF14181B),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
            child: AuthUserStreamWidget(
              child: TextFormField(
                controller: emailAddressController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Your email..',
                  hintStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF14181B),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
            child: AuthUserStreamWidget(
              child: TextFormField(
                controller: myBioController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'UserID',
                  labelStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'A little about you...',
                  hintStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBE2E7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF14181B),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
                maxLines: 3,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.05),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final usersUpdateData = createUsersRecordData(
                    displayName: textController1.text,
                    photoUrl: uploadedFileUrl,
                  );
                  await currentUserReference.update(usersUpdateData);
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'Account'),
                    ),
                  );
                },
                text: 'Save Changes',
                options: FFButtonOptions(
                  width: 340,
                  height: 60,
                  color: Color(0xFF00AE7C),
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 8,
                ),
                showLoadingIndicator: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
