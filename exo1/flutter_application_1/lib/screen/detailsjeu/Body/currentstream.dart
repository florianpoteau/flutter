import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/video.dart';

class CurrentStream extends StatelessWidget {
  final Stream stream;

  const CurrentStream({
    required this.stream,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 25),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(
                stream.thumbnail_url,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              SizedBox(width: 8), // Espacement entre l'image et le titre
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        stream.title,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 4, 4),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Text(stream.description),
                    SizedBox(height: 4), // Espacement entre le titre et l'icône
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.75,
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                        ),
                        Text(" ${stream.viewersCount} viewers"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
