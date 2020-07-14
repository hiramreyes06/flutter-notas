

import 'dart:convert';

/*
Para exponer un paquete o un solo objeto de algun paquete, agregamos
la palabra reservada show para especificar que objeto.
 */
import 'package:flutter/services.dart'  show rootBundle;

//Asi se crea una clase privada para que se cree una instancia publica 
//la clase
class _MenuProvider{

List<dynamic> opciones = [];

_MenuProvider(){

  cargarData();

}

 Future<List<dynamic>> cargarData() async{

 final resp = await rootBundle.loadString( 'data/menu_opts.json' );

Map dataMap = json.decode( resp );
//Asi se accede a las propiedades
print( dataMap );

opciones =  dataMap['rutas'] ;

return opciones;


  }




}

//Este archivo .dart solo va a poder compartir la instancia de la clase
final menuProvider = new _MenuProvider();