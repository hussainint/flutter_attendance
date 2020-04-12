import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var regno = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
  ];

  var name = [
    "Sudent 1",
    "Sudent 2",
    "Sudent 3",
    "Sudent 4",
    "Sudent 5",
    "Sudent 6",
    "Sudent 7",
    "Sudent 8",
    "Sudent 9",
    "Sudent 10",
    "Sudent 11",
    "Sudent 12",
    "Sudent 13",
  ];

  final List<bool> cb = List<bool>.generate(13, (i) => false);
  @override
  Widget build(BuildContext context) {
    double widthh = MediaQuery.of(context).size.width;
    double heightt = MediaQuery.of(context).size.height;
    print('Outputttttt');
    print(heightt);
    return Scaffold(
      appBar: AppBar(
        title: Text('Section : Course'),
        actions: <Widget>[
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        // padding: EdgeInsets.only(top: 10.0),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //SizedBox(height:20.0),

          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Material(
              elevation: 5.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Reg # /Name",
                  prefixIcon: Material(
                    child: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),

          //SizedBox(height: 20.0,),
          Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Reg#'),
                Text('Name'),
                Text('Mark Status'),
              ],
            ),
          ),
          Container(
            height: heightt - 300.0,
            width: widthh,
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black45,
                        // width: 3.0 --> you can set a custom width too!
                      ),
                    ),
                  ),
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('${regno[index]}'),
                      Text('${name[index]}'),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              onChanged: (bool e) {
                                setState(() {
                                  if (cb[index])
                                    cb[index] = !cb[index];
                                  else
                                    cb[index] = !cb[index];
                                });
                              },
                              value: cb[index],
                            ),
                            Text('Present')
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          RaisedButton(
            child: Text('Update Attendance'),
            onPressed: () {},
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
