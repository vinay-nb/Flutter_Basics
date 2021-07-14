import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonChange = false;
  final _formKey = GlobalKey<FormState>();

  moveToValidate(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonChange = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        buttonChange = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Catalog"))),
        body: Center(
          child: Material(
              color: Colors.white,
              child: SingleChildScrollView(
                  child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/login_image.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Welcome $name",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 30.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter username",
                                labelText: "Username"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value.length < 6) {
                                return "Password length should be atleast 6";
                              }
                            },
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Material(
                            // splashColor: Colors.red,
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.circular(buttonChange ? 60 : 7),
                            child: InkWell(
                              hoverColor: Colors.deepPurple,
                              onTap: () => moveToValidate(context),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 50,
                                width: buttonChange ? 60 : 150,
                                alignment: Alignment.center,
                                child: buttonChange
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))),
        ));
  }
}
