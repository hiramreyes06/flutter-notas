import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('Cards widget'),
      ),

      body: ListView(
        padding: EdgeInsets.all(10.00),
        children: <Widget>[
          _cardBasica(),

          SizedBox( height: 30.0 ),

          _cardTipo2()
                  ],
                ),
          
              );
            }
          
          Widget _cardBasica(){
          
          return Card(
          child: Column(
          children: <Widget>[
          ListTile(
           leading: Icon(
             Icons.photo_album,
             color: Colors.blue,
           ), 
          title: Text('Este es el titulo de la tarjeta'),
          subtitle: Text('Este es el subtitulo de la tarjeta'),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
          
          children: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){
          
              },
            ),
            FlatButton(
               child: Text('OK'),
               onPressed: (){
          
               },
               
               )
               
          ],
          )
         
          ],
          
            ),
          );
          }
          
           Widget _cardTipo2() {


              return Card(
                child: Column(
                  children: <Widget>[

                    //Este es un widget especial para cargar imagenes
                    FadeInImage(
                      image: NetworkImage('https://fondosmil.com/fondo/2257.jpg') ,
                     
                     //Aqui se agrega una imagen momentaria mientras se carga la img
                      placeholder: AssetImage('assets/jar-loading.gif'),

                      //Al cargar la imagen le agrega mas tiempo
                      fadeInDuration: Duration( milliseconds: 200 ),

                      //El alto de la imagen
                      height: 300.0,

                      //Esto especifica como la imagen va a tomar el tamaño que tiene disponible
                      fit: BoxFit.cover,
                    ),

                    Container(
                      padding: EdgeInsets.all( 10.0 ),
                      child: Text('Este es el texto que puede contener un card, donde me voy a aprovechar de mostrar informacion, y ojala se pueda recrear el boton de mostrar mas '),
                    )

                    //Esta es una forma de cargar imgs asincronamente
                    // Image( 
                    //   image: NetworkImage('https://fondosmil.com/fondo/2257.jpg'),
                    // )
                  ],
                ),
              );
            }


}