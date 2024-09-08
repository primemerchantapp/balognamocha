import '/flutter_flow/flutter_flow_util.dart';
import 'profile12_edit_widget.dart' show Profile12EditWidget;
import 'package:flutter/material.dart';

class Profile12EditModel extends FlutterFlowModel<Profile12EditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
