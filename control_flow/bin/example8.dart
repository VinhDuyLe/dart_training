import 'dart:io';
void main(List<String> args) {
  //switch over integer values
  do {
    stdout.write('enter your name or type "exit": ');
    final input = stdin.readLineSync();

    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('invalid name, try again!');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'john':
      //fallthrough
        continue toJane;
      toJane:
      case 'jane':
        stdout.writeln('Hello $input, you have a great name');
        break;
      default:
        stdout.writeln('Hello $input');
        break;
    }

  } while (true);
}