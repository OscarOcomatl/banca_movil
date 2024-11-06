import 'package:banca_movil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home-screen';
   
  const HomeScreen({super.key}) ;
  
  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppbar.customAppBar(),
      body: const SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TotalAmontInfo(),
            CustomCard(),
            LastTransactions(),
            // Text('Hola'),
            // Text('Hola'),
          ],
        ),
      ),
      // drawer: SideMenu(scaffoldKey: scaffoldKey),
      endDrawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}