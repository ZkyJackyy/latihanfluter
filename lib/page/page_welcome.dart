import 'package:flutter/material.dart';
import 'package:latihanfluter/page/page_login.dart';
import 'package:latihanfluter/page/page_register.dart';

class PageWelcome extends StatelessWidget {
  const PageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE95322),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("gambar/Group 270 (2).png", width: 250, height: 250,),
            Text("Selamat DatangLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.", style: TextStyle(fontSize: 12, color: Colors.white),),
            SizedBox(height: 20,),
            Padding(padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageLogin()));},
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color(0xffF5CB58),
            clipBehavior: Clip.antiAlias,
            child: Text('Log in',
            style: TextStyle(fontSize: 14, color: Color(0xffE95322)),
            ),
            )
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageRegister()));},
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color(0xffF3E9B5),
            clipBehavior: Clip.antiAlias,
            child: Text('Sign Up',
            style: TextStyle(fontSize: 14, color: Color(0xffE95322)),
            ),
            )
            ),
          ],
        ),
      )
    );
  }
}