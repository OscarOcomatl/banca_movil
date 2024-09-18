import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {

    final cardNameStyle = Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).cardColor);
    final descriptionStyle = Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).cardColor);
    final cardNumberStyle = Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).cardColor);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 250,
        // width: 100,
        // color: Colors.red,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 400,
                color: const Color.fromRGBO(12, 57, 88, 1),
                child: CardInfo(cardName: cardNameStyle, descriptionStyle: descriptionStyle, cardNumberStyle: cardNumberStyle),
              ),
            ),
          ),
        ),
      ),
    );
  }



}

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.cardName,
    required this.descriptionStyle,
    required this.cardNumberStyle,
  });

  final TextStyle? cardName;
  final TextStyle? descriptionStyle;
  final TextStyle? cardNumberStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50, top: 20, ),
          child: Text('Banca Movil', style: cardName ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, bottom: 20),
          child: Text('La Banca Social con Nuevas Ideas!', style: descriptionStyle),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 20,  top: 30),
          child: Text('0000 0000 0000 0000', style: cardNumberStyle, ),
        ),
      ],
    );
  }
}