import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Alert page'),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Text('Atras'),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );

  }
}