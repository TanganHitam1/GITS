import 'dart:io';

String sloanes(angka){
  List<String> hasil = [];
  for (int i = 0; i < angka; i++) {
    int number = i * (i + 1) ~/ 2 + 1;
    hasil.add(number.toString());
  }
  return hasil.join("-");
}

void main() {
  print('Input angka: ');
  int? angka = int.parse(stdin.readLineSync()!);
  print("Output: ");
  print(sloanes(angka));
}