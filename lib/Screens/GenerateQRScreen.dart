import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateQRScreen extends StatefulWidget {
  const GenerateQRScreen({super.key});

  @override
  State<GenerateQRScreen> createState() => _GenerateQRScreenState();
}

class _GenerateQRScreenState extends State<GenerateQRScreen> {
  TextEditingController textController = TextEditingController();
  String? qrData;
  bool isShown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Generate QR code",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: HexColor('E90000'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter text',
                labelText: 'Enter text',
                labelStyle: TextStyle(fontSize: 16.0),
                floatingLabelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.link),
              ),
              controller: textController,
              onChanged: (value) {
                setState(() {
                  qrData = value;
                  isShown = false;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              setState(() {
                isShown = true;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor('E90000'),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                child: Text(
                  "Generate QR Code",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // if(qrData!=null) PrettyQrView.data(data: qrData!)
          if (isShown && qrData != null)
            Center(
              child: Container(
                height: 300,
                child: Visibility(
                  visible: isShown,
                  child: PrettyQrView.data(
                    data: qrData!,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
