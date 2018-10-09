import 'package:flutter/material.dart';
class CalculatorHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Card(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        enabled: false,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text('1', style: TextStyle(
                          fontSize: 30.0
                      ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('2', style: TextStyle(
                          fontSize: 30.0
                      ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('3', style: TextStyle(
                          fontSize: 30.0
                      ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text('4', style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('5',  style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('6',  style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text('7',  style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('8', style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('9',  style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){},
                      child: Text(".", style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Text("0",  style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Text("=", style: TextStyle(
                          fontSize: 30.0
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}