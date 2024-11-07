import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {

  final String description;

  const TextDescription({
    required this.description,
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final textStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Colors.black87,
      fontWeight: FontWeight.normal
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(description, textAlign: TextAlign.left, style: textStyle),
    );
  }
}