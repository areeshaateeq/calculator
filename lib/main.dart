import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculator(),
    );
  }
}
    class Calculator extends StatefulWidget {
      const Calculator({super.key});
      @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
  Widget numButton(String btnText, Color btnColor, Color txtColor){
    return ElevatedButton(
      onPressed: () => {},
       style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 79),
        shape: RoundedRectangleBorder(),
        primary: btnColor,
       ),
       child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColor),
       ),
       );
 }

  @override
   Widget build(BuildContext context) {

    double devicewidth= MediaQuery.of(context).size.width;
    double deviceheight= MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SizedBox(
              width: devicewidth,
              height: deviceheight,
            
              child: Column(
                children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only( right: 50.0),
                    decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 5)),
                    child: const Text("3456", style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontFamily: 'Poppins',
                      ),),
                  ) 
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        numButton("ac",Colors.grey,Colors.black),
                        numButton("ce",Colors.grey,Colors.black),
                        numButton("%",Colors.grey,Colors.black),
                        numButton("/",Colors.blue,Colors.black),
                        ],
                        ),
                        SizedBox(height: 10),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        numButton("7",Colors.black,Colors.white),
                        numButton("8",Colors.black,Colors.white),
                        numButton("9",Colors.black,Colors.white),
                        numButton("*",Colors.blue,Colors.white),
                        ],
                        ),
                        SizedBox(height: 10),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        numButton("4",Colors.black,Colors.white),
                        numButton("5",Colors.black,Colors.white),
                        numButton("6",Colors.black,Colors.white),
                        numButton("-",Colors.blue,Colors.white),
                        ],
                        ),
                       SizedBox(height: 10),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        numButton("1",Colors.black12,Colors.white),
                        numButton("2",Colors.black12,Colors.white),
                        numButton("3",Colors.black12,Colors.white),
                        numButton("+",Colors.blue,Colors.white),
                        ],
                        ),
                        SizedBox(height: 10),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        numButton("00",Colors.black,Colors.white),
                        numButton("0",Colors.black,Colors.white),
                        numButton(",",Colors.black,Colors.white),
                        numButton("=",Colors.blue,Colors.white),
                        ],
                        ),
                ],
                    ),
   
     ) ));
     }
}