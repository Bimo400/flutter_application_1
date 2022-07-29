import 'package:flutter/material.dart';
import 'package:flutter_application_1/Kalkulator.dart';
import 'package:flutter_application_1/screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrEmail = new TextEditingController();
  var PhoneNumber = "";

  Widget txtInput (TextEditingController controller, String label){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
Widget btnRegister(String text) {
  return Container(
    width: 150,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Kalkulator(username: ctrUsername.text, email: ctrEmail.text,)));
      }, 
      child: Text(text)
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              txtInput(ctrEmail, "Email"),
              SizedBox(height: 12,),
              txtInput(ctrUsername, "Username"),
              SizedBox(height: 20,),
              Column(
               children: [
                SizedBox(width: 20,),
                ElevatedButton(onPressed: () async{
                  final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => const SCREEN()));
                  setState(() {
                    PhoneNumber = result.toString();
                  });
                }, child: Text("Input Phone")),
                SizedBox(
                  height: 20,
                ),
                Text("Phone Number : "+PhoneNumber),
               ], 
              ),
              SizedBox(height: 60,),
              btnRegister("Masuk")
            ],
          ),
        ));
  }
}