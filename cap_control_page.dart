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
        title: Text("Cap Control"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: toggleConnection,
              style: ElevatedButton.styleFrom(
                backgroundColor: isConnected ? Colors.red : Colors.green,
              ),
              child: Text(
                isConnected ? "Disconnect the Cap" : "Connect the Cap",
              ),
            ),
            SizedBox(height: 20),
            Text(
              isConnected ? "Cap is Connected ✅" : "Cap is Disconnected ❌",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
