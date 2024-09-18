

import 'package:banca_movil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home-screen';
   
  const HomeScreen({super.key}) ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.customAppBar(),
      body: const Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TotalAmontInfo(),
          CustomCard(),
          LastTransactions(),
          // Text('Hola'),
          // Text('Hola'),
        ],
      )
    );
  }
}