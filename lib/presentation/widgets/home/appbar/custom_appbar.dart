import 'package:flutter/material.dart';


class CustomAppbar {
  static AppBar customAppBar(){
    return AppBar(
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
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   icon: const Icon(Icons.arrow_back_rounded),
      // ),
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
              // child: ClipOval(
              //   child: Image.network(
              //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8Op8Z8DSbIhafsnEEPUsbaoGEY89q_g8afw&s',
              //     fit: BoxFit.fill,
              //   ),
              // ),
            ),
          ),
          // SizedBox(
          //   width: 5,
          // ),
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
        // PopupMenuButton(
        //   padding: EdgeInsets.zero,
        //   itemBuilder: (context) => [
        //     PopupMenuItem(
        //       height: 0,
        //       padding: EdgeInsets.zero,
        //       value: 0,
        //       child: ListTile(
        //         contentPadding:
        //             EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        //         leading: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.volume_up_outlined,
        //               color: Colors.grey,
        //               //size: 30,
        //             ),
        //           ],
        //         ),
        //         title: Transform.translate(
        //           offset: Offset(-16, 0),
        //           child: Text(
        //             "Senyap",
        //             style: TextStyle(
        //               fontSize: 17,
        //             ),
        //           ),
        //         ),
        //         trailing: Icon(
        //           Icons.arrow_forward_ios_outlined,
        //           size: 20,
        //         ),
        //       ),
        //     ),
        //     PopupMenuItem(
        //       height: 0,
        //       padding: EdgeInsets.zero,
        //       child: Divider(
        //         thickness: 7,
        //         color: Color.fromARGB(255, 186, 183, 183).withOpacity(0.1),
        //       ),
        //     ),
        //     PopupMenuItem(
        //       height: 0,
        //       padding: EdgeInsets.zero,
        //       value: 1,
        //       child: ListTile(
        //         contentPadding:
        //             EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        //         leading: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.videocam_outlined,
        //               color: Colors.grey,
        //               //size: 30,
        //             ),
        //           ],
        //         ),
        //         title: Transform.translate(
        //           offset: Offset(-16, 0),
        //           child: Text(
        //             "Panggilan Video",
        //             style: TextStyle(
        //               fontSize: 17,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     PopupMenuItem(
        //       height: 0,
        //       padding: EdgeInsets.zero,
        //       value: 1,
        //       child: ListTile(
        //         contentPadding:
        //             EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        //         leading: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.search_outlined,
        //               color: Colors.grey,
        //               //size: 30,
        //             ),
        //           ],
        //         ),
        //         title: Transform.translate(
        //           offset: Offset(-16, 0),
        //           child: Text(
        //             "Cari",
        //             style: TextStyle(
        //               fontSize: 17,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     PopupMenuItem(
        //       height: 0,
        //       padding: EdgeInsets.zero,
        //       value: 1,
        //       child: ListTile(
        //         contentPadding:
        //             EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        //         leading: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.brush_outlined,
        //               color: Colors.grey,
        //               //size: 30,
        //             ),
        //           ],
        //         ),
        //         title: Transform.translate(
        //           offset: Offset(-16, 0),
        //           child: Text(
        //             "Bersihkan Riwayat",
        //             style: TextStyle(
        //               fontSize: 17,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     PopupMenuItem(
        //       height: 0,
        //       padding: EdgeInsets.zero,
        //       value: 1,
        //       child: ListTile(
        //         contentPadding:
        //             EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        //         leading: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.colorize_outlined,
        //               color: Colors.grey,
        //               //size: 30,
        //             ),
        //           ],
        //         ),
        //         title: Transform.translate(
        //           offset: Offset(-16, 0),
        //           child: Text(
        //             "Ganti Warna",
        //             style: TextStyle(
        //               fontSize: 17,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     PopupMenuItem(
        //       height: 0,
        //       padding: EdgeInsets.zero,
        //       value: 1,
        //       child: ListTile(
        //         contentPadding:
        //             EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        //         leading: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.delete_outline_outlined,
        //               color: Colors.grey,
        //               //size: 30,
        //             ),
        //           ],
        //         ),
        //         title: Transform.translate(
        //           offset: Offset(-16, 0),
        //           child: Text(
        //             "Hapus Obrolan",
        //             style: TextStyle(
        //               fontSize: 17,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    ),
    );
  }
}
