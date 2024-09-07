import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantsRecord extends FirestoreRecord {
  MerchantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "describe" field.
  String? _describe;
  String get describe => _describe ?? '';
  bool hasDescribe() => _describe != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "address_without" field.
  String? _addressWithout;
  String get addressWithout => _addressWithout ?? '';
  bool hasAddressWithout() => _addressWithout != null;

  // "address_with" field.
  LatLng? _addressWith;
  LatLng? get addressWith => _addressWith;
  bool hasAddressWith() => _addressWith != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "contact_info" field.
  String? _contactInfo;
  String get contactInfo => _contactInfo ?? '';
  bool hasContactInfo() => _contactInfo != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  // "marker_icon_url" field.
  String? _markerIconUrl;
  String get markerIconUrl => _markerIconUrl ?? '';
  bool hasMarkerIconUrl() => _markerIconUrl != null;

  // "open_hours" field.
  String? _openHours;
  String get openHours => _openHours ?? '';
  bool hasOpenHours() => _openHours != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "banner" field.
  String? _banner;
  String get banner => _banner ?? '';
  bool hasBanner() => _banner != null;

  void _initializeFields() {
    _companyName = snapshotData['company_name'] as String?;
    _describe = snapshotData['describe'] as String?;
    _city = snapshotData['city'] as String?;
    _addressWithout = snapshotData['address_without'] as String?;
    _addressWith = snapshotData['address_with'] as LatLng?;
    _category = snapshotData['category'] as String?;
    _contactInfo = snapshotData['contact_info'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _videoUrl = snapshotData['video_url'] as String?;
    _markerIconUrl = snapshotData['marker_icon_url'] as String?;
    _openHours = snapshotData['open_hours'] as String?;
    _status = snapshotData['status'] as String?;
    _website = snapshotData['website'] as String?;
    _banner = snapshotData['banner'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('merchants');

  static Stream<MerchantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MerchantsRecord.fromSnapshot(s));

  static Future<MerchantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MerchantsRecord.fromSnapshot(s));

  static MerchantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MerchantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MerchantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MerchantsRecord._(reference, mapFromFirestore(data));

  static MerchantsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      MerchantsRecord.getDocumentFromData(
        {
          'company_name': snapshot.data['company_name'],
          'describe': snapshot.data['describe'],
          'city': snapshot.data['city'],
          'address_without': snapshot.data['address_without'],
          'address_with': convertAlgoliaParam(
            snapshot.data,
            ParamType.LatLng,
            false,
          ),
          'category': snapshot.data['category'],
          'contact_info': snapshot.data['contact_info'],
          'rating': convertAlgoliaParam(
            snapshot.data['rating'],
            ParamType.int,
            false,
          ),
          'created_at': convertAlgoliaParam(
            snapshot.data['created_at'],
            ParamType.DateTime,
            false,
          ),
          'image1': snapshot.data['image1'],
          'image2': snapshot.data['image2'],
          'image3': snapshot.data['image3'],
          'video_url': snapshot.data['video_url'],
          'marker_icon_url': snapshot.data['marker_icon_url'],
          'open_hours': snapshot.data['open_hours'],
          'status': snapshot.data['status'],
          'website': snapshot.data['website'],
          'banner': snapshot.data['banner'],
        },
        MerchantsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<MerchantsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'merchants',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'MerchantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MerchantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMerchantsRecordData({
  String? companyName,
  String? describe,
  String? city,
  String? addressWithout,
  LatLng? addressWith,
  String? category,
  String? contactInfo,
  int? rating,
  DateTime? createdAt,
  String? image1,
  String? image2,
  String? image3,
  String? videoUrl,
  String? markerIconUrl,
  String? openHours,
  String? status,
  String? website,
  String? banner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company_name': companyName,
      'describe': describe,
      'city': city,
      'address_without': addressWithout,
      'address_with': addressWith,
      'category': category,
      'contact_info': contactInfo,
      'rating': rating,
      'created_at': createdAt,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'video_url': videoUrl,
      'marker_icon_url': markerIconUrl,
      'open_hours': openHours,
      'status': status,
      'website': website,
      'banner': banner,
    }.withoutNulls,
  );

  return firestoreData;
}

class MerchantsRecordDocumentEquality implements Equality<MerchantsRecord> {
  const MerchantsRecordDocumentEquality();

  @override
  bool equals(MerchantsRecord? e1, MerchantsRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.describe == e2?.describe &&
        e1?.city == e2?.city &&
        e1?.addressWithout == e2?.addressWithout &&
        e1?.addressWith == e2?.addressWith &&
        e1?.category == e2?.category &&
        e1?.contactInfo == e2?.contactInfo &&
        e1?.rating == e2?.rating &&
        e1?.createdAt == e2?.createdAt &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.videoUrl == e2?.videoUrl &&
        e1?.markerIconUrl == e2?.markerIconUrl &&
        e1?.openHours == e2?.openHours &&
        e1?.status == e2?.status &&
        e1?.website == e2?.website &&
        e1?.banner == e2?.banner;
  }

  @override
  int hash(MerchantsRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.describe,
        e?.city,
        e?.addressWithout,
        e?.addressWith,
        e?.category,
        e?.contactInfo,
        e?.rating,
        e?.createdAt,
        e?.image1,
        e?.image2,
        e?.image3,
        e?.videoUrl,
        e?.markerIconUrl,
        e?.openHours,
        e?.status,
        e?.website,
        e?.banner
      ]);

  @override
  bool isValidKey(Object? o) => o is MerchantsRecord;
}
