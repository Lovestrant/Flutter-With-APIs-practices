import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apis/ControllerClass.dart';

class Put extends StatefulWidget {
  const Put({Key? key, String title = "Put Api Page"}) : super(key: key);

  @override
  _PutState createState() => _PutState();
}

class _PutState extends State<Put> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PUT Api page."),
      ),
      body: Container(
        height: 300,
        child: Column(
          children: [
            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Input username",
                border: OutlineInputBorder()
              ),

              controller: usernameController,
            ),

            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder()
              ),

              controller: passwordController,
            ),

            SizedBox(height: 20,),

            TextButton(onPressed: () {
             Future response = controllerClass().updateData(usernameController.text, passwordController.text);
              if(response == true) {
                Scaffold.of(context).showSnackBar(new SnackBar(
                  content: new Text("Success"),
                ));
              }else {
                Scaffold.of(context).showSnackBar(new SnackBar(
                  content: new Text("Failed"),
                ));
              }
            }, child: const Text("Submit")),

          ],
        ),
      ),
    );
  }
}
