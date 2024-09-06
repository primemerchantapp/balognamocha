import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'allmerchants_map_view_widget.dart' show AllmerchantsMapViewWidget;
import 'package:flutter/material.dart';

class AllmerchantsMapViewModel
    extends FlutterFlowModel<AllmerchantsMapViewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
