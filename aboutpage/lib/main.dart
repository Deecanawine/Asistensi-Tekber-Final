import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('About Wine Page'),
      ),
      body: const Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/fotodiri.jpg'),
                  radius: 50,
                ),
                SizedBox(height: 20),
                
                Text(
                  'Name: Dee Canawine',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                
                Text(
                  'NRP: 5026211018',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                
                Text(
                  'Fun Fact: Selalu rajin belajar',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
