import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_balance" field.
  int? _userBalance;
  int get userBalance => _userBalance ?? 0;
  bool hasUserBalance() => _userBalance != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "qrCode" field.
  int? _qrCode;
  int get qrCode => _qrCode ?? 0;
  bool hasQrCode() => _qrCode != null;

  // "gcash_number" field.
  String? _gcashNumber;
  String get gcashNumber => _gcashNumber ?? '';
  bool hasGcashNumber() => _gcashNumber != null;

  // "gcash_name" field.
  String? _gcashName;
  String get gcashName => _gcashName ?? '';
  bool hasGcashName() => _gcashName != null;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  bool hasAccountNumber() => _accountNumber != null;

  // "affiliate_code" field.
  String? _affiliateCode;
  String get affiliateCode => _affiliateCode ?? '';
  bool hasAffiliateCode() => _affiliateCode != null;

  // "sponsor" field.
  String? _sponsor;
  String get sponsor => _sponsor ?? '';
  bool hasSponsor() => _sponsor != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "team" field.
  String? _team;
  String get team => _team ?? '';
  bool hasTeam() => _team != null;

  // "mayaNumber" field.
  String? _mayaNumber;
  String get mayaNumber => _mayaNumber ?? '';
  bool hasMayaNumber() => _mayaNumber != null;

  // "located" field.
  LatLng? _located;
  LatLng? get located => _located;
  bool hasLocated() => _located != null;

  // "qr_data_sharing" field.
  String? _qrDataSharing;
  String get qrDataSharing => _qrDataSharing ?? '';
  bool hasQrDataSharing() => _qrDataSharing != null;

  // "fb" field.
  String? _fb;
  String get fb => _fb ?? '';
  bool hasFb() => _fb != null;

  // "whatsapp" field.
  String? _whatsapp;
  String get whatsapp => _whatsapp ?? '';
  bool hasWhatsapp() => _whatsapp != null;

  // "job" field.
  String? _job;
  String get job => _job ?? '';
  bool hasJob() => _job != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userBalance = castToType<int>(snapshotData['user_balance']);
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _qrCode = castToType<int>(snapshotData['qrCode']);
    _gcashNumber = snapshotData['gcash_number'] as String?;
    _gcashName = snapshotData['gcash_name'] as String?;
    _accountNumber = snapshotData['account_number'] as String?;
    _affiliateCode = snapshotData['affiliate_code'] as String?;
    _sponsor = snapshotData['sponsor'] as String?;
    _address = snapshotData['address'] as String?;
    _team = snapshotData['team'] as String?;
    _mayaNumber = snapshotData['mayaNumber'] as String?;
    _located = snapshotData['located'] as LatLng?;
    _qrDataSharing = snapshotData['qr_data_sharing'] as String?;
    _fb = snapshotData['fb'] as String?;
    _whatsapp = snapshotData['whatsapp'] as String?;
    _job = snapshotData['job'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UsersRecord.getDocumentFromData(
        {
          'email': snapshot.data['email'],
          'display_name': snapshot.data['display_name'],
          'photo_url': snapshot.data['photo_url'],
          'uid': snapshot.data['uid'],
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'phone_number': snapshot.data['phone_number'],
          'user_balance': convertAlgoliaParam(
            snapshot.data['user_balance'],
            ParamType.int,
            false,
          ),
          'shortDescription': snapshot.data['shortDescription'],
          'last_active_time': convertAlgoliaParam(
            snapshot.data['last_active_time'],
            ParamType.DateTime,
            false,
          ),
          'role': snapshot.data['role'],
          'title': snapshot.data['title'],
          'qrCode': convertAlgoliaParam(
            snapshot.data['qrCode'],
            ParamType.int,
            false,
          ),
          'gcash_number': snapshot.data['gcash_number'],
          'gcash_name': snapshot.data['gcash_name'],
          'account_number': snapshot.data['account_number'],
          'affiliate_code': snapshot.data['affiliate_code'],
          'sponsor': snapshot.data['sponsor'],
          'address': snapshot.data['address'],
          'team': snapshot.data['team'],
          'mayaNumber': snapshot.data['mayaNumber'],
          'located': convertAlgoliaParam(
            snapshot.data,
            ParamType.LatLng,
            false,
          ),
          'qr_data_sharing': snapshot.data['qr_data_sharing'],
          'fb': snapshot.data['fb'],
          'whatsapp': snapshot.data['whatsapp'],
          'job': snapshot.data['job'],
        },
        UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? userBalance,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  int? qrCode,
  String? gcashNumber,
  String? gcashName,
  String? accountNumber,
  String? affiliateCode,
  String? sponsor,
  String? address,
  String? team,
  String? mayaNumber,
  LatLng? located,
  String? qrDataSharing,
  String? fb,
  String? whatsapp,
  String? job,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_balance': userBalance,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'qrCode': qrCode,
      'gcash_number': gcashNumber,
      'gcash_name': gcashName,
      'account_number': accountNumber,
      'affiliate_code': affiliateCode,
      'sponsor': sponsor,
      'address': address,
      'team': team,
      'mayaNumber': mayaNumber,
      'located': located,
      'qr_data_sharing': qrDataSharing,
      'fb': fb,
      'whatsapp': whatsapp,
      'job': job,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userBalance == e2?.userBalance &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.qrCode == e2?.qrCode &&
        e1?.gcashNumber == e2?.gcashNumber &&
        e1?.gcashName == e2?.gcashName &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.affiliateCode == e2?.affiliateCode &&
        e1?.sponsor == e2?.sponsor &&
        e1?.address == e2?.address &&
        e1?.team == e2?.team &&
        e1?.mayaNumber == e2?.mayaNumber &&
        e1?.located == e2?.located &&
        e1?.qrDataSharing == e2?.qrDataSharing &&
        e1?.fb == e2?.fb &&
        e1?.whatsapp == e2?.whatsapp &&
        e1?.job == e2?.job;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userBalance,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.qrCode,
        e?.gcashNumber,
        e?.gcashName,
        e?.accountNumber,
        e?.affiliateCode,
        e?.sponsor,
        e?.address,
        e?.team,
        e?.mayaNumber,
        e?.located,
        e?.qrDataSharing,
        e?.fb,
        e?.whatsapp,
        e?.job
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
