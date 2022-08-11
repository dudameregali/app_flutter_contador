import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030303),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Bem vindo ao',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xffffffff),
            ),
          ),
          const Text(
            'Contador',
            style: TextStyle(
              fontSize: 45,
              color: Color(0xffBC88F7),
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              bottom: 20,
            ),
            child: Text(
              '$count',
              style: const TextStyle(
                fontSize: 160,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff2F2F2F),
                  fixedSize: Size(140, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  primary: Color(0xffBC88F7),
                ),
                child: const Text(
                  '-',
                  style: TextStyle(
                    fontSize: 45,
                    color: Color(0xffBC88F7),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff2F2F2F),
                  fixedSize: Size(140, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  primary: Color(0xffBC88F7),
                ),
                child: const Text(
                  '+',
                  style: TextStyle(
                    fontSize: 45,
                    color: Color(0xffBC88F7),
                  ),
                ),
              ),
            ], // Children Row
          ),
        ],
      ),
    );
  }
}
