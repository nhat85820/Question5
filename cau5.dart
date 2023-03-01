import 'dart:io';

void main() {
 
  final fileNamePrefix = 'file_';
  

  final numFiles = 100;
  
  for (var i = 1; i <= numFiles; i++) {
    final fileName = '$fileNamePrefix$i.txt';
    final file = File(fileName).createSync();
    print('Created file $fileName');
  }
  

  print('Created $numFiles files');
}
