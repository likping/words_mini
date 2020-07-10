import "package:flutter/material.dart";
import "package:wordsmini/widget_in_tab/words_widget.dart";
import "package:wordsmini/widget_in_tab/book_read_widget.dart";
import "package:wordsmini/widget_in_tab/category_widget.dart";
import "package:wordsmini/widget_in_tab/individual_widget.dart";
class FrontWidget extends StatefulWidget {
  Function close;
  FrontWidget(this.close);
  State createState() => _FrontWidgetState();
}

class _FrontWidgetState extends State<FrontWidget>
    with TickerProviderStateMixin {
  @override
  TabController _tabController;
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(0)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          ),
          //top bars
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: widget.close,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Icon(Icons.menu, color: Color.fromRGBO(120, 120, 255, 1)),
                ),
              ),
              Expanded(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("WordsMini",
                            style:
                                TextStyle(color: Color.fromRGBO(120, 120, 255, 1), fontSize: 22)))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.white,
//                   hoverColor:Colors.green,
                  highlightColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.search,
                    color: Color.fromRGBO(120, 120, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("SearchWords");
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromRGBO(125, 125, 125, 0.3))),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 0,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                      height: 500,
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          //words
                          _buildContainer(child: WordsWiget()),
                          //lessons
                          _buildContainer(child:LessonsWidget()),
                          //discover
                          _buildContainer(child: CategoryWiget()),
                          //individual
                          _buildContainer(child:IndividualWidget()),
                        ],
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
//                height: 50,
                child: TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  indicatorColor: Color(0xff191f39),
                  labelColor:Color.fromRGBO(120, 120, 255, 1),
                  unselectedLabelColor: Color.fromRGBO(125, 125, 125, 0.5),
//todo 排列问题
                  tabs: <Widget>[
                    Tab(icon: Icon(Icons.home), text: "words"),
                    Tab(icon: Icon(Icons.book), text: "books"),
                    Tab(icon: Icon(Icons.featured_play_list), text: "list"),
                    Tab(icon: Icon(Icons.person), text: "individual"),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer({Widget child}) {
    return Container(
      decoration: BoxDecoration(
      ),
      child:  child,

    );
  }
}
