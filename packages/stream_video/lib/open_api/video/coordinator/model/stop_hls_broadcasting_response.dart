//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StopHLSBroadcastingResponse {
  /// Returns a new [StopHLSBroadcastingResponse] instance.
  StopHLSBroadcastingResponse({
    required this.duration,
  });

  /// Duration of the request in milliseconds
  String duration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StopHLSBroadcastingResponse &&
    other.duration == duration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duration.hashCode);

  @override
  String toString() => 'StopHLSBroadcastingResponse[duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'duration'] = this.duration;
    return json;
  }

  /// Returns a new [StopHLSBroadcastingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StopHLSBroadcastingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StopHLSBroadcastingResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StopHLSBroadcastingResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StopHLSBroadcastingResponse(
        duration: mapValueOfType<String>(json, r'duration')!,
      );
    }
    return null;
  }

  static List<StopHLSBroadcastingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StopHLSBroadcastingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StopHLSBroadcastingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StopHLSBroadcastingResponse> mapFromJson(dynamic json) {
    final map = <String, StopHLSBroadcastingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StopHLSBroadcastingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StopHLSBroadcastingResponse-objects as value to a dart map
  static Map<String, List<StopHLSBroadcastingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StopHLSBroadcastingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StopHLSBroadcastingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'duration',
  };
}

