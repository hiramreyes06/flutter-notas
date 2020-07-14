

import 'package:flutter/material.dart';

class InicioPageTemp extends StatelessWidget {
  

final List<String> opciones =['Uno','Dos', 'Tres','Cuatro','Cinco','SEIS'];





  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar:  AppBar(
        title: Text('Componente inicio'),
      ),

    body: ListView(
      
      //
      children: _crearItemsCorta(),
      
      ),

    );


  }

/*
Esta funcion retorna la creacion de una lista de widgets con estilos
y propiedades personalizadas de forma extensa
*/
// ignore: unused_element
List<Widget> _crearItems(){

List<Widget> lista = new List<Widget>();

opciones.forEach(  (opcion){

final tempWidget = ListTile(
  title: Text( opcion ),
);

//Al utilizar el un metodo con 2 puntos funciona para poder retornar el
//puntero de la lista para ejecutar consecutivamente mas metodos
lista..add( tempWidget )
..add(Divider() );

});


  return lista;
}


/*
Asi se crea una lista de widgets con contenido de forma corta
*/
List<Widget> _crearItemsCorta(){


return opciones.map( ( item ){

return Column(

children: <Widget>[

ListTile(

title: Text(item + '!' ),
subtitle: Text('Subtitle'),
leading: Icon( Icons.add_comment ),
trailing: Icon(Icons.keyboard_arrow_right),
onTap: (){},
),
Divider()

]

);

}).toList();



}


}