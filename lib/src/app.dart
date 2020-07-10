//Para crear un wisget
import 'package:flutter/material.dart';
import 'package:flutter_ejemplo/src/pages/contador_page.dart';
import 'package:flutter_ejemplo/src/pages/inicio_page.dart';


//Esta widget se va a encargar de ejecutar la aplicacion
class MyApp extends StatelessWidget {

//Este metodo retorna la creacion de un widget
@override
Widget build( context ){


//Dentro del constructor pueden entrar diferentes parametros
//Retornamos el widget
return MaterialApp(
  
  //Esa propiedad recibe el constructor de otro widget
  home: Center(

  //De esta forma cargamos el widget como una pagina
    child: ContadorPage(),
    
    )
  
  
   
  
);
}

}