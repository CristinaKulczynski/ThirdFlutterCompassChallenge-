import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:immune/components/imagens.dart';
import 'package:immune/screens/tela_inicial.dart';

class TelaLogoInicial extends StatefulWidget {
  const TelaLogoInicial({Key? key}) : super(key: key);

  @override
  State<TelaLogoInicial> createState() => _TelaLogoInicialState();
}

class _TelaLogoInicialState extends State<TelaLogoInicial> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    Future
        .delayed(const Duration(seconds: 5))
        .then((_) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const TelaLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        Imagens.imagemtelainicial,
        /* Ajuste na borda da imagem */
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

