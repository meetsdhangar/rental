import 'package:flutter/material.dart';
import 'package:rental/Screens/clothmen.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "RENTAL",
            style: TextStyle(
              color: Color(0xFF1B3E41),
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 31),
            child: Image.asset("assets/images/prof.png"),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 31, left: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 315,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0x30CCCCCC),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Color(0xFF787474),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.search,
                        color: Color.fromARGB(120, 117, 117, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                height: 122,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => clothmen(),
                          ));
                        },
                        child: Container(
                          height: 114,
                          width: 89,
                          decoration: BoxDecoration(
                              color: Color(0xFFDF453E),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x14000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 13, left: 20, right: 24),
                                child: Container(
                                  child: Image.asset(
                                    "assets/images/cloth.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Cloth",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  Text(
                    "Trending Products",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Color(0xFFDF453E),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 142,
                            height: 205,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x14000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, left: 20, right: 24),
                                  child: Container(
                                    width: 110,
                                    height: 102.02,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF8F8F8),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Container(
                                      width: 72,
                                      height: 97.21,
                                      child: Image.asset(
                                        "assets/images/girl.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/dollar.png"),
                                    SizedBox(
                                      width: 7.7,
                                    ),
                                    Text(
                                      "2000 ",
                                      style: TextStyle(
                                        color: Color(0xFFDF453E),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.85,
                                ),
                                Text(
                                  "Lehnga Choli",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 142,
                            height: 205,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x14000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, left: 20, right: 24),
                                  child: Container(
                                    width: 110,
                                    height: 102.02,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF8F8F8),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Container(
                                      width: 72,
                                      height: 97.21,
                                      child: Image.asset(
                                        "assets/images/sewing.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/dollar.png"),
                                    SizedBox(
                                      width: 7.7,
                                    ),
                                    Text(
                                      "340 ",
                                      style: TextStyle(
                                        color: Color(0xFFDF453E),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.85,
                                ),
                                Text(
                                  "Lehnga Choli",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
