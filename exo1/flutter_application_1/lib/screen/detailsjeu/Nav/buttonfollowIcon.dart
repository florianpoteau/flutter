import 'package:flutter/material.dart';

class ButtonfollowIcon extends StatelessWidget {
  const ButtonfollowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Following"),
                )),
            Transform.scale(
              scale: 1.5,
              child: Icon(
                  color: Color.fromARGB(255, 71, 146, 196), Icons.more_vert),
            )
          ],
        ));
  }
}
