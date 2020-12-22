import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.black,
        fontFamily: 'Langar',
        ),
        home: HomePage(),
      );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var image_level = 'assets/ninjaid007.jpg';
  var level = 'Cosmic Breathing: Stage 1';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ninja Id'),
        backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: <Widget>[
                
                
                Column(
                 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     CircleAvatar(
                  backgroundImage: AssetImage(image_level),
                  
                  radius: 80.0,
                ),
                SizedBox(height: 40.0),
                    Text(
                  'Ninja\'s Code Name :',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white70,
                    
                  ),
                ),
                
                Text(
                  'Blade',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.amberAccent,
                    
                  ),
                ),
                  ],
                ),
SizedBox(height: 40,),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                  'Ninja\'s Real Name :',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white70,
                    
                  ),
                ),
                
                Text(
                  'Prateek Hajare',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.amberAccent,
                    
                  ),
                ),
                  ],
                ),
SizedBox(height: 40,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                  'Ninja\'s Current Level :',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white70,
                    
                  ),
                ),
                
                Text(
                  '$level',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.amberAccent,
                    
                  ),
                ),
                  ],
                ),
SizedBox(height: 80,),

                Row(
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Text(
                        'prateek345@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ],
                ),
              
              ],
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState((){
              level = "Cosmic Breathing: Stage 2";
              image_level = 'assets/itachi.jpg';
            });
          },
          child: Icon(Icons.upgrade),
        ),
      );
  }
}


