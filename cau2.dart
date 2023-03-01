import 'dart:io';

void main() {
  final fileName = 'test.txt';
  final yourName = 'Dong';
  final friendNames = ['Hung', 'Thien', 'Doan'];
  final file = File(fileName).openSync(mode: FileMode.append);
  for (final friendName in friendNames) {
    file.writeStringSync('$yourName, $friendName\n');
  }
  file.closeSync();
  print('Added ${friendNames.length} friends to $fileName');
}
