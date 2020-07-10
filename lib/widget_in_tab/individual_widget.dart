import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
class IndividualWidget extends StatefulWidget{
  State createState()=>_IndividualWidgetState();
}
class _IndividualWidgetState  extends State<IndividualWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody(context);
  }
  Widget _buildBody(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}