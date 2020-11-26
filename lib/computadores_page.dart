import 'package:cursodemobx/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'counter_callback_widget.dart';
import 'custom_drawer_widget.dart';
class ComputadoresPage extends StatefulWidget {
  @override
  _ComputadoresPageState createState() => _ComputadoresPageState();
}

class _ComputadoresPageState extends State<ComputadoresPage> {
  int page = 3;
  int count = 0;

  String tittle;
  Color color;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: CustomDrawerState(page: page, callBack: (int value){
        setState(() {
          page = value;
        });
      }, ),
     // appBar: CustomAppBar(),
      body: IndexedStack(
        index: page,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: CountButton(count: count, incrise: (int value){
                setState(() {
                  count++;
                });
              },),
            )
          ),
          Container(
            color: Colors.blueAccent,
              child: Center(
                child: CountButton(count: count, incrise: (int value){
                  setState(() {
                    count++;
                  });
                },),
              )
          ),
          Container(
            color: Colors.green,
              child: Center(
                child: CountButton(count: count, incrise: (int value){
                  setState(() {
                    count++;
                  });
                },),
              )
          ),
          Container(
            color: Colors.yellow,
              child: Center(
                child: CountButton(count: count, incrise: (int value){
                  setState(() {
                    count++;
                  });
                },),
              )
          ),


        ],
      ),
    );
  }
}
