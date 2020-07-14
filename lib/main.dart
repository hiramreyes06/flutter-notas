

import 'package:flutter/material.dart';
import 'package:flutter_ejemplo/src/paginas/alert_page.dart';
import 'package:flutter_ejemplo/src/paginas/inicio_page.dart';
import 'package:flutter_ejemplo/src/paginas/notFound_page.dart';

import 'package:flutter_ejemplo/src/routes/routes.dart';




void main() => runApp( ComponentesApp() );
 
class ComponentesApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      //Esta propiedad sirve para quitar la etiqueta de app beta
      debugShowCheckedModeBanner: false,
      title: 'Nmss que pedo',

      initialRoute: '/',
  
  //De esta forma cargamos las rutas definidas en el mapa
    routes: getAppliationRoutes(),

  //Esta propiedad sirve para capturar rutas que no estan definidas
    onGenerateRoute: (RouteSettings settings){

      print(settings.arguments);
      //Asi cargamos una pagina por defecto si no se encuentra una ruta
      return MaterialPageRoute(
        builder: ( BuildContext context) => NotFoundPage()
      );

    }

      //Asi se define por constructor la primera pagina a cargar
      // home: InicioPage(),
     
    );
  }
}



