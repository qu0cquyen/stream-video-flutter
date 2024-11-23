//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermissionRequestEvent {
  /// Returns a new [PermissionRequestEvent] instance.
  PermissionRequestEvent({
    required this.callCid,
    required this.createdAt,
    this.permissions = const [],
    this.type = 'call.permission_request',
    required this.user,
  });

  String callCid;

  DateTime createdAt;

  /// The list of permissions requested by the user
  List<String> permissions;

  /// The type of event: \"call.permission_request\" in this case
  String type;

  UserResponse user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermissionRequestEvent &&
    other.callCid == callCid &&
    other.createdAt == createdAt &&
    _deepEquality.equals(other.permissions, permissions) &&
    other.type == type &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (callCid.hashCode) +
    (createdAt.hashCode) +
    (permissions.hashCode) +
    (type.hashCode) +
    (user.hashCode);

  @override
  String toString() => 'PermissionRequestEvent[callCid=$callCid, createdAt=$createdAt, permissions=$permissions, type=$type, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'call_cid'] = this.callCid;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'permissions'] = this.permissions;
      json[r'type'] = this.type;
      json[r'user'] = this.user;
    return json;
  }

  /// Returns a new [PermissionRequestEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermissionRequestEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PermissionRequestEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PermissionRequestEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PermissionRequestEvent(
        callCid: mapValueOfType<String>(json, r'call_cid')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        permissions: json[r'permissions'] is Iterable
            ? (json[r'permissions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type')!,
        user: UserResponse.fromJson(json[r'user'])!,
      );
    }
    return null;
  }

  static List<PermissionRequestEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PermissionRequestEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PermissionRequestEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PermissionRequestEvent> mapFromJson(dynamic json) {
    final map = <String, PermissionRequestEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PermissionRequestEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PermissionRequestEvent-objects as value to a dart map
  static Map<String, List<PermissionRequestEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PermissionRequestEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PermissionRequestEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'call_cid',
    'created_at',
    'permissions',
    'type',
    'user',
  };
}

