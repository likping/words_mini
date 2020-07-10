import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WordCard extends StatefulWidget {
  State createState() => _WordCardState();
}

class _WordCardState extends State<WordCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody();
  }

  Widget _buildBody() {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("WordCard"),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    //按钮
                    SizedBox(
                        height: 50,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(color: Colors.blue),
                                          right:
                                              BorderSide(color: Colors.blue))),
                                  child: Center(
                                      child: Text(
                                    "不认识",
                                    style: TextStyle(color: Colors.blue),
                                  ))),
                            ),
                            Expanded(
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(color: Colors.green),
                                          right:
                                              BorderSide(color: Colors.green))),
                                  child: Center(
                                      child: Text(
                                    "模糊",
                                    style: TextStyle(color: Colors.green),
                                  ))),
                            ),
                            Expanded(
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      border: Border(
                                    top: BorderSide(color: Colors.orange),
                                  )),
                                  child: Center(
                                      child: Text(
                                    "认识",
                                    style: TextStyle(color: Colors.orange),
                                  ))),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
