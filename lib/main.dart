import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: FloatingActionButton(backgroundColor: Colors.deepPurple[400], child: Icon(Icons.exit_to_app), onPressed: () => exit(0),),
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                    'assets/images/my.jpg'),
              ),
              Text('Terminator', style: TextStyle(fontFamily: 'MontserratSubrayada', color: Colors.white, fontSize: 40)),
              Text('FUTTER DEVELOPER', style: TextStyle(fontFamily: 'OpenSans', color: Colors.white, fontSize: 24, letterSpacing: 4),),
              SizedBox( height: 10, width: 280, child: Divider(color: Colors.white)),
              Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    title: Text('+1 234 567 8910', style: TextStyle(color: Colors.deepPurple, fontSize: 18),),
                    leading: Icon(Icons.phone, color: Colors.deepPurple,),                    
                  )
              ),
              Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    title: Text('terminator@gmail.com', style: TextStyle(color: Colors.deepPurple, fontSize: 18),),
                    leading: Icon(Icons.email, color: Colors.deepPurple,),                    
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
