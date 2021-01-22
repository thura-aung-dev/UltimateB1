import 'dart:ui';

import 'package:dear_ultimate/Detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: DearUltimate()));
}

class DearUltimate extends StatefulWidget {
  @override
  _DearUltimateState createState() => _DearUltimateState();
}

class _DearUltimateState extends State<DearUltimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.4,
        title: Text(
          "Dear Ultimate",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Image.asset("images/ultimate.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.info,
            
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "kohtut.jpg",
                  color: Color(0xff482ff7),
                  name: "Ko Htut",
                  position: " Instructor",
                  gender: "Male",
                   tag:"hero1",
                  quote:
                      "\“Many of life’s failures are people who did not realize how close they were to success when they gave up.\”"),
             ),
                    );
                  },
                  image: "kohtut.jpg",
                  color: Color(0xff482ff7),
                  name: "Ko Htut",
                  position: " Instructor",
                  gender: "Male",
                  tag:"hero1",
                  quote:
                      "\“Many of life’s failures are people who did not realize how close they were to success when they gave up.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail(image: "aungzay.jpg",
                  color: Color(0xff581b98),
                  name: "Ko Aung Zay",
                  position: " Instructor",
                  gender: "Male",
                   tag:"hero2",
                  quote: "\“I\'m Not Crazy. My Mother Had Me Tested.\”"),),
                    );
                  },
                  image: "aungzay.jpg",
                  color: Color(0xff581b98),
                  name: "Ko Aung Zay",
                  position: " Instructor",
                  gender: "Male",
                   tag:"hero2",
                  quote: "\“I\'m Not Crazy. My Mother Had Me Tested.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "mainmain.jpg",
                  color: Color(0xff39bdc8),
                  name: "Main Main",
                  position: " Student",
                  gender: "Male",
                  tag:"hero3",
                  quote:
                      "\“If you want to live a happy life, tie it to a goal, not to people or things.\”"),
          ),
                    );
                  },
                  image: "mainmain.jpg",
                  color: Color(0xff39bdc8),
                  name: "Main Main",
                  position: " Student",
                  gender: "Male",
                  tag:"hero3",
                  quote:
                      "\“If you want to live a happy life, tie it to a goal, not to people or things.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "me.jpg",
                  color: Color(0xff1e6262),
                  name: "Thura Aung",
                  position: " Student",
                  gender: "Male",
                  tag:"hero4",
                  quote:
                      "\ “Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking.\” "),
         ),
                    );
                  },
                  image: "me.jpg",
                  color: Color(0xff1e6262),
                  name: "Thura Aung",
                  position: " Student",
                  gender: "Male",
                  tag:"hero4",
                  quote:
                      "\ “Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking.\” "),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "kyiosomboom.jpg",
                  color: Color(0xff482ff7),
                  name: "Kyio Som Boom",
                  position: " Student",
                  gender: "Male",
                  tag:"hero5",
                  quote:
                      "\“The big lesson in life, baby, is never be scared of anyone or anything.\”"),
            ),
                    );
                  },
                  image: "kyiosomboom.jpg",
                  color: Color(0xff482ff7),
                  name: "Kyio Som Boom",
                  position: " Student",
                  gender: "Male",
                  tag:"hero5",
                  quote:
                      "\“The big lesson in life, baby, is never be scared of anyone or anything.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "minnmyat.jpg",
                  color: Color(0xff2a2b5f),
                  name: " Minn Myat",
                  position: " Student",
                  gender: "Male",
                  tag:"hero6",
                  quote:
                      "\“Life is not a problem to be solved, but a reality to be experienced.\”"),
          ),
                    );
                  },
                  image: "minnmyat.jpg",
                  color: Color(0xff2a2b5f),
                  name: " Minn Myat",
                  position: " Student",
                  gender: "Male",
                  tag:"hero6",
                  quote:
                      "\“Life is not a problem to be solved, but a reality to be experienced.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "nanmon.jpg",
                  color: Color(0xffa80038),
                  name: "Nan Mon",
                  position: " Student",
                  gender: "Female",
                  tag:"hero7",
                  quote: "\“Turn your wounds into wisdom.\”"),
            ),
                    );
                  },
                  image: "nanmon.jpg",
                  color: Color(0xffa80038),
                  name: "Nan Mon",
                  position: " Student",
                  gender: "Female",
                  tag:"hero7",
                  quote: "\“Turn your wounds into wisdom.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "amone.jpg",
                  color: Color(0xff22d1ee),
                  name: "A Mone",
                  position: " Student",
                  gender: "Female",
                  tag:"hero8",
                  quote:
                      "\“Do all the good you can, for all the people you can, in all the ways you can, as long as you can.\”"),
           ),
                    );
                  },
                  image: "amone.jpg",
                  color: Color(0xff22d1ee),
                  name: "A Mone",
                  position: " Student",
                  gender: "Female",
                  tag:"hero8",
                  quote:
                      "\“Do all the good you can, for all the people you can, in all the ways you can, as long as you can.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail(  image: "aungkomaw.jpg",
                  color: Color(0xff0e153a),
                  name: "Aung KO Maw",
                  position: " Student",
                  gender: "Male",
                  tag:"hero9",
                  quote:
                      "\“Everything negative – pressure, challenges – is all an opportunity for me to rise.\”"),
          ),
                    );
                  },
                  image: "aungkomaw.jpg",
                  color: Color(0xff0e153a),
                  name: "Aung KO Maw",
                  position: " Student",
                  gender: "Male",
                  tag:"hero9",
                  quote:
                      "\“Everything negative – pressure, challenges – is all an opportunity for me to rise.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail(  image: "htinlinkyaw.jpg",
                  color: Color(0xff482ff7),
                  name: "Htin Lin Kyaw",
                  position: " Student",
                  gender: "Male",
                  tag:"hero16",
                  quote:
                      "\“Life imposes things on you that you can’t control, but you still have the choice of how you’re going to live through this.\” "),
            ),
                    );
                  },
                  image: "htinlinkyaw.jpg",
                  color: Color(0xff482ff7),
                  name: "Htin Lin Kyaw",
                  position: " Student",
                  gender: "Male",
                  tag:"hero16",
                  quote:
                      "\“Life imposes things on you that you can’t control, but you still have the choice of how you’re going to live through this.\” "),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "thethtoosan.jpg",
                  color: Color(0xff17b978),
                  name: "Thet Htoo San",
                  position: " Student",
                  gender: "Male",
                  tag:"hero10",
                  quote:
                      "\“Life is like riding a bicycle. To keep your balance, you must keep moving.\”"),
           ),
                    );
                  },
                  image: "thethtoosan.jpg",
                  color: Color(0xff17b978),
                  name: "Thet Htoo San",
                  position: " Student",
                  gender: "Male",
                  tag:"hero10",
                  quote:
                      "\“Life is like riding a bicycle. To keep your balance, you must keep moving.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail( image: "swanhtetlin.jpg",
                  color: Color(0xffac3f21),
                  name: "Swan Htet Lin",
                  position: " Student",
                  gender: "Male",
                  tag:"hero11",
                  quote:
                      "\“Life is really simple, but men insist on making it complicated.\”"),
            ),
                    );
                  },
                  image: "swanhtetlin.jpg",
                  color: Color(0xffac3f21),
                  name: "Swan Htet Lin",
                  position: " Student",
                  gender: "Male",
                  tag:"hero11",
                  quote:
                      "\“Life is really simple, but men insist on making it complicated.\”"),
              Student(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail(image: "kyilinhtun.jpg",
                  color: Color(0xff0e153a),
                  name: "Kyi Lin Htun",
                  gender: "Male",
                  position: " Student",
                  tag:"hero12",
                  quote:
                      "\“Life is like a coin. You can spend it any way you wish, but you only spend it once.\”"),
         ),
                    );
                  },
                  image: "kyilinhtun.jpg",
                  color: Color(0xff0e153a),
                  name: "Kyi Lin Htun",
                  gender: "Male",
                  position: " Student",
                  tag:"hero12",
                  quote:
                      "\“Life is like a coin. You can spend it any way you wish, but you only spend it once.\”"),
            ],
          ),
        ),
      ),
    );
  }
}

class Student extends StatelessWidget {
  final String image, name, quote, position, gender,tag;
  final Color color;
  final Function onTap;
  Student(
      {Key key,
      this.image,
      this.color,
      this.name,
      this.quote,
      this.position,
      this.gender,
      this.onTap, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Hero(
          tag: tag,
                  child: Card(
            elevation: 0.4,
            borderOnForeground: true,
            child: Container(
              height: 150,
              child: Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(
                    flex: 0,
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.only(right: 5, bottom: 5),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: color,
                                  width: 1,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: color,
                                  width: 1,
                                  style: BorderStyle.solid)),                               
                        ),
                        child: Image.asset(
                          "images/$image",
                          height: 80,
                          width: 75,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 5.0, left: 5.0),
                            child: Text(
                              gender,
                              style: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 5.0, left: 5.0),
                            child: Text(
                              "Batch 1",
                              style: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                       Text(
                            name + "\t\t(\t$position\t)\t",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              child: Text(
                                quote,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Flutter Development",
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          child: Center(
                        child: Text(
                          "20-01-2021",
                          style: TextStyle(
                            color: Colors.black26,
                          ),
                        ),
                      )),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );

    //     return Card(
// elevation: 0.3,
//           child: Container(
//           height: 100,
//           margin: EdgeInsets.all(8),
//           child: Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.only(right: 5, bottom: 5),
//                 decoration: BoxDecoration(
//                   border: Border(
//                       bottom: BorderSide(
//                           color: color, width: 1, style: BorderStyle.solid),
//                       right: BorderSide(
//                           color: color, width: 1, style: BorderStyle.solid)),
//                 ),
//                 child: Image.asset(
//                   "images/$image",
//                   height: 80,
//                   width: 95,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Column(
//                 children:[
//                Container(
//                 width: 100,
//                   margin: EdgeInsets.only( left:10),
//                   child: Text(
//                     name,
//                      style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold,fontSize: 17),
//                   )),
//                   Container(
//                   margin: EdgeInsets.only( left:10),
//                   child: Text(
//                     "name",
//                      style: TextStyle(color: Colors.black87),
//                   )),
//                 ]
//               ),

//                    Container(
//                   margin: EdgeInsets.only(left: 80),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                     "Male",
//                      style: TextStyle(color: Colors.grey,),
//                   ),
//                   Text(
//                     "age:\t 20",
//                      style: TextStyle(color: Colors.grey,),
//                   ),
//                    Text(
//                     "Batch 1",
//                      style: TextStyle(color: Colors.grey,),
//                   )
//                     ],
//                   ))
//             ],
//           )),
//     );
  }
}
