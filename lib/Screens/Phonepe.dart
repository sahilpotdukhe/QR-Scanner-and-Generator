import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PhonePe extends StatelessWidget {
  final amount;
  final name;
  final upiid;

  const PhonePe({super.key, this.amount, this.name, this.upiid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: HexColor('#20A15C'),
            child: Column(children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/successbg.png',
                height: 104,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Payment of ₹$amount to $name successful.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 80,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:HexColor('#20A15C'),
                      border: Border.all(color: Colors.white)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                      child: Text(
                        "VIEW DETAILS",
                        style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:HexColor('#20A15C'),
                        border: Border.all(color: Colors.white)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                      child: Text(
                        "SPLIT EXPENSE",
                        style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ]),
          ),

          Image.asset('assets/phonepead.png')
        ],
      ),
    );
  }
}
