import 'package:ak_store_app/login/bloc/login_provider.dart';
import 'package:ak_store_app/user/bloc/user_info.dart';
import 'package:ak_store_app/user/model/user.dart';
import 'package:ak_store_app/user/profile/ui/widgets/buttons_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileHeader extends StatelessWidget {
  LoginProvider _loginProvider;
  User user;
  @override
  Widget build(BuildContext context) {

    _loginProvider = Provider.of<LoginProvider>(context);
    return StreamBuilder(
        stream: _loginProvider.authStatus,

        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return showProfileData(snapshot);
            case ConnectionState.done:
              return showProfileData(snapshot);
          }
        });
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      return Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
          child: Column(
            children: <Widget>[
              CircularProgressIndicator(),
              Text("No se pudo Cragar la información. Haz Login")
            ],
          ));
    } else {
      user = User(name: snapshot.data.displayName, email: snapshot.data.email, photoURL: snapshot.data.photoUrl);
      final title = Text(
        'Perfiles',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      );

      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[title],
            ),
            UserInfo(user),
            ButtonsBar()
          ],
        ),
      );
    }
  }
}
