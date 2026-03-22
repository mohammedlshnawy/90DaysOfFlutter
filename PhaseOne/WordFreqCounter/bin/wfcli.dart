import 'dart:io';

const version = '0.0.1';

void main(List<String> arguments) {
  final inputFile = arguments.length > 1
      ? arguments.sublist(2).join(' ')
      : null;
  final inputCount = arguments.length > 1 ? arguments[1] : null;
  int cnt = int.tryParse(inputCount ?? "") ?? 0;

  if (arguments.isEmpty || arguments.first == "--help") {
    // default/help prompt
    help();
  } else if (arguments.first == "--v") {
    // cli version checker
    print(
      "WFC Cli Version: $version (Under Development)",
    ); // output: WFC Cli Version: 0.0.1 (Under Development)
  } else if (arguments.first == "--top") {
    top(inputFile.toString(), cnt);
  } else {
    help();
  }
}

void help() {
  print(
    "\nThe following commands are valid:"
    "\n\nhelp: help command that guid u"
    ",\nversion: Cli Version Checker"
    ",\n--top <FILE>: Print the top 10 frequent words on a file "
    "\n\nThese Features Still Under Development\n",
  );
}

dynamic top(String file, int count) async {
  await File(file).readAsString().then((String content) {
    var str = content.toLowerCase().replaceAll(RegExp(r'[^\w\s]'), '').split(RegExp(r'\s+'));
    print(str);
    print(count);
  });
}
