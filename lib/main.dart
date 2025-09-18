import 'package:flutter/material.dart';
import 'package:vitalsync_1/cap_control_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(), // 👈 main screen
    );
  }
}

// ✅ HomePage as a StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("VitalSync", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(height: 15),


              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CapControlPage(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        "assets/cap.jpg",
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),
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
               child: Image.asset("assets/wave.jpg",     height: 150,
                 fit: BoxFit.contain,
               ),

             ) ,
           ),
         ),

         SizedBox(height: 15,),
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
               child: Image.asset("assets/cycle.jpg",     height: 150,
                 fit: BoxFit.contain,
               ),

             ) ,
           ),
         ),

         SizedBox(height: 15,),
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
               child: Image.asset("assets/call.jpg",     height: 150,
                 fit: BoxFit.contain,
               ),

             ) ,
           ),
         ),

         SizedBox(height: 15,),
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
               child: Image.asset("assets/music.jpg",     height: 150,
                 fit: BoxFit.contain,
               ),

             ) ,
           ),
         ),


      ]
      ),
    ),
   );

  }
}

