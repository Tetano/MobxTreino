import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class Computadores{


  Observable _placamae = Observable("");
  Observable _processador = Observable("");

  String get getPlacamae => _placamae.value;
  String get getProcessador => _processador.value;


  Computadores(this._processador,this._placamae);

  void EditarComputador(String computador, String processador){
    
  }
}