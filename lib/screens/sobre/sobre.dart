import 'package:flutter/material.dart';
import 'package:immune/components/efeito_app_bar.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: efeitoAppBar('Sobre'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .88,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Image.asset(
                  "assets/images/design_sobre.jpg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
