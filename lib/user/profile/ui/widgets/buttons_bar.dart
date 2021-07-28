import 'package:ak_store_app/login/bloc/login_provider.dart';
import 'package:ak_store_app/user/profile/ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonsBar extends StatelessWidget {

  LoginProvider _loginProvider;

  @override
  Widget build(BuildContext context) {
    _loginProvider = Provider.of<LoginProvider>(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[

            CircleButton(true, Icons.vpn_key, 20.0, Color.fromRGBO(255, 255, 255, 0.6), () => {}),
            CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1), () => {}),
            CircleButton(true, Icons.exit_to_app, 20.0, Color.fromRGBO(255, 255, 255, 0.6), () => {
              _loginProvider.signOut()
            })
          ],
        ));
  }
}
