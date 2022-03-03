import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _increasecounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ProxyProvider0<int>(
          update: (context, _) => _counter,
          child: const CounterNumber(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increasecounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterNumber extends StatelessWidget {
  const CounterNumber({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<int>(context).toString();
    return Text(
      counter,
      style: const TextStyle(fontSize: 30),
    );
  }
}
