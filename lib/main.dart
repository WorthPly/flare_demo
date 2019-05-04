import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final double containerSize = 20.0;
  // Wheather this element is a favorite or not.
  bool _isFav = false;
///jsust testing branch work
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(),
  body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: GestureDetector(
      onTap: () {
        // Toggle the state:
        // This'll cause this widget to rebuild
        // and the animation will be swapped.
        setState(() {
          _isFav = !_isFav;
        });
      },
      child: Row(children: [
        Container(
            margin: EdgeInsets.only(right: 10),
            width: 20,
            height: 20,
            child: FlareActor("assets/Favorite.flr",
                shouldClip: false,
                // Play the animation depending on the state.
                animation:
                _isFav ? "Favorite" : "Unfavorite" //_animationName
            )),
        Text(
          "Like",
          style: TextStyle(
              fontSize: 11,
              fontFamily: "Montserrat",
              color: Colors.black45),
        ),
      ]),
    ),
  ),
);
  }
}
