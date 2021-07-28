import 'package:ak_store_app/login/bloc/login_provider.dart';
import 'package:ak_store_app/login/ui/screens/sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => LoginProvider())
     ],
        child: MaterialApp(
          title: 'AK Store',
          initialRoute: 'home',
          routes: {'home': (context) => SingInScreen()},
    ));
  }
}
