import 'package:flutter/material.dart';


import 'package:flutter_ejemplo/src/paginas/alert_page.dart';
import 'package:flutter_ejemplo/src/paginas/avatar_page.dart';
import 'package:flutter_ejemplo/src/paginas/cards_page.dart';
import 'package:flutter_ejemplo/src/paginas/inicio_page.dart';

//Esto va retornar el mapa de rutas
Map<String, WidgetBuilder> getAppliationRoutes(){

return <String, WidgetBuilder>{
      '/' : ( BuildContext context) => InicioPage(),
      'alert': ( BuildContext context) => AlertPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardsPage()

    };
}
