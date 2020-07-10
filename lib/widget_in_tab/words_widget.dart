import 'package:flutter/material.dart';

class WordsWiget extends StatefulWidget {
  State createState() => _wordsWidgetState();
}

class _wordsWidgetState extends State<WordsWiget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
//                    color: Colors.blue,

                width: MediaQuery.of(context).size.width,
                height: 425,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 425 * 0.3,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: "21",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 50)),
                                TextSpan(
                                    text: "天",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22))
                              ])),
                            ),
                            SizedBox(
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 220, top: 23),
                                    child: Text.rich(TextSpan(children: [
                                      TextSpan(
                                          text: "打卡日历 >",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15))
                                    ]))))
                          ],
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 425 * 0.3,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.blue),
                              color: Colors.black),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 20,
                                left: 5,
                                child: Row(
                                  children: <Widget>[
                                    Text("2019四级真题核心词汇",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                    Icon(
                                      Icons.cached,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 125),
                                      child: Container(
                                        width: 50,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text("词表",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 70,
                                left: 5,
                                child: Row(
                                  children: <Widget>[
                                    Text("已完成2.5%",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 230),
                                        child: Text("40/1605词",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)))
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 5,
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    height: 5,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white),
                                        child: LinearProgressIndicator(
                                          value: 0.1,
                                          backgroundColor: Color.fromRGBO(
                                              125, 125, 125, 0.3),
                                        ))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 425 * 0.4,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child:
                                                Text.rich(TextSpan(children: [
                                          TextSpan(
                                              text: "-",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      125, 125, 125, 0.5))),
                                          TextSpan(
                                              text: "今日任务",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      125, 125, 125, 0.5))),
                                          TextSpan(
                                              text: "-",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      125, 125, 125, 0.5))),
                                        ]))),
                                      )),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 5),
                                        child: SizedBox(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "200",
                                                style: TextStyle(fontSize: 40),
                                              ),
                                              Text("新词数")
                                            ],
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 5),
                                        child: SizedBox(
                                          child: Column(
                                            children: <Widget>[
                                              Text("40",
                                                  style:
                                                      TextStyle(fontSize: 40)),
                                              Text("复习单词")
                                            ],
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 5),
                                        child: SizedBox(
                                          child: Column(
                                            children: <Widget>[
                                              Text("240",
                                                  style:
                                                      TextStyle(fontSize: 40)),
                                              Text("未学单词")
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,"wordCard");
                                    },
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Center(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          width: 250,
                                          height: 45,
                                          child: Center(
                                              child: Text(
                                            "开始学习",
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 2.5,
              child: Container(color: Color.fromRGBO(125, 125, 125, 0.3)),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Center(
                        child: Text("口语"),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Center(
                        child: Text("听力"),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Center(
                        child: Text("阅读"),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Center(
                        child: Text("对战"),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Center(
                        child: Text("短语"),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 2.5,
              child: Container(color: Color.fromRGBO(125, 125, 125, 0.3)),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                      height: 30,
                      child: Center(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(text: "- "),
                          TextSpan(
                              text: "极限热卖",
                              style: TextStyle(
                                  color: Color.fromRGBO(125, 125, 125, 0.8))),
                          TextSpan(text: " -"),
                        ])),
                      )),
                  Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width - 4 * 10) / 3,
                        margin: EdgeInsets.only(left: 10, top: 5),
                        height: 165,
                        color: Colors.blue,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 4 * 10) / 3,
                        margin: EdgeInsets.only(left: 10, top: 5),
                        height: 165,
                        color: Colors.red,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 4 * 10) / 3,
                        margin: EdgeInsets.only(left: 10, top: 5),
                        height: 165,
                        color: Colors.green,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
