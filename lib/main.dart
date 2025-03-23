import 'package:flutter/material.dart';
import 'package:latihanfluter/page/page_welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageSatu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Color(0xffF5CB58),
      body: Center(
        child: SingleChildScrollView(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("gambar/splesh.png", width: 250, height: 250,),
            SizedBox(height: 10,),
            Padding(padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageWelcome()));},
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color(0xffF3E9B5),
            clipBehavior: Clip.antiAlias,
            child: Text('Mulai',
            style: TextStyle(fontSize: 14, color: Color(0xffE95322)),
            ),
            )
            ),
          ]
        )
      ),
      )
    );
  }


}


