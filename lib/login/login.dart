import 'package:flutter/material.dart';
import 'package:yigi/login/const.dart';
import 'package:yigi/login/login1.dart';

class Hosgeldin extends StatelessWidget {
  const Hosgeldin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: double.infinity, // tam genişlik
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Mekandan gelinliğe, düğünün için aradığın her şey burada!",
                            style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),


                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login2(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding:
                      EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "HOŞ GELDİNİZ",
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            (Icons.arrow_forward_ios),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
