import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  @override
  final int count;
  final Function(int) incrise;
  // Função(tipo) nome

  CountButton({this.incrise,this.count});

  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(count.toString()),
     onPressed: () {
       incrise(count+1);
       // Ao pressionar o botão ele irá incrementar o parametro do inteiro que será chamado no método, logo a count.
       // Ao incrementar o count ele será reconstruído.
     },
    );
  }
}
