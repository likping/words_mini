import "package:flutter/material.dart";

class BgWidget extends StatefulWidget {
  Function open;
  State createState() => _BgWidgetState();
  BgWidget(this.open);
}

class _BgWidgetState extends State<BgWidget> {
  @override
  TextStyle normalText = new TextStyle(color: Colors.white);
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody(context);
  }

  bool ispronunciation; //true:en false:am
  bool isautoPlaypro;
  bool isactiveDictory;
  bool istranlateZH;
  bool isacExample;
  void initState() {
    ispronunciation = false;
    isautoPlaypro = true;
    isactiveDictory = true;
    istranlateZH = true;
    isacExample = true;
  }

  Widget _buildBody(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(120, 120, 120, 0.5),
        child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: kToolbarHeight * 1.6,
                ),
                GestureDetector(
                    onTap: widget.open,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Close Menu",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )
                      ],
                    )),
                SizedBox(
                  height: 25,
                ),
                //头像,个人信息individual information
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(

                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset("assets/img/account.jpeg")),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
//                    mainAxisSize:MainAxisSize.min ,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Neil",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          "已连续学习了30天",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                      child: Container(
                          width: 300,
                          child: Row(
                            children: <Widget>[
                              Text(
                                "切换单词书",
                                style: normalText,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 150),
                                  child: Text(
                                    ">",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ))
                            ],
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: GestureDetector(
                      child: Row(
                    children: <Widget>[
                      Text(
                        "当前复习计划:每天50个单词",
                        style: normalText,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Text(
                            ">",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ))
                    ],
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: GestureDetector(
                      child: Row(
                    children: <Widget>[
                      Text(
                        "英式发音",
                        style: normalText,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 145),
                          child: Checkbox(
                            value: this.ispronunciation,
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            onChanged: (boo) {
                              setState(() {
                                this.ispronunciation = !this.ispronunciation;
                              });
                            },
                          ))
                    ],
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.ispronunciation = !this.ispronunciation;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            "美式发音",
                            style: normalText,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 145),
                              child: Checkbox(
                                value: !this.ispronunciation,
                                activeColor: Colors.white,
                                checkColor: Colors.blue,
                                onChanged: (bool) {
                                  setState(() {
                                    this.ispronunciation =
                                        !this.ispronunciation;
                                  });
                                },
                              ))
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.isautoPlaypro = !this.isautoPlaypro;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            "自动播放发音",
                            style: normalText,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 110),
                              child: Switch(
                                value: this.isautoPlaypro,
                                inactiveThumbColor: Colors.red,
                                activeColor: Colors.blue,
                                onChanged: (bool) {
                                  setState(() {
                                    this.isautoPlaypro = !this.isautoPlaypro;
                                  });
                                },
                              ))
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.isactiveDictory = !this.isactiveDictory;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            "开启柯林斯词典",
                            style: normalText,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 95),
                              child: Switch(
                                value: this.isactiveDictory,
                                inactiveThumbColor: Colors.red,
                                activeColor: Colors.blue,
                                onChanged: (bool) {
                                  setState(() {
                                    this.isactiveDictory =
                                        !this.isactiveDictory;
                                  });
                                },
                              ))
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.istranlateZH = !this.istranlateZH;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            "显示中文翻译",
                            style: normalText,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 110),
                              child: Switch(
                                value: this.istranlateZH,
                                inactiveThumbColor: Colors.red,
                                activeColor: Colors.blue,
                                onChanged: (bool) {
                                  setState(() {
                                    this.istranlateZH = !this.istranlateZH;
                                  });
                                },
                              ))
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.isactiveDictory = !this.isactiveDictory;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            "显示例句",
                            style: normalText,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 138),
                              child: Switch(
                                value: this.isacExample,
                                inactiveThumbColor: Colors.red,
                                activeColor: Colors.blue,
                                onChanged: (bool) {
                                  setState(() {
                                    this.isacExample = !this.isacExample;
                                  });
                                },
                              ))
                        ],
                      )),
                ),
              ],
            )));
  }
}
