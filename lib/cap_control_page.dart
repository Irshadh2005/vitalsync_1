import 'package:flutter/material.dart';

class CapControlPage extends StatefulWidget {
  const CapControlPage({super.key});

  @override
  State<CapControlPage> createState() => _CapControlPageState();
}

class _CapControlPageState extends State<CapControlPage> {
  bool isConnected = false;

  void toggleConnection() {
    setState(() {
      isConnected = !isConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cap Control",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white),
          onPressed: ()
          {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: toggleConnection,
              style: ElevatedButton.styleFrom(
                backgroundColor: isConnected ? Colors.red : Colors.green,minimumSize: Size(450, 70)
              ),
              child: Text(
                style: TextStyle(fontSize: 30),
                isConnected ? "Disconnect the Cap" : "Connect the Cap",
              ),
            ),
            SizedBox(height: 20),
            Text(
              isConnected ? "Now:Cap is Connected ✅" : "Now:Cap is Disconnected ❌",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
