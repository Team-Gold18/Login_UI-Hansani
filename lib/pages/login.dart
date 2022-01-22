import 'package:flutter/material.dart';
import 'package:flutter_minimal_ui/pages/login_form.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            _placeHolder(),
            SizedBox(
              height: 10,
            ),
            _loginOrSignUp(context)
          ],
        ),
      ),
    );
  }

//for login and signup button and text area
  _loginOrSignUp(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "WELCOME",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            "You can Login or \nregister From Here",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        //login button
        SizedBox(
            height: 70,
            width: 300,
            child: ElevatedButton(
                onPressed: () {
//move to login form
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginForm();
                  }));
                },

                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 18, letterSpacing: 2),
                ))),
        SizedBox(
          height: 40,
        ),
        //signup button
        SizedBox(
            height: 70,
            width: 300,
            child: InkWell(
              onTap: () {
                //perform click event here
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 2),
                    ),
                  )),
            ))
      ],
    );
  }

//for place holder image
  _placeHolder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: Image.asset("assets/placeholder.png"),
        )
      ],
    );
  }


}
