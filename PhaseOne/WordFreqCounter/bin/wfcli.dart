const version = '0.0.1';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == "help") {
    // default/help prompt
    usage();
  } else if (arguments.first == "version") {
    // cli version checker
    print(
      "WFC Cli Version: $version (Under Development)",
    ); // output: WFC Cli Version: 0.0.1 (Under Development)
  } else if (arguments.first == "most") {
    final inputFile = arguments.length > 1 ? arguments.sublist(1) : null;
    mostFreq(inputFile);
  } else {
    usage();
  }
}

void usage() {
  print(
    "\nThe following commands are valid:"
    "\n\nhelp: help command that guid u"
    ",\nversion: Cli Version Checker"
    ",\nmost <FILE>: Print the most frequent words on a file "
    "\n\nThese Features Still Under Development\n",
  );
}

dynamic mostFreq(List<String>? file) {
  print('still working on it');
}
