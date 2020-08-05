import 'package:flutter/material.dart';

import 'package:musicvideo/pages/videoplayer.dart';

import 'package:musicvideo/ui_components/imagecard.dart';
import '../ui_components/custom_appBars.dart';
import 'MyMusicPage.dart';
//import './streamDataTab.dart';
//import './triggerLogicTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Default tab controller wraps everything.
      length: 2, //Length of Tabs
      child: Scaffold(
        appBar: primaryAppbar(context), //Custom AppBar
        body: Container(
          child: TabBarView(
            //Pages Switches on selection of the respective tabs.
            children: <Widget>[
              //TabView 1
              StreamDataTab(),

              //TabView 2
              TriggerLogicTab(),
            ],
          ),
        ),

        //Actual Tabs at the bottom.
        bottomNavigationBar: Container(
          //Container used for rounded Corners on top.
          child: TabBar(
            tabs: <Widget>[
              Tab(
                //Tab 1
                child: Text(
                  'Listen!!  &\n feel it..',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ),
              Tab(
                //Tab 2
                child: Text(
                  'Watch!!  &\n love it..',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ),
            ],
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Theme.of(context).accentColor,
          ),
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

class StreamDataTab extends StatefulWidget {
  //Tab 1
  @override
  _StreamDataTabState createState() => _StreamDataTabState();
}

class _StreamDataTabState extends State<StreamDataTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              //Stacks texts over Image.
              alignment: Alignment.center,
              children: <Widget>[
                //Custom Image Card widget.
                imageCard('assets/images/mike.jpg'),
              ],
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
            //The Button
            //Streams data into TriggerLogicBloc
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );

              print("music page will be opened");
            },
            child: Text(
              'MUSIC',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            elevation: 0,
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class TriggerLogicTab extends StatefulWidget {
  //Tab 2
  @override
  _TriggerLogicTabState createState() => _TriggerLogicTabState();
}

class _TriggerLogicTabState extends State<TriggerLogicTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              //Stacks texts over Image.
              alignment: Alignment.center,
              children: <Widget>[
                //Custom Image Card widget.
                imageCard('assets/images/watch2.jpg'),
              ],
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
            //The Button
            //Streams data into TriggerLogicBloc
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage2()),
              );
            },
            child: Text(
              'VIDEOS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.orangeAccent[300],
              ),
            ),
            elevation: 0,
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
