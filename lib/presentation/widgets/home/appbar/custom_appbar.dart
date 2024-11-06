import 'package:flutter/material.dart';


class CustomAppbar {
  static AppBar customAppBar(){
    return AppBar(
      titleSpacing: -45,
      leading: Text(''),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(12, 57, 88, 1),
                child: Text('O', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hola, Oscar', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16), ),
               SizedBox(
                  height: 2,
                ),
              Text(
                'Bienvenido',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// Ejemplo de appbar
class MyHomePage extends StatelessWidget {

  const MyHomePage({
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      titleSpacing: 0.0,
      title: const Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(12, 57, 88, 1),
                child: Text('O', style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hola, Oscar', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16), ),
               SizedBox(
                  height: 2,
                ),
              Text(
                'Bienvenido',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            icon: const Icon(Icons.menu_rounded, size: 30),
            onPressed: (){

            },
          ),
        ),
      ],
    ),
    );
  }
}
