import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Enlarge Font"),
          ),
          body:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Muhammad Fiqri Faturrian",
                  style: TextStyle(
                      fontSize: 40 + double.parse(counter.toString())),
                ),
                Text(
                  counter.toString(),
                  style: TextStyle(
                      fontSize: 50 + double.parse(counter.toString())),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (counter != 1) {
                          setState(() {
                            counter--;
                          });
                        }
                        print(counter);
                      },
                      child: Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                        print(counter);
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
