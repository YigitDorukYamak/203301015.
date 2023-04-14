import 'package:flutter/material.dart';
import 'package:yigi/login/const.dart';
import 'package:yigi/pages2/d%C3%BCg%C3%BCnpage.dart';
import 'package:yigi/pages2/gelinlik.dart';
import '../../pages2/dügünorganizasyon.dart';
import '../../pages2/müzik.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: metod(),
      drawerScrimColor: Colors.black87,
      body: ListView(
        children: <Widget>[
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              'assets/images/1.jpg',
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),

          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DugunPage()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Düğün Mekanları",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GelinlikPage()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Gelinlik",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dugunorg()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Düğün Organizsayonları",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Muzik()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/4.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Müzik",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GelinlikPage()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/5.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Düğün Davetiyesi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GelinlikPage()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/6.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Damatlık",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
