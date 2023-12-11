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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Demo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You have pushed the button this many times"),
                Text(
                  "Container Demo",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                ),
                Container(
                  foregroundDecoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 20.0)
                      ],
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 20.0)
                      ],
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  height: 200,
                )
              ]),
        ));
  }
}
