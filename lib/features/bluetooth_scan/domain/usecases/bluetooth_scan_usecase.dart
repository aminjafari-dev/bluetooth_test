import 'dart:async';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:permission_handler/permission_handler.dart';

class BluetoothScanUsecase {
  FlutterBlue flutterBlue = FlutterBlue.instance;

  Future getNearbyDevices() async {
    if (await Permission.bluetooth.request().isGranted) {
      if (await Permission.bluetoothConnect.request().isGranted) {
        if (await Permission.bluetoothScan.request().isGranted) {
          flutterBlue.startScan(timeout: const Duration(seconds: 5));

        }
      }
    }

    flutterBlue.isScanning.listen((event) {
      print(event);
    });

    flutterBlue.scanResults.listen((event) {
      print(event.length);
    });
  }
}
