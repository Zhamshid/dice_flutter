import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DestiniPage(),
  ));
}

class DestiniPage extends StatefulWidget {
  const DestiniPage({Key? key}) : super(key: key);

  @override
  _DestiniPageState createState() => _DestiniPageState();
}

class _DestiniPageState extends State<DestiniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      'Here will be any Stories',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),)
            ],
          ),
        ),
      ),
    );
  }
}
