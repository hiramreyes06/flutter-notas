import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('Not found page'),
      ),

body: Center(
  child: Text('Pagina no encontrada'),
),

    );
  }
}