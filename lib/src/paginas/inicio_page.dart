import 'package:flutter/material.dart';
import 'package:flutter_ejemplo/src/paginas/alert_page.dart';
import 'package:flutter_ejemplo/src/providers/menu_provider.dart';
import 'package:flutter_ejemplo/src/utils/icono_string_util.dart';


class InicioPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      title: Text('Inicio page'),

      ),

  //Esta es una funcion con funciones asincronas anidadas
  body: _getLista(),
  
      );
    }

  //Esta es una funcion anidada con otras funciones asincornas
   Widget _getLista() {

   // print( menuProvider.opciones ); 

  /*
  Este tipo de widget espera a que se resuelva un future para 
  poder construir otro widget
  */
   return FutureBuilder(
     //Esto recibie una funcion que resuelve un future
     future: menuProvider.cargarData(),

    //Este parametro emite la informacion de cuando se resulve el future
     builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){

       print('Future builder resuelto');
       print('Data obtenida ');
       //Aqui se guarda la data que resuelve el future
       print(snapshot.data);

    //Esto es el futureBuilder  va a retornar cuando se cumpla el future
       return ListView(
         children: _listaItems( snapshot.data, context ),
       );

     },

     //Este parametro sirve para establece una data inicial
     initialData: [],
   );

  }
       //Esta funcion recibe la data resuelta del future
        List<Widget> _listaItems( List<dynamic> data, BuildContext context) {

          final List<Widget> opciones =[];

          data.forEach( (opt){
            final widgetTemp =  ListTile(

              title: Text( opt['texto'] ),

          //Esta funcion implementada globalmente
              leading: getIcon( opt['icon'] ),

              trailing: Icon(
                Icons.keyboard_arrow_right,
                 color: Colors.black),
              onTap: (){
                print('Se presiono '+opt['texto']);

                //Para navegar en base un mapa de rutas definidas
                Navigator.pushNamed(context, opt['ruta'] );


                //Para navegar de forma basica
                // final route =MaterialPageRoute(
                // builder: (context) => AlertPage()
                // );
                 
                /*
                Este es un objeto estatico para naveegar entre paginas
                pero necesita el context para saber el historial de
                paginas y navegacion tambien recibe un materialPageRoute
                */
                //Navigator.push(context, route);
              },   
            );

            opciones..add( widgetTemp )
            ..add( Divider() );
          });

        //Asi retornamos la lista construida de widgets
          return opciones;

         }
}