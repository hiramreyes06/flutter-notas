import 'package:flutter/material.dart';

//la clase que extiende es la encargada del compoertamiento 
class ContadorPage extends StatefulWidget{

  
  /*
Esta funcion es necesaria para poder darle seguimiento al estado
que tenga un widget 
  */
@override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }

}

/*
Asi creamos una clase privada que se va a encargar de crear un
estado del tipo widget que hayamos creado
*/
class _ContadorPageState extends State<ContadorPage>{

    //ASi creamos un tipo de estilo de texto para agregarcelo a varios
 final TextStyle _estiloTexto = new TextStyle( fontSize: 40 );

//Por ser un StatefulWidget podemos crear propiedades que cambian
 int _conteo = 10;

@override
  Widget build(BuildContext context) {
  
  //Este widget crea una pantalla completa para la app
    return  Scaffold(

      //Puede conteneer este widget que es ara una barra superior
      appBar: AppBar(
        //Contiene estas propiedades con nombre y reciben un tipo de widget 
        title: Text('statefulWidget Page '),
        centerTitle: true,
      ),

      //Ademas puede contener un widget para agregar contenido
      body: Center(

        //El cual tendra dentro widget childe de columnas 
      child: Column(

        
        /*
        Esto alinea los widgets de la columna centrados
        esto significa que hasta arriba de la pantalla es
        top y hasta abajo end
        */
        mainAxisAlignment: MainAxisAlignment.center,

        //El constructor de columnas recibe un arreglo de widgets
        children: <Widget>[

          Text('Numero de clicks: ',
           style: _estiloTexto ),

          //Asi interpolamos una variable existente
          Text( '$_conteo' ,
          style: _estiloTexto )

          //Expanded(child: Text('Que pues wey' , style: _estiloTexto ))

        ],
      )
    
      ),

//De esta forma agregamos varios widgets con una funcion
  floatingActionButton: _crearBotones(),



    );
  }

//De esta forma podememos retornar Un renglon con varios widgets
  Widget _crearBotones(){

  return Row(
/* 
Esta propiedad del row , sirve para alinear los widget que
tenga el children lo mas pegado a la derecha
*/  
    mainAxisAlignment: MainAxisAlignment.end, 
    children: <Widget>[

      SizedBox( width:30.0),
     
      FloatingActionButton(
      
        child: Icon( Icons.exposure_zero ),
        //Asi se agrega la referencia a una funcion para un botn
        onPressed: _reset ),

/*
Este widget hace que se expanda el tamaño disponible para el widget que 
haya dentro del child
*/
      Expanded(child: SizedBox( width: 5.0 )),

      FloatingActionButton(
        child: Icon( Icons.remove ),
        onPressed: _sustraer ),

 SizedBox( width: 5.0 ),

      FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: _agregar ),
    ]
    );
  }

  void _agregar(){

    setState(() => _conteo ++);
  }

  void _sustraer(){

setState(() => _conteo --);
  }

  void _reset(){

    setState(() => _conteo = 0 );
  }


}


//Asi se cambia la ubicacion del widget floatingactionButton
//floatingActionButtonLocation:  FloatingActionButtonLocation.endDocked,

//Para agregar solo un boton flotante al scaffold widget
// //El widget Scaffold puede tener este widget
//   floatingActionButton: FloatingActionButton(
// elevation: 50.5,

// //Para agregar texto o un icono agregamos el widget hijo Text o Icon
//     child: Icon( Icons.add ),
// //Asi se define una funcion anonima para cuando se presione el boton
//     onPressed: (){
//       print('Se presiono el boton');

//   //Gracias al metodo de esta clase redibujamos el estado visual de la app
//       setState(() {
//         _conteo ++;
//       });

      
//     }
    
//     ),
