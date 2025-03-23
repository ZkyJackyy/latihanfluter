import 'package:flutter/material.dart';
import 'package:latihanfluter/page/page_login.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {

  
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
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  "New Account",
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
                  
                  Text("Full Name"),
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
                  Text("Email"),
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
                  Text("Mobile Number"),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.amber.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "(0751-0000)",
                    ),
                  ),
                  SizedBox(height: 15),
                  Text("Date of Birth"),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.amber.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "YYYY/mm/DD",
                    ),
                  ),
                  SizedBox(height: 15),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageLogin()));
                      },
                      child: Text("Sign up"),
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
                      onPressed: () {
                        
                      },
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