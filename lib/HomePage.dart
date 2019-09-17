import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 =new TextEditingController(text:"");
  final TextEditingController t2 =new TextEditingController(text:"");

  void doAddition(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void doMul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void doDiv(){
    setState(() {
      num1=float.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
        centerTitle: true,
      ),
      body: new Container(
        padding: const EdgeInsets.all(25.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Answer:$sum", style: new TextStyle(color: Colors.black87,fontSize: 30)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number i"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter number j"
              ),
              controller: t2,
            ),
            new Padding(padding: EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  onPressed: doAddition,
                  color: Colors.red,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  onPressed:doSub,
                  color: Colors.red,
                ),
                new MaterialButton(
                  child: new Text("*"),
                  onPressed: doMul,
                  color: Colors.red,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  onPressed: doDiv,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
