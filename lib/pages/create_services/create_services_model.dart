import '/flutter_flow/flutter_flow_util.dart';
import 'create_services_widget.dart' show CreateServicesWidget;
import 'package:flutter/material.dart';

class CreateServicesModel extends FlutterFlowModel<CreateServicesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode1;
  TextEditingController? addressTextController1;
  String? Function(BuildContext, String?)? addressTextController1Validator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode2;
  TextEditingController? addressTextController2;
  String? Function(BuildContext, String?)? addressTextController2Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for salesPrice widget.
  FocusNode? salesPriceFocusNode;
  TextEditingController? salesPriceTextController;
  String? Function(BuildContext, String?)? salesPriceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    addressFocusNode1?.dispose();
    addressTextController1?.dispose();

    addressFocusNode2?.dispose();
    addressTextController2?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    salesPriceFocusNode?.dispose();
    salesPriceTextController?.dispose();
  }
}
