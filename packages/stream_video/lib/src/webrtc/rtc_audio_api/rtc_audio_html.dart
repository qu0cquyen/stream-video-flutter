// ignore_for_file: avoid_web_libraries_in_flutter, implementation_imports

import 'dart:html' as html;
import 'dart:js_util' as jsutil;

import 'package:dart_webrtc/src/media_stream_track_impl.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart' as rtc;

const audioContainerId = 'stream_audio_container';
const audioPrefix = 'stream_audio_';

void startAudio(String id, rtc.MediaStreamTrack track) {
  if (track is! MediaStreamTrackWeb) return;

  final elementId = audioPrefix + id;
  var audioElement = html.document.getElementById(elementId);
  if (audioElement == null) {
    audioElement = html.AudioElement()
      ..id = elementId
      ..autoplay = true;
    findOrCreateAudioContainer().append(audioElement);
  }

  if (audioElement is! html.AudioElement) return;

  final audioStream = html.MediaStream();
  audioStream.addTrack(track.jsTrack);
  audioElement.srcObject = audioStream;
}

void stopAudio(String id) {
  final audioElement = html.document.getElementById(audioPrefix + id);
  if (audioElement != null) {
    if (audioElement is html.AudioElement) {
      audioElement.srcObject = null;
    }
    audioElement.remove();
  }
}

void setSinkId(String id, String deviceId) {
  final audioElement = html.document.getElementById(audioPrefix + id);
  if (audioElement is html.AudioElement &&
      jsutil.hasProperty(audioElement, 'setSinkId')) {
    audioElement.setSinkId(deviceId);
  }
}

html.DivElement findOrCreateAudioContainer() {
  var div = html.document.getElementById(audioContainerId);
  if (div != null) return div as html.DivElement;

  div = html.DivElement()
    ..id = audioContainerId
    ..style.display = 'none';
  html.document.body?.append(div);
  return div as html.DivElement;
}
