import 'package:flutter/material.dart';

class Homae extends StatelessWidget {
  const Homae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal[300],
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/1.jpeg'),
              ),
               const Text(
                'عمر محمد',
                style:  TextStyle(fontSize: 37, color: Colors.white,
                fontFamily: 'Rubic'
                ),
              ),
              const Text(
                'مهندس برمجيات',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.7,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DataContainer('+90 531 934 64 23', Icons.phone),
              const SizedBox(
                height: 30,
              ),
              DataContainer('abolona2015l@gmail.com', Icons.mail),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container DataContainer(String text, IconData icon) {
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           const SizedBox(
            width: 15,
          ),
          Icon(
            icon,
            color: Colors.teal,
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.teal),
          )
        ],
      ),
    );
  }
}
