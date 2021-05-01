import 'package:flutter/material.dart';
import 'package:maps/screens/maps.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Home',
          style: TextStyle(color: Colors.white , fontWeight: FontWeight.w600 , fontSize: 20.0),
        ),
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            RaisedButton(
                child: Text("Add Location"),
                textColor: Colors.white,
              onPressed: () async{
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => GoogleMaps()
                ));
              },
                color: Colors.red,)
          ]

        ),
      ),






    );

  }


}

