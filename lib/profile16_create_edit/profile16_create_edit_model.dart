import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile16_create_edit_widget.dart' show Profile16CreateEditWidget;
import 'package:flutter/material.dart';

class Profile16CreateEditModel
    extends FlutterFlowModel<Profile16CreateEditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourphone widget.
  FocusNode? yourphoneFocusNode;
  TextEditingController? yourphoneTextController;
  String? Function(BuildContext, String?)? yourphoneTextControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourphoneFocusNode?.dispose();
    yourphoneTextController?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
