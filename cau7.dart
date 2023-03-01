import 'dart:io';

void main() {

  final fileName = 'students.csv';
  

  final students = [
    ['Dong', '20', 'Hai Phong'],
    ['Doan', '20', 'Hai Phong'],
    ['Thien', '20', 'Hai Phong'],
  ];
  
  
  final file = File(fileName);
  final sink = file.openWrite();
  
  for (final student in students) {
    final line = student.join(',');
    sink.writeln(line);
  }
  
  sink.close();

  final lines = file.readAsLinesSync();
  
  for (final line in lines) {
    final student = line.split(',');
    final name = student[0];
    final age = int.parse(student[1]);
    final address = student[2];
    
    print('Name: $name, Age: $age, Address: $address');
  }
}
