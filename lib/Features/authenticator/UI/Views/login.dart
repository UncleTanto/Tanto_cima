import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class login_page extends StatefulWidget {
   const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
   bool pass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover, // Adjust fit as needed
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  label: Row(
                    children: [
                      Text("Email Address "),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(

                obscureText: pass,
                decoration: InputDecoration(
                  suffixIcon:
                  IconButton(onPressed: (){
                    setState(() {
                      pass=!pass;
                    });
                  }, icon:pass?Icon(Icons.visibility):Icon(Icons.visibility_off),),
                  hintText: 'Password',
                  label: Row(
                    children: [
                      Text("Password"),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),

                ),

              ),
            ),
            Container(
              alignment:Alignment.centerRight,
              child: InkWell(
                onTap: (){},
                child: Container(
                    alignment:Alignment.centerRight,
                    width: 150,
                    margin: EdgeInsets.only(right: 20),
                    child: Text("Forgot Password?")),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              width: 323,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color:RedColor,
            ),
            child: Text("Login"),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Text("or"),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),

                  alignment: Alignment.center,
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color:buttonColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google 48.png',
                      ),
                      Text("Google"),
                    ],
                  ),),
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color:buttonColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook 48.png',
                      ),
                      Text("FaceBook"),
                    ],
                  ),),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don't have an account?"),
                InkWell(
                    onTap: (){},
                    child: Text("sign up now",style: TextStyle(fontWeight: FontWeight.bold),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}