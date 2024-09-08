import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'category_home_widget.dart' show CategoryHomeWidget;
import 'package:flutter/material.dart';

class CategoryHomeModel extends FlutterFlowModel<CategoryHomeWidget> {
  ///  State fields for stateful widgets in this page.

  List<MerchantsRecord> simpleSearchResults = [];
  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchInputFocusNode?.dispose();
    searchInputTextController?.dispose();
  }
}
