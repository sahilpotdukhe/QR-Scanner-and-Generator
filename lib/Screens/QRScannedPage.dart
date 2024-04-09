import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qrscan/Screens/GPay.dart';
import 'package:qrscan/Screens/Phonepe.dart';

class QRScannedPage extends StatefulWidget {
  final result;
  final Uint8List image;

  const QRScannedPage({super.key, this.result, required this.image});

  @override
  State<QRScannedPage> createState() => _QRScannedPageState();
}

class _QRScannedPageState extends State<QRScannedPage> {
  bool isShown = false;
  String amount = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Output",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: HexColor('E90000'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                widget.result.toString(),
                style: TextStyle(fontSize: 16),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isShown = true;
                });
                showDialog(
                    context: context,
                    builder: (_) => Dialog(
                          child: Container(
                            width: 500,
                            height: 500,
                            child: Image(
                              image: MemoryImage(widget.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor('E90000'),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                  child: Text(
                    "View QR Code",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Text(
              "Generate Payment Screenshot",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Amount',
                    labelText: 'Enter Amount',
                    labelStyle: TextStyle(fontSize: 16.0),
                    floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.currency_rupee),
                  ),
                  onChanged: (value) {
                    amount = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),
            ),
            //
            InkWell(
              onTap: (){
                String upiString = widget.result.toString();
                String? extractedName = extractNameFromUPI(upiString);
                String? extractedUPIId = extractUPIFromUPI(upiString);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> GPay(amount: amount,name: extractedName,upiid: extractedUPIId,)));
              },
              child: Card(
                elevation: 10,
                child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset('assets/gpaybg.png',height: 30,)
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                String upiString = widget.result.toString();
                String? extractedName = extractNameFromUPI(upiString);
                String? extractedUPIId = extractUPIFromUPI(upiString);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PhonePe(amount: amount,name: extractedName,upiid: extractedUPIId,)));
              },
              child: Card(
                elevation: 10,
                child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset('assets/phonepebg.png',height: 48,)
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  String? extractNameFromUPI(String upiString) {
    Uri uri = Uri.parse(upiString);
    String? name = uri.queryParameters['pn'];
    if (name != null) {
      return Uri.decodeComponent(name);
    } else {
      return null;
    }
  }

  String? extractUPIFromUPI(String upiString) {
    Uri uri = Uri.parse(upiString);
    String? upiid = uri.queryParameters['pa'];
    if (upiid != null) {
      return Uri.decodeComponent(upiid);
    } else {
      return null;
    }
  }
}


//MaterialButton(
//     child: Text("Screenshot"),
//     onPressed: () {
//       String upiString = widget.result.toString();
//       extractedName = extractNameFromUPI(upiString);
//       if (extractedName != null) {
//         print("Extracted Name: $extractedName");
//       } else {
//         print("Name not found in the UPI string.");
//       }
//
//       String? extractedUPIId = extractUPIFromUPI(upiString);
//
//       if (extractedUPIId != null) {
//         print("Extracted UPI ID: $extractedUPIId");
//       } else {
//         print("UPI ID not found in the UPI string.");
//       }
//     })