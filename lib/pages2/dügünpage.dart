import 'package:flutter/material.dart';

class DugunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dügün'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          MyInkWell(imageUrl: 'assets/images/1.jpg'),
          MyInkWell(imageUrl: 'assets/images/2.jpg'),
          MyInkWell(imageUrl: 'assets/images/3.jpg'),
          MyInkWell(imageUrl: 'assets/images/4.jpg'),
        ],
      ),
    );
  }
}

class MyInkWell extends StatelessWidget {
  final String imageUrl;

  const MyInkWell({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Resme tıklandı: $imageUrl');
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            imageUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
