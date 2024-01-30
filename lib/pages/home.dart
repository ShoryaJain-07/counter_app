import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void _increment(){
    setState(() {
      counter++;
    });
  }

  void _decrement(){
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You pushed this many times : ",
              style: TextStyle(
                fontSize: 20,
              ),
            
            ),
            Text(
              counter.toString(),
              style:const TextStyle(
                fontSize: 40
              ),
            ),
            ElevatedButton(onPressed: _increment, child:const Text("Increment"),),
            ElevatedButton(onPressed: _decrement, child:const Text("Decrement"))
          ],
        )
        ),
    );
  }
}