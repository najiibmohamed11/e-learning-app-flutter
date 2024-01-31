import 'package:e_learning_dribble_design/colors.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 330.0,
                decoration: BoxDecoration(
                    color: dicountbgcolor,
                    borderRadius: BorderRadiusDirectional.vertical(
                        bottom: Radius.circular(30.0))),
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: commentbgcolor,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.bookmark_border,
                          color: commentbgcolor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.share_outlined,
                          color: commentbgcolor,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage("images/hijabgirl.png"),
                    ),
                    Text(
                      "savannah,S.SI",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      width: 350,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 11.0,
                                backgroundImage: AssetImage(
                                  "images/teacher.png",
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                " 29 years old",
                                style: TextStyle(fontSize: 15.0),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12.0,
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 20,
                                  color: Color.fromARGB(255, 245, 142, 134),
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                " south jakarta",
                                style: TextStyle(fontSize: 15.0),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12.0,
                                backgroundImage:
                                    AssetImage("images/mortarboard.png"),
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                " 29 years old",
                                style: TextStyle(fontSize: 15.0),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 25.0),
                child: Text(
                  "About course",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  " simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ips",
                  style: TextStyle(fontSize: 15.0, color: Color(0xff77787B)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Text(
                      'FEEDBACK',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '(24)',
                      style:
                          TextStyle(fontSize: 20.0, color: Color(0xff77787B)),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_sharp)
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  padding: EdgeInsets.only(left: 20.0, top: 25.0, right: 30.0),
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Text("T"),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "theresa web",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBC0E),
                            size: 20.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBC0E),
                            size: 20.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBC0E),
                            size: 20.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBC0E),
                            size: 20.0,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Color(0xffFFBC0E),
                            size: 20.0,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: Text(
                            " simply dummy .md in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing "),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
