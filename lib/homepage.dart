import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/game_button.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late List <Gamebutton> buttonsList;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonsList=doInit();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("TicTacTOe"),
      ),
      body: new GridView.builder(
        padding: EdgeInsets.all(10.0),
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
            crossAxisSpacing: 9.0,
            mainAxisSpacing: 9,
          ),
          itemCount: buttonsList.length,
          itemBuilder: (context,i)=>new SizedBox(
            width: 100,
            height: 100,
              child: new ElevatedButton(
                onPressed: null, child: new Text(
                  buttonsList[i].text,style: new TextStyle(color: Colors.white,fontSize: 20),
              ),

              ),
          ),
      )
        // itemCount: buttonsList.length,
        // itemBuilder: {context,i}=> new SizeBox(

      );

  }

  List<Gamebutton> doInit() {
      var gameButtons = <Gamebutton>[
        new Gamebutton(id :1),
        new Gamebutton(id :2),
        new Gamebutton(id :3),
        new Gamebutton(id :4),
        new Gamebutton(id :5),
        new Gamebutton(id :6),
        new Gamebutton(id :7),
        new Gamebutton(id :8),
        new Gamebutton(id :9),
      ];
      return gameButtons;
  }
}
