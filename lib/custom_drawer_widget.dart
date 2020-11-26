import 'package:flutter/material.dart';


class CustomDrawerState extends StatelessWidget {
  @override
  final int page;
  final Function(int) callBack;

  CustomDrawerState({this.page,this.callBack});

  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(accountEmail: Text("Vazio") , accountName: Text("Matheus"), currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/gtawiki/images/7/70/CJ-GTASA.png/revision/latest/top-crop/width/360/height/360?cb=20190612091918'),
          ),),
          ListTile(
            selected: page == 0,
            title: Text("Vermelho"),
            onTap: () {
              callBack(0);
            },
          ),
          ListTile(
            selected: page == 1,
            title: Text("Azul"),
            onTap: () {
              callBack(1);
            },
          ),
          ListTile(
            selected: page == 2,
            title: Text("Verde"),
            onTap: () {
              callBack(2);
            },
          ),
          ListTile(
            selected: page == 3,
            title: Text("Amarelo"),
            onTap: () {
              callBack(3);
            },
          ),
        ],
      ),
    );

  }
}
