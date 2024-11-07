import 'package:flutter/material.dart';


class SaveInfoButton extends StatelessWidget {

  const SaveInfoButton({super.key});

  @override
  Widget build( BuildContext context ){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: (){}, 
        child: const SizedBox(
          width: double.infinity,
          child: Center(
            child: Text('Guardar'),
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromRGBO(12, 57, 88, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
    );
  }

}