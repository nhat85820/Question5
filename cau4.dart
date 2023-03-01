import 'dart:io';

void main() {
  final originalFileName = 'test.txt';
  final copyFileName = 'test_copy.txt';

  final originalFile = File(originalFileName);
  final originalContent = originalFile.readAsStringSync();

  final copyFile = File(copyFileName);
  copyFile.writeAsStringSync(originalContent);

  print('Copied $originalFileName to $copyFileName');
}
