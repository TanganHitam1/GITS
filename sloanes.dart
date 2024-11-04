import 'dart:io';

String sloanes(angka){
  String hasil = "";
  for (int i = 0; i < angka; i++) {
    double number = i*(i+1)/2+1;
    int intNum = number.toInt();
    hasil += intNum.toString();
    if (i < angka-1) {
      hasil += "-";
    }
  }
  return hasil;
}

void main() {
  print('Input angka: ');
  int? angka = int.parse(stdin.readLineSync()!);
  print(sloanes(angka));
}