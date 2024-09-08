import '/flutter_flow/flutter_flow_util.dart';
import 'profile12_widget.dart' show Profile12Widget;
import 'package:flutter/material.dart';

class Profile12Model extends FlutterFlowModel<Profile12Widget> {
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
