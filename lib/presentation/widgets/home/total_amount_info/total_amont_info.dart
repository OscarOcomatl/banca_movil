import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TotalAmontInfo extends StatelessWidget {
  
  const TotalAmontInfo({super.key});


  @override
  Widget build(BuildContext context) {



    return Padding(
      padding:  const EdgeInsets.only(left: 20, right: 20, top: 20,  ),
      child: FadeIn(
        duration: const Duration(seconds: 2),
        child: SizedBox(
          width: double.infinity,
          height: 75,
          child: AmountInfo(),
        ),
      ),
    );
  }



}

class AmountInfo extends StatelessWidget {
  const AmountInfo({
    super.key
  });

  @override
  Widget build(BuildContext context) {

    final totalAmontDescriptionStyle = Theme.of(context).textTheme.labelLarge;
    final totalAmountStyle = Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600);
  
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          child: Text('Tu saldo total:', style: totalAmontDescriptionStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Text(r'$ 10,000.00', style: totalAmountStyle),
        ),
      ],
    );
  }
}