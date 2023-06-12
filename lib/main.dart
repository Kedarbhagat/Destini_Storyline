import 'package:destini_personal/StoryFeeder.dart';
import 'package:flutter/material.dart';
import 'storyWorker.dart';

int moveforward = 0;
Climax story1 = Climax();
void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: Destini_Page(),
    );
  }
}

class Destini_Page extends StatefulWidget {
  const Destini_Page({Key? key}) : super(key: key);

  @override
  State<Destini_Page> createState() => _Destini_PageState();
}

class _Destini_PageState extends State<Destini_Page> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    story1.getStoryTitle(),
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.transparent),
                child: Text(
                  story1.getChoice1(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {

                  setState(() {
                   story1.nextstory(1) ;
                  });
                },
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.transparent),
                  child: Text(
                    story1.getChoice2(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {

                    setState(() {
                      story1.nextstory(2);
                    });

                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
