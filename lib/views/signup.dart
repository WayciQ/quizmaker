import 'package:flutter/material.dart';
import 'package:quizmaker/Helper/functions.dart';
import 'package:quizmaker/services/auth.dart';
import 'package:quizmaker/views/signin.dart';
import 'package:quizmaker/widgets/widgets.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String name, email, password;

  AuthService authService = new AuthService();

  bool _isLoading = false;

  signUp() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });
      authService.signUpWithEmailAndPassword(email, password).then((val) {
        if (val != null) {
          setState(() {
            _isLoading = false;
          });
          HelperFuncionts.saveUserLoggedInDetails(isLoggedIn: true);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home(val.name)));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                // color: Colors.blue,
                child: Column(
                  children: [
                    Spacer(),
                    TextFormField(
                      validator: (val) {
                        return val.isEmpty ? "Nhập Họ và Tên" : null;
                      },
                      decoration: InputDecoration(hintText: "Họ và tên"),
                      onChanged: (val) {
                        name = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      validator: (val) {
                        return val.isEmpty ? "Nhập Email" : null;
                      },
                      decoration: InputDecoration(hintText: "Email"),
                      onChanged: (val) {
                        email = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (val) {
                        return val.isEmpty ? "Nhập mật khẩu" : null;
                      },
                      decoration: InputDecoration(hintText: "Mât khẩu"),
                      onChanged: (val) {
                        password = val;
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                        onTap: () {
                          signUp();
                        },
                        child: blueButton(context: context, label: "Sign Up")),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Đã có tài khoản? ",
                          style: TextStyle(fontSize: 15.5),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Text(
                            "Đăng nhâp",
                            style: TextStyle(
                                fontSize: 15.5,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
