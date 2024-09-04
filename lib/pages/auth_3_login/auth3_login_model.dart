import '/components/logo/logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth3_login_widget.dart' show Auth3LoginWidget;
import 'package:flutter/material.dart';

class Auth3LoginModel extends FlutterFlowModel<Auth3LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for logo component.
  late LogoModel logoModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
    passwordVisibility = false;
  }

  @override
  void dispose() {
    logoModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
