import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String tittle;
  final Color color;
  final Function(String,Color) editTittle;

  CustomAppBar({this.tittle,this.color,this.editTittle});

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: color,
      title: Text(tittle),
      actions: [
        IconButton(
          onPressed: () {
            editTittle(tittle,color);
          },
        )
      ],
    );
  }
}
