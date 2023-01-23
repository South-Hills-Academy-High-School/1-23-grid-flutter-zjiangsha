import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: '1-17 App',
        theme: ThemeData(),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var opacityList = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0];
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Opacity(
            opacity: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 50,
                width: 50,
                child: Material(
                  color: Colors.blueGrey[700],
                  child: InkWell(
                    child: Image.network(
                        'https://i.giphy.com/media/xT0xezQGU5xCDJuCPe/200.gif'),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}