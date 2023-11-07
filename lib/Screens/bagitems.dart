import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bagitem extends StatefulWidget {
  const bagitem({super.key});

  @override
  State<bagitem> createState() => _bagitemState();
}

bool selected = false;
bool openBottomsheet = false;

class _bagitemState extends State<bagitem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        title: Text("bag items",
            style: GoogleFonts.aboreto(
              textStyle: TextStyle(
                color: Color(0xFF1B3E41),
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.delete,
            ),
          )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 317,
              height: 141,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/women.png",
                        width: 94.43,
                        height: 91,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grown",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/dollar.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "1340",
                                style: TextStyle(
                                  color: Color(0xFFDF453E),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Days: 1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 95,
                                height: 29.48,
                                decoration: BoxDecoration(
                                  color: Color(0x30CCCCCC),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.remove),
                                    Container(
                                      width: 39.97,
                                      height: 28.17,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Center(
                                          child: Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                    ),
                                    Icon(Icons.add)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                left: 19,
                top: 15,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                      openBottomsheet = !openBottomsheet;
                    });

                    if (openBottomsheet == true) {
                      showModalBottomSheet(
                        isDismissible: false,
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                    selected = false;
                                  });
                                },
                                child: Icon(Icons.close)),
                          );
                        },
                      );
                    } else {
                      setState(() {
                        selected = !selected;
                      });
                    }
                  },
                  child: selected
                      ? Container(
                          width: 18,
                          height: 18,
                          child: Icon(
                            Icons.done,
                            size: 18,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFDF453E),
                              borderRadius: BorderRadius.circular(5)),
                        )
                      : Container(
                          width: 18,
                          height: 18,
                          // child: Icon(
                          //   Icons.done,
                          //   size: 18,
                          //   color: Colors.white,
                          // ),
                          decoration: BoxDecoration(
                              // color: Color(0xFFDF453E),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                ))
          ],
        ),
      ),
    ));
  }
}
