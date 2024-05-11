import 'package:count_button/count_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int countValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Count Button Example"),
      ),
      body: Center(
        child: CountButton(
          selectedValue: countValue,
          minValue: 0,
          maxValue: 99,
          foregroundColor: Colors.white,
          onChanged: (value) {
            setState(() {
              countValue = value;
            });
          },
          borderRadius: 16,
          valueBuilder: (value) {
            return Text(
              value.toString(),
              style: const TextStyle(fontSize: 20.0),
            );
          },
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
