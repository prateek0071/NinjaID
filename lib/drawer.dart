import 'package:flutter/material.dart';



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: <Widget>[

              UserAccountsDrawerHeader(accountName: Text('Prateek Hajare'),
               accountEmail: Text('prateek22@gmail.com'),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage('https://cdnb.artstation.com/p/assets/images/images/009/077/035/large/pedro-junio-soares-todoroki-jpeg.jpg?1516988987'),
               ),
               ),


              ListTile(
                onTap: (){},
                
                leading: Icon(Icons.admin_panel_settings, color: Colors.blue),
                title: Text('Account'),
                subtitle: Text('personal'),
                trailing: Icon(Icons.edit),
                
              ),

              ListTile(
                onTap: (){},
                leading: Icon(Icons.favorite, color: Colors.pink,),
                title: Text('Favorates'),
                trailing: Icon(Icons.edit),
                
              ),

              ListTile(
                onTap: (){},
                leading: Icon(Icons.assistant_outlined, color: Colors.purpleAccent,),
                title: Text('Points'),
               
                
              ),


              
            ],
          ),
        );
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/itachi.jpg', width: 400,
                fit: BoxFit.cover,);
              
  }
}