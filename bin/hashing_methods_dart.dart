import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'raw_string.dart';

void main(List<String> arguments) {
  print('Performance of different hashing methods:\n');

  /// hashing methods to test
  var hashMethods = [
    md5,
    sha1,
    sha224,
    sha256,
    sha384,
    sha384,
    sha512,
    sha512224,
    sha512256,
  ];

  /// Used for ease in printing hash method name
  var hashNames = [
    'md5',
    'sha1',
    'sha224',
    'sha256',
    'sha384',
    'sha384',
    'sha512',
    'sha512/224',
    'sha512/256',
  ];
  var stopWatch = Stopwatch();
  var duration = Duration();

  /// Number of readings to take for the experiment.
  /// The higher the more accurate the experiment
  var noOfReadings = 1000;

  /// iterate over each hash method and calculate avg time
  for (var i = 0; i < hashMethods.length; ++i) {
    for (var c = 0; c < noOfReadings; c++) {
      /// iterate over the text list and hash every license in it
      for (var str in text) {
        stopWatch.start();

        var bytes = utf8.encode(str);
        hashMethods[i].convert(bytes);

        stopWatch.stop();
      }
      duration += stopWatch.elapsed;
      stopWatch.reset();
    }

    print('\t- ${hashNames[i]} --> ${duration.inMilliseconds / noOfReadings} ms');
    duration = Duration(milliseconds: 0);
  }
}
