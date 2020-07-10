import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWiget extends StatefulWidget {
  State createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWiget> {
  @override
  double cardWidth;
  double cardScale;
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody(context);
  }

  void initState() {
    cardWidth = 182;
    cardScale = 1.3;
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Container(
          child: Wrap(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "VocabularyList");
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      width: cardWidth,
                      height: cardWidth * cardScale,
                      child: Center(
                        child: Text("所有单词"),
                      ),
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "VocabularyList");
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      width: cardWidth,
                      height: cardWidth * cardScale,
                      child: Center(
                        child: Text("正在学习"),
                      ),
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "VocabularyList");
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      width: cardWidth,
                      height: cardWidth * cardScale,
                      child: Center(
                        child: Text("尚未学习"),
                      ),
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "VocabularyList");
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      width: cardWidth,
                      height: cardWidth * cardScale,
                      child: Center(
                        child: Text("已经掌握"),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
