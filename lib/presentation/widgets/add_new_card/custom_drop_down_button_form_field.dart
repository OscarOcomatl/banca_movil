import 'package:flutter/material.dart';

class EntitiesDropDownButtonFormField extends StatelessWidget {
  const EntitiesDropDownButtonFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButtonFormField(
        //ToDo: Leerlos de una lista de forma dinamica
        items: const <DropdownMenuItem>[
          DropdownMenuItem(value:'banamex',child: Text('Banamex')),
          DropdownMenuItem(value:'azteca',child: Text('Banco Azteca')),
          DropdownMenuItem(value:'santander',child: Text('Santander')),
          DropdownMenuItem(value:'hsbc',child: Text('HSBC')),
          DropdownMenuItem(value:'banxercito',child: Text('BanXercito')),
        ], 
        onChanged: (value){
          print(value);
        },
        decoration: InputDecoration(
          // hintText: hintText,
          // labelText: labelText,
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