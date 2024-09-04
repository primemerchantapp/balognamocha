import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Mobile widget.
  FocusNode? mobileFocusNode;
  TextEditingController? mobileTextController;
  String? Function(BuildContext, String?)? mobileTextControllerValidator;
  // State field(s) for Gcash widget.
  FocusNode? gcashFocusNode;
  TextEditingController? gcashTextController;
  String? Function(BuildContext, String?)? gcashTextControllerValidator;
  // State field(s) for Paymaya widget.
  FocusNode? paymayaFocusNode;
  TextEditingController? paymayaTextController;
  String? Function(BuildContext, String?)? paymayaTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    mobileFocusNode?.dispose();
    mobileTextController?.dispose();

    gcashFocusNode?.dispose();
    gcashTextController?.dispose();

    paymayaFocusNode?.dispose();
    paymayaTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();
  }
}
