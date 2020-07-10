import 'package:flutter/material.dart';
class LessonsWidget extends StatefulWidget{
  State createState ()=> _LessonsWidgetState();
}
class _LessonsWidgetState extends State<LessonsWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody();
  }
  Widget _buildBody(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: ListView(
        //todo ListView 存在默认的内边距
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Container(
            height: 426,
            decoration: BoxDecoration(
//                border: Border.all(color: Colors.green)
            ),
            width: MediaQuery.of(context).size.width,
            child: Container(
                color: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:0),
            child: Container(
              height: 2,
              color:Color.fromRGBO(125, 125, 125, 0.5)
            ),
          )
        ],
      ),
    );
  }
}
