import 'package:flutter/material.dart';

class InputInfoField extends StatelessWidget{

  final String? labelText;
  final String? initialValue;
  final String? hintText;


const InputInfoField({
  this.labelText,
  this.initialValue,
  this.hintText,
  super.key
  });

@override
Widget build(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextFormField(
      autofocus: false,
      initialValue: initialValue,
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
        hintText: hintText,
        labelText: labelText,
        focusedBorder: OutlineInputBorder(
          // borderSide: const BorderSide(color: Colors.black54),
          borderSide: const BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.circular(10)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            // color: Colors.black54,
            color: Colors.transparent
          ),
          borderRadius: BorderRadius.circular(10)
        ),
        filled: true,
        fillColor: const Color.fromRGBO(	236, 239, 241, 1),
      ),
    ),
  );
}


}