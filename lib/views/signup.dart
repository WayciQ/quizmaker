import 'package:flutter/material.dart';
import 'package:quizmaker/views/signin.dart';
import 'package:quizmaker/widgets/widgets.dart';

 class SignUp extends StatefulWidget {
   @override
   _SignUpState createState() => _SignUpState();
 }
 
 class _SignUpState extends State<SignUp> {
   final _formKey = GlobalKey<FormState>();
   String name, email, password;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: appBar(context),
         backgroundColor: Colors.transparent,
         elevation: 0.0,
         brightness: Brightness.light,
       ),
       body: Form(
         key: _formKey,
         child: Container(
           margin: EdgeInsets.symmetric(horizontal: 24),
           // color: Colors.blue,
           child: Column(
             children: [
               Spacer(),
               TextFormField(
                 validator: (val) { return val.isEmpty ? "Nhập Họ và Tên" : null;
                 },
                 decoration: InputDecoration(
                     hintText: "Họ và tên"
                 ),
                 onChanged: (val) {
                   name = val;
                 },
               ),
               SizedBox(height: 6,),
               TextFormField(
                 validator: (val) { return val.isEmpty ? "Nhập Email" : null;
                 },
                 decoration: InputDecoration(
                     hintText: "Email"
                 ),
                 onChanged: (val) {
                   email = val;
                 },
               ),
               SizedBox(height: 6,),
               TextFormField(
                 validator: (val) { return val.isEmpty ? "Nhập mật khẩu" : null;
                 },
                 decoration: InputDecoration(
                     hintText: "Mât khẩu"
                 ),
                 onChanged: (val) {
                   password = val;
                 },
               ),
               SizedBox(height: 24,),
               GestureDetector(
                 onTap: () {

                 },
                 child: Container(
                   padding: EdgeInsets.symmetric(vertical: 18),
                   decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(30)
                   ),
                   height: 50,
                   alignment: Alignment.center,
                   width: MediaQuery.of(context).size.width - 48,
                   child: Text("Đăng nhập",style: TextStyle(color: Colors.white, fontSize: 16),
                   ),
                 ),
               ),
               SizedBox(height: 18,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Đã có tài khoản? ", style: TextStyle(fontSize: 15.5),),
                   GestureDetector(
                     onTap: () {
                       Navigator.pushReplacement(context, MaterialPageRoute(
                           builder: (context) => SignIn()
                       ));
                     },
                     child: Text("Đăng nhâp", style: TextStyle(fontSize: 15.5,
                         decoration: TextDecoration.underline),),
                   )
                 ],
               ),


               SizedBox(height: 80,),

             ],),
         ),
       ),
     );;
   }
 }
 