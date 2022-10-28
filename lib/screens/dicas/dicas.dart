import 'package:flutter/material.dart';
import 'package:immune/components/efeito_app_bar.dart';

class Dicas extends StatefulWidget {
  const Dicas({super.key});

  @override
  State<Dicas> createState() => _DicasState();
}

class _DicasState extends State<Dicas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: efeitoAppBar('Dicas'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Color.fromRGBO(236, 236, 255, 0.84),
                child: Image.asset(
                  "assets/images/dica_um.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Color.fromRGBO(236, 236, 255, 0.84),
                child: Image.asset(
                  "assets/images/dicas_dois.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Color.fromRGBO(236, 236, 255, 0.84),
                child: Image.asset(
                  "assets/images/atividade_fisica.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
