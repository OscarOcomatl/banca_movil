import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionDetailsScreen extends StatelessWidget {

  const TransactionDetailsScreen({super.key});

  static const String name = 'transaction-details';

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.bodyMedium;
    final amountTextStyle = Theme.of(context).textTheme.headlineLarge;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del movimiento ', style: titleStyle,),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            context.push('/home');
          },
          icon: const Icon(Icons.arrow_back)
        )
      ),
      body: Column(
        children: [
          _AmountInfo(amountTextStyle: amountTextStyle),
          const _OriginatorAndBeneficiaryInfo()
        ],
      )
    );
  }
}

class _OriginatorAndBeneficiaryInfo extends StatelessWidget {
  const _OriginatorAndBeneficiaryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        // color: Colors.red,
        height: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 140,
                width: 2,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Ordenante
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Container(
                      height: 60,
                      width: 270,
                      color: Colors.grey,
                    ),
                  ),
                    SizedBox(width: 10,),
                  //Beneficiario
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Container(
                      height: 60,
                      width: 270,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AmountInfo extends StatelessWidget {
  const _AmountInfo({
    super.key,
    required this.amountTextStyle,
  });

  final TextStyle? amountTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        height: 100,
        // color: Colors.red,
        child: Column(
          children: [
            Container(
              child: Center(child: Text('Monto Total')),
            ),
            Container(
              child: Center(
                child: Text('450.00', style: amountTextStyle,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle_rounded, color:  Colors.green, size: 10,),
                    SizedBox(width: 5,),
                    Text('Recibido')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}