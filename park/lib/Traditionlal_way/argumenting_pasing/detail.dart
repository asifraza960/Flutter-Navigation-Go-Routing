import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final int age;
  const DetailScreen({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Welcome to the Detail Screen',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Text('your Name is: $name', style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Text('your Age is: $age', style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
