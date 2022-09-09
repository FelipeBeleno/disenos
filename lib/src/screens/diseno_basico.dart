import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/paisaje.jpg'),
          ),
          FirstColumn(size: size),
          SecondColumn(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Amet eiusmod ad aliqua in nostrud.Mollit dolore in non non irure ad nulla incididunt quis. Exercitation dolore nisi deserunt est aliqua non cupidatat anim. Elit incididunt exercitation ex laboris nulla proident officia enim. Elit minim non ea cupidatat sit officia. Aute non incididunt reprehenderit adipisicing culpa veniam veniam.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class SecondColumn extends StatelessWidget {
  const SecondColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        Column(
          children: [
            Icon(
              Icons.call,
              color: Colors.blue[400],
              size: 50,
            ),
            SizedBox(height: 10),
            Text(
              'Call',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue[400]),
            )
          ],
        ),
        Expanded(child: Container()),
        Column(
          children: [
            Icon(
              Icons.navigation_rounded,
              color: Colors.blue[400],
              size: 50,
            ),
            SizedBox(height: 10),
            Text(
              'Navigate',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue[400]),
            )
          ],
        ),
        Expanded(child: Container()),
        Column(
          children: [
            Icon(
              Icons.share,
              color: Colors.blue[400],
              size: 50,
            ),
            SizedBox(height: 10),
            Text(
              'Shared',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue[400]),
            )
          ],
        ),
        Expanded(child: Container()),
      ],
    );
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Oeschinen Lake Campground',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  'Kandersteg, Switzerland',
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.star, color: Colors.red[700], size: 30),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "41",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              )
            ],
          )
        ],
      ),
    );
  }
}
