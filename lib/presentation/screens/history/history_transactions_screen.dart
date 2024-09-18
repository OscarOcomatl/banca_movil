import 'package:flutter/material.dart';

class StoryTransactionsScreen extends StatelessWidget {
   
  const StoryTransactionsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis movimientos'),
      ),
      body: Center(
         child: Text('StoryTransactionsScreen'),
      ),
    );
  }
}