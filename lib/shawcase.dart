import 'package:e_learning_dribble_design/colors.dart';
import 'package:e_learning_dribble_design/details.dart';
import 'package:flutter/material.dart';

class Showcase extends StatefulWidget {
  const Showcase({super.key});

  @override
  State<Showcase> createState() => _ShowcaseState();
}

class _ShowcaseState extends State<Showcase> {
  String groupValue = "SMP";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top bar with icons
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Image.asset("images/menu.png"),
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications_none,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: commentbgcolor,
                      backgroundImage: AssetImage("images/user.png"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 45.0,
              ),
              // Container with discount information
              Container(
                width: 380.0,
                height: 200.0,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 370.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: dicountbgcolor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "promp!",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 223, 227, 235),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "get ",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      TextSpan(
                                          text: "30% off \n",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                      TextSpan(
                                          text: "SMP Mathematics",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 30,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.yellow,
                                        onPrimary: Colors.black,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "see",
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      height: 200,
                      width: 200,
                      top: -10, // adjust the position as needed
                      right: -20, // adjust the position as needed
                      child: Image.asset("images/over teacher.png"),
                    ),
                  ],
                ),
              ),
              // Search bar and filter icon
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20.0),
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 30.0,
                          ),
                          Text(
                            "search.....",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset("images/filter.png"),
                  )
                ],
              ),
              // Radio buttons for selecting group
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  children: [
                    Radio(
                        value: 'TK',
                        groupValue: groupValue,
                        onChanged: (values) {
                          setState(() {
                            groupValue = values!;
                          });
                        }),
                    Text("tk"),
                    SizedBox(width: 12.0),
                    Radio(
                        value: 'SD',
                        groupValue: groupValue,
                        onChanged: (values) {
                          setState(() {
                            groupValue = values!;
                          });
                        }),
                    Text("SD"),
                    SizedBox(width: 12.0),
                    Radio(
                        value: 'SMP',
                        groupValue: groupValue,
                        onChanged: (values) {
                          setState(() {
                            groupValue = values!;
                          });
                        }),
                    Text("SMP"),
                    SizedBox(width: 12.0),
                    Radio(
                        value: 'SMA',
                        groupValue: groupValue,
                        onChanged: (values) {
                          setState(() {
                            groupValue = values!;
                          });
                        }),
                    Text("SMA"),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              // Subjects
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text("enc", style: subjectstyle),
                    SizedBox(
                      width: 40.0,
                    ),
                    Text("chemistry", style: subjectstyle),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      width: 90.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: dicountbgcolor,
                      ),
                      child: Center(
                        child: Text(
                          "biology",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      "physics",
                      style: subjectstyle,
                    ),
                    SizedBox(width: 40),
                    Text(
                      "mathematics",
                      style: subjectstyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Teacher container (duplicated)
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: commentbgcolor),
                      width: 370.0,
                      height: 150.0,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 10.0),
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundImage:
                                      AssetImage("images/bigbeardman.png"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.0),
                                width: 80.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xffFF9C8E),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$10/hour",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  width: 250.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF5F4F4),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      "alpert",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text(
                                        "hello i am albert i am biology teacher that has been teaching for several years of years"),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.star_outlined,
                                      color: Color(0xffFFBB0E),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text("4,6"),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text("(19 feedback)"),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      width: 90.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: Center(
                                          child: Text(
                                        "class details",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: commentbgcolor),
                      width: 370.0,
                      height: 150.0,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 10.0),
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundImage:
                                      AssetImage("images/hijabgirl.png"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.0),
                                width: 80.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xffFF9C8E),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$9/hour",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  width: 250.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF5F4F4),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      "savannah",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text(
                                        "hello i am sava special teacher of biology tutoring who hase been teaching private turing....."),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.star_outlined,
                                      color: Color(0xffFFBB0E),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text("4,7"),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text("(20 feedback)"),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) {
                                            return Details();
                                          }),
                                        );
                                      },
                                      child: Container(
                                        width: 90.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: Center(
                                            child: Text(
                                          "class details",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Duplicated container
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
