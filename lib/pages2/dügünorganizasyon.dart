import 'package:flutter/material.dart';
class Dugunorg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Düğün Mekanları'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          MyInkWell(imageUrl: 'assets/images/3.jpg', page: DugunMekanlariPage()),
          MyInkWell(imageUrl: 'assets/images/4.jpg', page: DugunMuzikPage()),
        ],
      ),
    );
  }
}

class DugunMekanlariPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Düğün Mekanları'),
      ),
      body: Center(
        child: Text('Düğün Mekanları Sayfası'),
      ),
    );
  }
}

class DugunMuzikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Düğün Müzikleri'),
      ),
      body: Center(
        child: Text('Düğün Müzikleri Sayfası'),
      ),
    );
  }
}

class MyInkWell extends StatelessWidget {
  final String imageUrl;
  final StatelessWidget page;

  const MyInkWell({Key? key, required this.imageUrl, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            page is DugunMekanlariPage ? "Düğün Mekanları" : "Düğün Müzikleri",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
