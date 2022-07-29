import 'package:flutter/material.dart';
import 'package:flutter_application_1/PindahHalaman.dart';


class Kalkulator extends StatefulWidget {
  Kalkulator({Key? key, required this.username, required this.email}) : super(key: key);

  String username, email;

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  TextEditingController ctrAngka1 = TextEditingController();
  TextEditingController ctrAngka2 = TextEditingController();
  num hasil = 0;
  num a1 = 0;
  num a2 = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator"),),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 56),
              child: Column(
                children: [
                Text("WELCOME ${widget.username}",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                Text(widget.email)
              ],
              )
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    a1 = num.parse(value);
                  });
                },
                controller: ctrAngka1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Angka1'
                ),
              ),
            ),
              
            Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    a2 = num.parse(value);
                  });
                },
                controller: ctrAngka2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Angka2'
                ),
              ),
            ),
             

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    hasil = a1 + a2;
                  });
                }, child: Text("+")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    hasil = a1 - a2;
                  });
                }, child: Text("-")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    hasil = a1 * a2;
                  });
                }, child: Text("*")),
                ElevatedButton(onPressed:(){
                  setState(() {
                    hasil = a1 / a2;
                  });
                }, child: Text("/")),
              ]
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 25,
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              enabled: false,
              //enableInteractiveSelection: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Hasil: $hasil',
                hintStyle: TextStyle(color: Colors.green),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PindahHalaman()));
              },
            ),
          )
        ]),
      ),
    );
  }
}