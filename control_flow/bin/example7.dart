import 'dart:io';
void main(List<String> args) {
  //switch over integer values
  do {
    stdout.write('enter your age or type "exit": ');
    final input = stdin.readLineSync();

    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('invalid age, try again!');
      continue;
    }

    final age = int.tryParse(input);
    if (age == null) {
      stdout.writeln('Invalid age, try again!');
      continue;
    }

    switch (age) {
      case 10:
        stdout.writeln('Your are 10 years old');
        break;
      case 20:
        stdout.writeln('Your are 20 years old');
        break;
      default:
        stdout.writeln('Your are $age years old');
        break;
    }

  } while (true);
}