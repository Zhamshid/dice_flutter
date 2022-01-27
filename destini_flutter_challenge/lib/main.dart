import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'story_brain.dart';

StoryBrain storyBrain = StoryBrain();

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
                    storyBrain.getStory(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    child: Text(
                      storyBrain.getFirstChoice(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Visibility(
                visible: storyBrain.buttonVisibility(),
                child: Expanded(
                    flex: 2,
                    child: FlatButton(
                      color: Colors.orange[700],
                      onPressed: () {
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      child: Text(
                        storyBrain.getSecondChoice(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
