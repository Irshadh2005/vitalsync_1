import 'package:flutter/material.dart';
import 'package:vitalsync_1/main.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   home:  Scaffold(
       key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("VitalSync",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.menu,color: Colors.white,),
          onPressed: ()
        {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 12.0),
   child: CircleAvatar(
       radius: 18,
     backgroundImage: AssetImage("assets/icon.jpg"),
   ),
   ),
        ]
          ),
     drawer: Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: const[
           DrawerHeader(
             decoration: BoxDecoration(
                 color: Colors.black
             ),
             child: Text(
               "Menu",
               style: TextStyle(color: Colors.white,fontSize: 24),
             ),
           ),
           ListTile(
             leading: Icon(Icons.person_2_outlined),
             title: Text("Profile"),
           ),
           ListTile(
             leading: Icon(Icons.settings),
             title: Text("settings"),
           ),
         ],
       ),
       ),
     body: Column(
       children: [
         Container(
           width: double.infinity,
           height: 200,
           decoration: BoxDecoration(
               color: Colors.white,
             border: Border.all(color: Colors.black,width:2),
             borderRadius: BorderRadius.circular(20),

         ),
             child: Center(
    child: ClipRRect(
         borderRadius: BorderRadius.circular(18),
     child: Image.asset("assets/cap.jpg",     height: 150,
       fit: BoxFit.contain,),

     ) ,
    ),
    )

      ]
      ),
    )
    );
  }
}

