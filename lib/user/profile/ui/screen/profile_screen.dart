import 'package:ak_store_app/producto_detalle.dart';
import 'package:ak_store_app/user/profile/ui/screen/profile_background.dart';
import 'package:ak_store_app/user/profile/ui/screen/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProfileBackground(),
          ListView(
            children: <Widget>[ProductoDetalle()], //ProfileHeader
          ),
        ],
      ),
    );
  }
}
