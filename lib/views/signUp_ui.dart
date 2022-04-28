// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application/views/home.dart';
import 'package:flutter_application/views/loginPage.dart';
import 'package:flutter_application/widgets/text_field_input.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Container(), flex: 1),
            SizedBox(height: 60),
            Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/mi.jpg'),
                ),
                Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.add_a_photo)))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldInput(
                Icons: Icon(Icons.animation),
                textEditingController: _usernameController,
                hintText: 'Enter your Username',
                textInputType: TextInputType.text),
            SizedBox(height: 20),
            TextFieldInput(
                Icons: Icon(Icons.email_rounded),
                textEditingController: _emailController,
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress),
            SizedBox(height: 20),
            TextFieldInput(
              Icons: Icon(Icons.password_rounded),
              textEditingController: _passwordController,
              hintText: 'Enter your Password',
              textInputType: TextInputType.text,
              isPass: true,
            ),
            SizedBox(height: 20),
            TextFieldInput(
                Icons: Icon(Icons.book_rounded),
                textEditingController: _bioController,
                hintText: 'Enter your Bio',
                textInputType: TextInputType.text),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                child: Text('Log in'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 20),
            Flexible(child: Container(), flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Don't have an account?"),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
