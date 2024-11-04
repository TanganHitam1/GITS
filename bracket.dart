import 'dart:io';


String bracket(String str) {
  List<String> open = ['(', '[', '{'];
  List<String> close = [')', ']', '}'];
  List<String> stack = [];
  for (int i = 0; i < str.length; i++) {
    if (open.contains(str[i])) {
      stack.add(str[i]);
    } else if (close.contains(str[i])) {
      if (stack.isEmpty) {
        return 'NO';
      }
      if (open.indexOf(stack.last) == close.indexOf(str[i])) {
        stack.removeLast();
      } else {
        return 'NO';
      }
    }
  }
  return stack.isEmpty ? 'YES' : 'NO';
}

void main(List<String> args) {
  stdout.write('Enter the string: ');
  String? str = stdin.readLineSync();
  print(bracket(str!));
}