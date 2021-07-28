import 'package:ak_store_app/login/bloc/login_provider.dart';
import 'package:ak_store_app/user/profile/ui/screen/profile_background.dart';
import 'package:ak_store_app/user/profile/ui/screen/profile_screen.dart';
import 'package:ak_store_app/widgets/background_gradient.dart';
import 'package:ak_store_app/widgets/button_green.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class SingInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SingInScreen();
  }
}

class _SingInScreen extends State<SingInScreen> {
  LoginProvider loginProvider;
  @override
  Widget build(BuildContext context) {
    loginProvider = Provider.of<LoginProvider>(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
        stream: loginProvider.authStatus,
        builder: (_, snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
           return ProfileScreen();
          }
        });
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackGroundGradient("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bienvenido a tu tienda AK Store Footwear",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  loginProvider.signIn().then((FirebaseUser firebaseUser) =>
                      print("El usuario es ${firebaseUser.displayName}"));
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
