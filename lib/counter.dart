import 'dart:ui';
import 'package:mobx/mobx.dart';


// Para que ocorra uma mudança é necessário inserir no action a alteração
class Counter {

  Counter(){
    increment = Action(_incrementI); // Chama o método de incremento
    incrementI = Action(_incrementI);
  }

  Observable _count = Observable(0); // Coloca como observavel a variável

  int get count => _count.value; // geter para obter o valor do contador

  Action increment; // Atribui uma action
  Action incrementI; // Atribui uma action

  void _incrementI(){ // Método de incremento, que será chamado no construtor.
    _count.value++;
  }


}