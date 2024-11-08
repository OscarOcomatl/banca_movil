import 'package:animate_do/animate_do.dart';
import 'package:banca_movil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddNewCardScreen extends StatelessWidget {

  static const String name = 'add-new-card';
   
  const AddNewCardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Agregar tarjeta', style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardDescription(),
              TextDescription(description: 'Nombre de la tarjeta'),
              InputInformField(hintText: 'Nombre'),
              TextDescription(description: 'Nombre del Banco'),
              EntitiesDropDownButtonFormField(),
              TextDescription(description: 'Numero de la tarjeta'),
              InputInformField(hintText: 'Numero'),
              TextDescription(description: 'Fecha de vencimiento'),
              InputInformField(hintText: 'Fecha'),
              SaveInfoButton()
            ],
          ),
        ),
      )
    );
  }
}



