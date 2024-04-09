import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GPay extends StatefulWidget {
  final amount;
  final name;
  final upiid;
  const GPay({super.key, this.amount, this.name, this.upiid});

  @override
  State<GPay> createState() => _GPayState();
}

class _GPayState extends State<GPay> {
  late String currentDateTime;

  @override
  void initState() {
    super.initState();
    // Initialize the currentDateTime string with the current date and time
    updateCurrentDateTime();
  }

  void updateCurrentDateTime() {
    final now = DateTime.now();
    final formatter = DateFormat('MMMM d, yyyy h:mm a');
    currentDateTime = formatter.format(now);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/gpaydone.png',height: 280,),
            Text("₹${widget.amount}.00",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400),),
            SizedBox(height: 20,),
            Text("Paid to ${widget.name}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
            Text(widget.upiid,style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
            SizedBox(height: 80,),
            Text(currentDateTime,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
            Text("UPI transaction ID: 409649875543")
          ],
        ),
      ),
    );
  }
}
