import 'package:flutter/material.dart';
import 'package:park/Traditionlal_way/argumenting_pasing/detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController namecontroller = TextEditingController();
    final TextEditingController agecontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: namecontroller,
                decoration: const InputDecoration(hintText: 'Enter your name'),
              ),
              TextField(
                controller: agecontroller,
                decoration: const InputDecoration(hintText: 'Enter your age'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        name: namecontroller.text,
                        age: int.parse(agecontroller.text),
                      ),
                    ),
                  );
                },
                child: Text("submited"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
