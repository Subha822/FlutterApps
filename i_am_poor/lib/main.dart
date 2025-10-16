import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        centerTitle: true,
        title:Text('I Am Poor',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal[900],
      ),
      body:Center(
        child: Image(image: AssetImage('images/diamond.png')),
      ),
    )
  ));
}


