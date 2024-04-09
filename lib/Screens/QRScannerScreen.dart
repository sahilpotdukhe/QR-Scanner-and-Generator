import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrscan/Screens/QRScannedPage.dart';

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  List<Barcode> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scan QR code",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: HexColor('E90000'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 500,
                width: 500,
                child: MobileScanner(
                    controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.noDuplicates,
                        returnImage: true),
                    onDetect: (capture) {
                      final List<Barcode> barcodes = capture.barcodes;
                      final Uint8List? image = capture.image;
                      for (final barcode in barcodes) {
                        print("Barcode found: ${barcode.rawValue}");
                      }
                      if (image != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QRScannedPage(
                                    result: barcodes.first.rawValue,
                                    image: image)));
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
