import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Detail extends StatefulWidget {
  final String image, name, quote, position, gender, tag;
  final Color color;
  final Function onTap;

  Detail(
      {Key key,
      this.image,
      this.color,
      this.name,
      this.quote,
      this.position,
      this.gender,
      this.onTap,
      this.tag})
      : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int count;
  getCount({String name}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
     if (prefs.getInt(widget.name) == null) {
        setState(() {
          count = 0;
          prefs.setInt(widget.name, 0);
        });
      } else {
        setState(() {
          count = prefs.getInt(widget.name);
        });
      }
    if (name.toLowerCase() == "plus") {
      setState(() {
        count = count + 1;
        prefs.setInt(widget.name, count);
      });
    } else if (name.toLowerCase() == "minus") {
      setState(() {
        count = count - 1;
        prefs.setInt(widget.name, count);
      });
    } else {
      if (prefs.getInt(widget.name) == null) {
        setState(() {
          count = 0;
          prefs.setInt(widget.name, 0);
        });
      } else {
        setState(() {
          count = prefs.getInt(widget.name);
        });
      }
    }
  }

  @override
  void initState() {
    getCount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hero(
        tag: widget.tag,
        child: Scaffold(
          body: Container(
              child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 0,
                    child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(right: 10, bottom: 10),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: widget.color,
                                  width: 1,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  color: widget.color,
                                  width: 1,
                                  style: BorderStyle.solid)),
                        ),
                        height: 200,
                        width: 150,
                        child: Image.asset(
                          "images/${widget.image}",
                          fit: BoxFit.cover,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          child: Text(
                            widget.quote,
                            style: TextStyle(
                                color: Colors.black87,
                                fontStyle: FontStyle.italic,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "${widget.name}\t\t(\t${widget.position}\t)\t",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[900].withOpacity(0.7),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Flutter Development",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )),
                        Info(name: "Gender", value: widget.gender),
                        Info(name: "Skill", value: "Flutter"),
                        Info(name: "Batch", value: "Batch1"),
                        Info(name: "University", value: "UCSLso"),
                        Info(name: "Hobby", value: "Coding"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  onTap: () {
                                    getCount(name: "plus");
                                    // setState(() {
                                    //   count=count+1;
                                    // });
                                  },
                                  child: Text("\u{1F60D}",
                                      style: TextStyle(
                                        fontSize: 50,
                                      ))),
                              Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.grey[900],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Text(count==null?"0":count.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count > 0) {
                                        getCount(name: "minus");
                                      }
                                    });
                                  },
                                  child: Text("\u{1F928}",
                                      style: TextStyle(
                                        fontSize: 50,
                                      ))),
                            ],
                          ),
                        ),
                      ]),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  String name, value;
  Info({
    Key key,
    this.name,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(":",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          Expanded(
            flex: 1,
            child: Text(value,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          )
        ],
      ),
    );
  }
}
