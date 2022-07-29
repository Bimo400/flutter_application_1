import 'package:flutter/material.dart';
class PindahHalaman extends StatelessWidget {
  const PindahHalaman({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PindahHalaman'),
        actions: <Widget> [
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ]
        ,
      ),
    );
  }
}