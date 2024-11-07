import 'package:banca_movil/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({required this.scaffoldKey,  super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

    int navigationDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch =  MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navigationDrawerIndex,
      onDestinationSelected: (value){
        setState(() {
          navigationDrawerIndex = value;
        });
        final menuItem = menuItems[value];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: <Widget> [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10)
        ),
        ...menuItems
        .map(
          (item) => NavigationDrawerDestination(
            // backgroundColor: Colors.red,

            // icon: Icon(item.icon), 
            icon: const Text(''),
            label: Text(item.title)
          )
        ),
        // NavigationDrawerDestination(icon: Text(''), label: Text('Perfil')),
        // NavigationDrawerDestination(icon: Text(''), label: Text('Cuenta')),
        // NavigationDrawerDestination(icon: Text(''), label: Text('Preferencias')),
        // NavigationDrawerDestination(icon: Text(''), label: Text('Realizar Transferencia')),
        // NavigationDrawerDestination(icon: Text(''), label: Text('Agregar Tarjeta')),
        // NavigationDrawerDestination(icon: Text(''), label: Text('Cerrar Sesión')),
      ] 
    );
  }
}