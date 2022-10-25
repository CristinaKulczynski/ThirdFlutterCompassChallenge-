import 'package:flutter/material.dart';
import 'package:immune/screens/tela_logo_inicial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        /*Cores padrão*/
        primaryColor: const Color.fromRGBO(90, 78, 190, 0.1),
        appBarTheme: const AppBarTheme(color: Color.fromRGBO(32, 37, 141, 1)),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color.fromRGBO(32, 37, 141, 1),
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: const Color.fromRGBO(32, 37, 141, 1)),
      ),
      home: const TelaLogoInicial(),
    );
  }
}

