import 'package:flutter/material.dart';

class SCREEN extends StatefulWidget {
  const SCREEN({Key? key}) : super(key: key);

  @override
  State<SCREEN> createState() => _SCREENState();
}

class _SCREENState extends State<SCREEN> {
  TextEditingController ctrPhone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INPUT NOMOR")
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
            controller: ctrPhone, 
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Input Phone",
             
            ), 
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (() {
             Navigator.pop(context, ctrPhone.text); 
            }), child: Text("Simpan"))
          ],
        ),
      )

    );
  }
}