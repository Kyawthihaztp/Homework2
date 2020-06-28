import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('HomeWork3'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      NameWidget("Jhon McDonald", "Los Angles,CA"),
                      const SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          NameWidget("34", "Posts"),
                          NameWidget("1256", "Followers")
                        ],
                      )
                    ],
                  ),
                  Image.asset(
                    'images/harr.jpg',
                    width: 120,
                    height: 140,
                  ),
                ],
              ),
              ImagesList(),
              IconList(),
              NameWidget("About",
                  "A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.")
            ],
          )),
    );
  }
}

Column NameWidget(String name, String city) {
  return Column(
    children: [
      Text(
        name,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      Text(city)
    ],
  );
}

Row ImagesList() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Image.asset(
        'images/harr.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/harr.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/harr.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/harr.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/harr.jpg',
        width: 70,
        height: 70,
      )
    ],
  );
}

Row IconList() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(Icons.access_alarm),
      Icon(Icons.phone),
      Icon(Icons.face),
      Icon(Icons.table_chart),
      Icon(Icons.date_range),
    ],
  );
}
