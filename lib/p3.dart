import 'package:flutter/material.dart';

class P3 extends StatefulWidget {
  const P3({Key? key}) : super(key: key);

  @override
  State<P3> createState() => _P3State();
}

class _P3State extends State<P3> {

  double cost = 60;
  int count = 1;
  bool isSelectedS = false;
  bool isSelectedM = false;
  bool isSelectedL = false;
  bool NoS = false;
  bool S1 = false;
  bool S2 = false;
  bool S3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfffaf4ee),
        // backgroundColor: Colors.brown.shade100,
        title: Center(
            child: Text(
              "Espresso",
              style: TextStyle(
                  color: Colors.black
              ),
            )
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                color: Color(0xfffaf4ee),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Espresso.png',
                      height: 200,
                      width: 200,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              )
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:
                      [
                        Text(
                          'Espresso',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        new Spacer(),
                        Container(
                          width: 40,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                            color: Colors.brown.shade200,
                          ),
                          child: TextButton(
                              onPressed: (){
                                setState(() {
                                  count--;
                                  cost = (cost/2);
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 20,
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                              '${count}'
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
                            color: Colors.brown.shade200,
                          ),
                          child: TextButton(
                              onPressed: (){
                                setState(() {
                                  count++;
                                  cost *=2;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Text(
                      '${cost}',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.brown.shade400
                      ),
                    )
                  ],
                ),
              )
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children:
                          [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelectedS = true;
                                    isSelectedM = false;
                                    isSelectedL = false;
                                  });
                                },
                                child: Image.asset(
                                  'images/small.png',
                                  color: isSelectedS ? Colors.black : null,
                                )
                            ),
                            SizedBox(width: 50,),
                            GestureDetector(

                                onTap: () {
                                  setState(() {
                                    isSelectedS = false;
                                    isSelectedM = true;
                                    isSelectedL = false;
                                  });
                                },
                                child: Image.asset(
                                  'images/medium.png',
                                  color: isSelectedM ? Colors.black : null,
                                )
                            ),
                            SizedBox(width: 50,),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelectedS = false;
                                    isSelectedM = false;
                                    isSelectedL = true;
                                  });
                                },
                                child: Image.asset(
                                  'images/large.png',
                                  color: isSelectedL ? Colors.black : null,
                                )
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
          ),
          Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              RichText(
                                text: TextSpan(
                                    text: "Sugar ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black
                                    ),
                                    children: const <TextSpan> [
                                      TextSpan(
                                        text: "(in Cubes)",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey
                                        ),
                                      )
                                    ]
                                ),
                              ),
                              Row(
                                children:
                                [
                                  GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          NoS = true;
                                          S1 = false;
                                          S2 = false;
                                          S3 = false;
                                        });
                                      },
                                      child: Image.asset(
                                        'images/NoSugar.png',
                                        color: NoS ? Colors.black : null,
                                      )
                                  ),
                                  SizedBox(width: 30,),
                                  GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          NoS = false;
                                          S1 = true;
                                          S2 = false;
                                          S3 = false;
                                        });
                                      },
                                      child: Image.asset(
                                        'images/1Cube.png',
                                        color: S1 ? Colors.black : null,
                                      )
                                  ),
                                  SizedBox(width: 30,),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        NoS = false;
                                        S1 = false;
                                        S2 = true;
                                        S3 = false;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'images/cube.png',
                                          color: S2 ? Colors.black : null,
                                        ),
                                        SizedBox(width: 10,),
                                        Image.asset(
                                          'images/cube1.png',
                                          color: S2 ? Colors.black : null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          NoS = false;
                                          S1 = false;
                                          S2 = false;
                                          S3 = true;
                                        });
                                      },
                                      child: Image.asset(
                                        'images/3Cubes.png',
                                        color: S3 ? Colors.black : null,
                                      )
                                  ),
                                ],
                              )
                            ]
                        ),
                      ]
                  )
              )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 100
            ),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.brown.shade200,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(5, 10), // changes position of shadow
                  ),
                ],
              ),
              child: MaterialButton(
                onPressed: ()
                {

                },
                child: Text(
                  'Add to card',
                  style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                  ),

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}