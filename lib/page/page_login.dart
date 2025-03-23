import 'package:flutter/material.dart';
import 'package:latihanfluter/page/page_grid.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
   
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xffF5CB58),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Text("Email or Mobile Number"),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.amber.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "example@example.com",
                    ),
                  ),
                  SizedBox(height: 15),
                  Text("Password"),
                  SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.amber.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => PageGrid()));
                      },
                      child: Text("Log In"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(child: Text("or sign up with")),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset('gambar/Google Icon (1).png'),
                      Image.asset('gambar/Fingerprint Icon (1).png'),
                      Image.asset('gambar/Facebook Icon (1).png'),
                      
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}