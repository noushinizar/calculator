import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  late int first,second;
  late String opp;
  late String result,text ="";

  void btnClicked(String btnText){
     if(btnText=="c"){
       print("case1");
       result="";
       text="";
       first=0;
       second=0;
     }else if(btnText=="+"|| btnText=="-" || btnText=="x" || btnText=="/"){
       print("case2");
       first=int.parse(text);
       result="";
       opp=btnText;
     }else if(btnText == "="){
       print("case3");
       second=int.parse(text);
       if(opp=="+"){
         result=(first + second).toString();
       }if(opp=="-"){
         result=(first - second).toString();
       }if(opp=="x"){
         result=(first * second).toString();
       }if(opp=="/"){
         result=(first ~/ second).toString();
       }
     }else{
       print("case4");
       result=int.parse(text+btnText).toString();
     }
     setState(() {
       text=result;
     });
  }

Widget CustomOutlineButton(String value ){
  return Expanded(child:
    OutlinedButton(
      onPressed: ()=>
        btnClicked(value),

      child: Text(value,
        style: TextStyle(fontSize: 25),
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CALCULATOR'),),
      body:Container(
        child: Column(
          children: [
            Expanded(child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            )),
            Row(
              children: [
                CustomOutlineButton("9"),
                CustomOutlineButton("8"),
                CustomOutlineButton("7"),
                CustomOutlineButton("+"),
              ],
            ),
            Row(
              children: [
                CustomOutlineButton("6"),
                CustomOutlineButton("5"),
                CustomOutlineButton("4"),
                CustomOutlineButton("-"),
              ],
            ),
            Row(
              children: [
                CustomOutlineButton("3"),
                CustomOutlineButton("2"),
                CustomOutlineButton("1"),
                CustomOutlineButton("x"),

              ],
            ),
            Row(
              children: [
                CustomOutlineButton("c"),
                CustomOutlineButton("0"),
                CustomOutlineButton("="),
                CustomOutlineButton("/")
              ],
            )

          ],
        ),
      )
    );
  }
}
