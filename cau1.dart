import 'dart:io';

void main(List<String> args) {
  File file = File('test.txt');
  file.writeAsStringSync('Nguyen_Nhat');
  String contents = file.readAsStringSync();
  print(contents);
  
}
