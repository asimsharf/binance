// API Key: UZNy15Cnw1IVR7gfMJIKKDEeCuwYrm0OLISEkh3cZbSctdHABqyXE5rbRkOwTyRT
// Secret Key: JwzOmxO3aJkJPCgZF18kfSEfdq1OPqnKL3sQKq2Sbnp05Ze6InVCzJ0ZTbIxgmsg

import 'package:logger/logger.dart';

class Constance {
  static Constance instance = Constance();
  final String apiKey =
      "UZNy15Cnw1IVR7gfMJIKKDEeCuwYrm0OLISEkh3cZbSctdHABqyXE5rbRkOwTyRT";
  final String secretKey =
      "JwzOmxO3aJkJPCgZF18kfSEfdq1OPqnKL3sQKq2Sbnp05Ze6InVCzJ0ZTbIxgmsg";
  final String apiEndpoint = "https://testnet.binance.vision/api/v3";

  final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );
}

// Create Singleton Class
class Singleton {
  static Singleton _instance = Singleton();
  factory Singleton() => _instance;
  Singleton._internal();
  static Singleton get instance => _instance;
  static set instance(Singleton instance) => _instance = instance;
}
