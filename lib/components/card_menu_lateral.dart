import 'package:flutter/material.dart';

Card cardMenuLateral(Widget icons, palavra, BuildContext context, Widget pagina) {

  return Card(
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: ListTile(
      leading:  icons,
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      contentPadding: const EdgeInsets.all(3),
      title: Text(palavra, style: const TextStyle(fontSize: 19),),
      dense: true,
      onTap:(){
        Navigator.of(context).push(
            MaterialPageRoute(
            builder: (context) => pagina,
            )
        );
      },
    ),
  );
}