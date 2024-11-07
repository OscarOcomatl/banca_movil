import 'package:banca_movil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddNewCard extends StatelessWidget {

  static const String name = 'add-new-card';
   
  const AddNewCard({Key? key}) : super(key: key);
  
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardDescription(),
              TextDescription(description: 'Nombre de la tarjeta'),
              InputInfoField(hintText: 'Nombre'),
              TextDescription(description: 'Nombre del Banco'),
              EntitiesDropDownButtonFormField(),
              TextDescription(description: 'Numero de la tarjeta'),
              InputInfoField(hintText: 'Numero'),
              TextDescription(description: 'Fecha de vencimiento'),
              InputInfoField(hintText: 'Fecha'),
              SaveInfoButton()
            ],
          ),
        ),
      )
    );
  }
}



