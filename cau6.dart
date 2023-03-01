import 'dart:io';

void main(List<String> args) {
  File file = File('test.txt');
  file.deleteSync();
  print('file deleted.');
}
