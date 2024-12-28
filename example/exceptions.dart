import 'package:zoo_console/zoo_console.dart' show Spinner, reset;

Future<void> main() async {
  try {
    Spinner(
      prompt: 'throwing an exception',
      icon: '🚨',
    ).interact();
    await Future.delayed(const Duration(seconds: 1));
    throw Exception();
  } catch (e) {
    reset(); // Reset everything to terminal defaults
    rethrow;
  }
}