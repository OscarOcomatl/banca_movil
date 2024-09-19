import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionDetailsScreen extends StatelessWidget {
   
  const TransactionDetailsScreen({super.key});

  static const String name = 'transaction-details';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: const Text('Detalles del movimiento '),
        leading: IconButton(
          onPressed: (){
            context.push('/home');
          }, 
          icon: const Icon(Icons.arrow_back)
        )
      ),
      body: const Center(
         child: Text('TransactionDetailsScreen'),
      ),
    );
  }
}