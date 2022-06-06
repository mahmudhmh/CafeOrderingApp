import 'package:cafefinal/p3.dart';
import 'package:flutter/material.dart';

class P2 extends StatefulWidget {
  const P2({Key? key}) : super(key: key);

  @override
  State<P2> createState() => _P2State();
}

class _P2State extends State<P2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffaf4ee),
        // backgroundColor: Colors.brown.shade100,
        elevation: 0.0,
        leading: Icon(Icons.menu,color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10
            ),
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.search,color: Colors.black)

            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xfffaf4ee),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                      text: "It\'s Great ",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black
                      ),
                      children: const <TextSpan> [
                        TextSpan(
                          text: "Day for Coffee",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.brown
                          ),
                        )]
                  ),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => P3())
                      );
                    });
                  },
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset('images/Espresso.png'),
                        SizedBox(width: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Espresso',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        new Spacer(),
                        Icon(Icons.chevron_right,size: 30,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      Image.asset('images/Cappuccino.png'),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Cappuccino',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      new Spacer(),
                      Icon(Icons.chevron_right,size: 30,)
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      Image.asset('images/macciato.png'),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'macciato',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      new Spacer(),
                      Icon(Icons.chevron_right,size: 30,)
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      Image.asset('images/Mocha.png'),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Mocha',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      new Spacer(),
                      Icon(Icons.chevron_right,size: 30,)
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      Image.asset('images/latte.png'),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'latte',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      new Spacer(),
                      Icon(Icons.chevron_right,size: 30,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.brown.shade400,
        unselectedItemColor: Colors.brown.shade900,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:
        [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: "location"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_drink),
              label: "drink"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "profile"
          ),
        ]
      ),
    );
  }
}
