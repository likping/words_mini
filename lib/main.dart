import 'package:flutter/material.dart';
import "./home_page.dart";
import "package:wordsmini/components/word_card.dart";
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),
        routes: {
      "wordCard": (BuildContext context) {
        return WordCard();
      },
      "SearchWords":(BuildContext context){
        return Material(
          child: Scaffold(
              appBar: AppBar(
                title: Text("SearchWords"),
              ),
          ),
        );
      },
      "VocabularyList":(BuildContext context){
        return Material(
          child: Scaffold(
            appBar: AppBar(
              title: Text("VocabularyList"),
            ),
          ),
        );
      }
    });
  }
}
