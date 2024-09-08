import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'prime_office_model.dart';
export 'prime_office_model.dart';

class PrimeOfficeWidget extends StatefulWidget {
  const PrimeOfficeWidget({super.key});

  @override
  State<PrimeOfficeWidget> createState() => _PrimeOfficeWidgetState();
}

class _PrimeOfficeWidgetState extends State<PrimeOfficeWidget> {
  late PrimeOfficeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimeOfficeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF201C1C),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: AuthUserStreamWidget(
              builder: (context) => Builder(builder: (context) {
                final googleMapMarker = FFAppState().office;
                return FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) =>
                      safeSetState(() => _model.googleMapsCenter = latLng),
                  initialLocation: _model.googleMapsCenter ??=
                      currentUserDocument!.located!,
                  markers: [
                    if (googleMapMarker != null)
                      FlutterFlowMarker(
                        googleMapMarker.serialize(),
                        googleMapMarker,
                      ),
                  ],
                  markerColor: GoogleMarkerColor.orange,
                  markerImage: const MarkerImage(
                    imagePath: 'assets/images/Add_a_heading_(11).gif',
                    isAssetImage: true,
                    size: 20.0 ?? 20,
                  ),
                  mapType: MapType.normal,
                  style: GoogleMapStyle.retro,
                  initialZoom: 14.0,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: true,
                  showMapToolbar: true,
                  showTraffic: true,
                  centerMapOnMarkerTap: true,
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
