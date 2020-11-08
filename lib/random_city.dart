import 'dart:math';
import 'dart:ui';
import 'package:mobx/mobx.dart';
class RandomCity{


  Observable _cidade = Observable(''); // Cuidado ao iniciar as variáveis, deve sempre se iniciar para não dar problema com null pelo método de build
  Observable _cor = Observable(Color.fromRGBO(0, 0, 0, 1)); // Instância de uma cor

  Action randomCity;

  RandomCity(){
    randomCity = Action(_randomCity);
  }

  String get cidade => _cidade.value;
  Color get cor => _cor.value;


  void _randomCity(){
    List<String> cities = ['Palmas', 'Araguaina','Arraias'];
    List<Color> cores = [Color.fromRGBO(90, 25, 130, 1),Color.fromRGBO(90, 170, 130, 1),Color.fromRGBO(35, 0, 2, 1),];
    var rand = new Random();
    int aux = rand.nextInt(cities.length);
    print(aux);
    _cidade.value = cities[aux];
    _cor.value = cores[aux];

  }


}