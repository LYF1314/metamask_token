import 'package:logger/logger.dart';

class Console {
  static Console _instance = Console.create();
  factory Console() => _instance;

  late Logger logger;
  Console.create() {
    logger = Logger(
      printer: PrettyPrinter(methodCount: 0),
    );
  }

  debug(dynamic message) {
    logger.d(message);
  }

  info(dynamic message) {
    logger.i(message);
  }

  warn(dynamic message) {
    logger.w(message);
  }

  error(dynamic message) {
    logger.e(message);
  }

  static d(dynamic message) {
    Console().debug(message);
  }

  static i(dynamic message) {
    Console().info(message);
  }

  static w(dynamic message) {
    Console().warn(message);
  }

  static e(dynamic message) {
    Console().error(message);
  }
}
