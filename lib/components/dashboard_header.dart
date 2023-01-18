import 'package:flutter/material.dart';

class DashBoardHeader extends StatelessWidget {
  const DashBoardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage("assets/caffee.jpeg"),
          width: 400,
          height: 270,
        ),
        Positioned(
          top: 130,
          left: 15,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('San Francisco, CA',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Good afternoon.",
                      style: TextStyle(fontSize: 28, color: Colors.white)),
                  Text("Take a break from work.",
                      style: TextStyle(fontSize: 28, color: Colors.white))
                ],

              ),
            ],
          ),
        ),
      ],
    );
  }
}
