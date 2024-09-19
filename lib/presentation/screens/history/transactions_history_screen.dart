import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionsHistoryScreen extends StatelessWidget {
   
  const TransactionsHistoryScreen({super.key}) ;

  static const String name = 'transaction-history';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis movimientos'),
        leading: IconButton(
          onPressed: (){
            context.push('/home');
          }, 
          icon: const Icon(Icons.arrow_back)
        )
      ),
      body: const Center(
         child: Text('TransactionsHistoryScreen'),
      ),
    );
  }
}