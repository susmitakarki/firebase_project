import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {


  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl6_6R5zqvVQh7oHiQgLFgax7pbFwHgFMdcMkI6LldlFY5bD7p8qlRH8B7pNuK2safgLU&usqp=CAU";
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Flutter Layout Demo",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.network(
                imageUrl,

              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(

                    children: [
                      Text(
                        "Tourism in Nepal",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        "Kathmandu, Nepal",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.amber,
                  ),
                  Text(
                    "4.0",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call,
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.send),
                  SizedBox(width: 10,),
                  Icon(Icons.share),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                "Nepal with rich ancient cultures set against the most dramatic "
                    "scenery in the world is a land of discovery and unique experience. "
                    "For broad minded individuals who value an experience that is authentic "
                    "and mesmerizing, Nepal is the ideal destination. Come and revel in the untouched "
                    "and the undiscovered and uncover yourself.",

              ),
            ],
          ),
        ),
      ),
    );
  }
}