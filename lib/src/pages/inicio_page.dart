
import 'package:flutter/material.dart';


class InicioPage extends StatelessWidget{


/*
de esta forma creamos una clase que tendra una configuracion
  determinada para aplicarcelo a widgets similares, como la
  clase que se esta usando extiende de un wdidget que su estado
  no cambia less, se tiene que agregar las instancias como final
*/
  
 final TextStyle estiloTexto = new TextStyle( fontSize: 40 );

 final int conteo = 10;

@override
  Widget build(BuildContext context) {
  
  //Este widget crea una pantalla completa para la app
    return  Scaffold(

      //Puede conteneer este widget que es ara una barra superior
      appBar: AppBar(
        //Contiene estas propiedades con nombre y reciben un tipo de widget 
        title: Text('Inicio page '),
        centerTitle: true,
      ),

      //Ademas puede contener un widget para agregar contenido
      body: Center(

        //El cual tendra dentro widget childe de columnas 
      child: Column(

        //Esto alinea los widgets de la columna centrados
        mainAxisAlignment: MainAxisAlignment.center,

        //El constructor de columnas recive un arreglo de widgets
        children: <Widget>[

          Text('Numero de clicks: ',
           style: estiloTexto ),

          Text( '$conteo' ,
          style: estiloTexto )

        ],
      )
      ),


//Asi se cambia la ubicacion del widget floatingactionButton
//floatingActionButtonLocation:  FloatingActionButtonLocation.endDocked,

//El widget Scaffold puede tener este widget
  floatingActionButton: FloatingActionButton(
elevation: 50.5,

//Para agregar texto o un icono agregamos el widget hijo Text o Icon
    child: Icon( Icons.add ),
//Asi se define una funcion anonima para cuando se presione el boton
    onPressed: (){
      print('Se presiono el boton');
    }
    
    ),

    );
  }

}
