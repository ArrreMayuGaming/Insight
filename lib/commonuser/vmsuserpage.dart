
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class UserVMSPage extends StatefulWidget {
  @override
  _UserVMSPageState createState() => _UserVMSPageState();
}

class _UserVMSPageState extends State<UserVMSPage> {
  String qrCode = 'Unknown';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {},
          child: Text('Scan'),
        ),
      ),
    );
  }

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }
}
