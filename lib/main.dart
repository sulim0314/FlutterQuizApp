import 'package:flutter/material.dart';

import 'data/questions_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'MyHomePage',),
      debugShowCheckedModeBanner: false,
    );
  }
} //-------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
} //-------------------------------------------------------------

class _MyHomePageState extends State<MyHomePage> {
  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Padding(
            padding: EdgeInsets.all(18.0),
            child: PageView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity, // 이거 넣으니까 중앙정렬에서 왼쪽으로 붙었음
                      child: Text(
                        "Question ${index + 1}/${questions.length}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 28.0,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 8.0,
                      thickness: 1.0,
                    ),
                  ],
                );
              },
            )));
  }
} //-------------------------------------------------------------
