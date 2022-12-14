import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Lottery Application")),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Center(
                child: Text("Lottery winning number is 4"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(90, 187, 167, 167),
                    borderRadius: BorderRadius.circular(10)),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Color.fromARGB(253, 11, 47, 2),
                            // Icons.error,
                            // color: Colors.red,
                          ),
                          Text(
                            "Better luck next time."
                            '\n'
                            "Your lottery number is $x.",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            // Icons.done_all,
                            // color: Color.fromARGB(253, 11, 47, 2),
                          ),
                          Text(
                            "Congratulations. You won!"
                            '\n'
                            "Your lottery number is $x.",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            print("tap");
            //print(random.nextInt(10).toString());
            //x++;
            setState(() {});
            //print(x.toString());
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
