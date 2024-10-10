import 'package:flutter/material.dart';

class TransactionInfo extends StatelessWidget {

  final Color? amountColor;

  const TransactionInfo({this.amountColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, ),
              child: Text('Cargo por SPEI', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('+ 4500.00', style: TextStyle(color: amountColor, fontSize: 18, fontWeight: FontWeight.w600), textAlign: TextAlign.left,),
                  SizedBox(width: 5),
                  Text('MXN', style: TextStyle(fontSize: 9,))
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, ),
              child: Text('Hoy, 7:35 PM',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Ingreso',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            )
          ],
        )
      ],
    );
  }
}