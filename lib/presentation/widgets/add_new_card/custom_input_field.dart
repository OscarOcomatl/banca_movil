

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{


const CustomInputField({super.key});

@override
Widget build(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextFormField(
      autofocus: false,
      initialValue: 'Hola',
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      obscureText: false,
      onChanged: (value){
        print(value);
      },
      validator: (value){
        value != null ? 'correcto' : 'incorrecto';
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: 'Nombre de la tarjeta',
        labelText: 'Nombre',
        helperText: 'Nombre 2',
        border: OutlineInputBorder(),
        // hoverColor: Colors.red
        // labelStyle: TextStyle(
        //   backgroundColor: Colors.red
        // )
        // hoverColor: Colors.red
        // border: InputBorder.none
        // counterText: '1',
        // suffixIcon: Icon(Icons.circle),
        // icon: Icon(Icons.square)

      ),
    ),
  );
}


}