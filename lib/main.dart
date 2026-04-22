import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const ScreenLogin(),
    );
  }
}

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 218, 217),
      appBar: AppBar(
        title: Text(style: TextStyle(color: Colors.black), 'Login'),
        backgroundColor: const Color.fromARGB(255, 168, 143, 143),
      ),

      body: Center(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ListTile(leading: Icon(Icons.person)),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(leading: Icon(Icons.phone)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    ));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 218, 217),
      appBar: AppBar(
        title: Text(style: TextStyle(color: Colors.black), 'Home'),
        backgroundColor: const Color.fromARGB(255, 168, 143, 143),
      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('back'),
            ),
          ],
        ),
      ),
    ));
  }
}
