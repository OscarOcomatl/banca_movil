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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 200,
                    color: const Color.fromRGBO(12, 57, 88, 1),
                  ),
                ),
              ),
              CustomInputField(),
              CustomInputField(),
              CustomInputField(),
              CustomInputField(),
              CustomInputField(),
              CustomInputField(),
            ],
          ),
        ),
      )
    );
  }
}