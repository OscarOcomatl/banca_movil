

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class MenuItem {
  final String title;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.link,
    required this.icon,
  });
}

const menuItems = <MenuItem>[
  MenuItem(
    title: 'Perfil',
     link: '/profile',
      icon: Icons.person_2_rounded
  ),
  MenuItem(
   title: 'Mi cuenta',
   link: '/my-account', 
   icon: Icons.account_box
  ),
  MenuItem(
    title:'Preferencias',
    link: '/preferences',
    icon: Icons.settings
  ),
  MenuItem(
    title: 'Movimientos',
    link: '/transactions-history', 
    icon: Icons.history
  ),
  MenuItem(
    title: 'Realizar transferencia', 
    link: '/make-transaction', 
    icon: Icons.compare_arrows_rounded
  ),
  MenuItem(
    title: 'Agregar tarjeta', 
    link: '/add-new-card', 
    icon: Icons.add_card_rounded
  ),
  MenuItem(
    title: 'Salir', 
    link: '/', 
    icon: Icons.exit_to_app_rounded
  ),

];