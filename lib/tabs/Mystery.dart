//import 'package:bookhub/tabs/Historical.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

const String image1 = 'assets/photos/mystery/thebigsleep.jpg';
final String title1 = 'The Big Sleep';
final String subtitle1 = 'Author: Raymond Chander';

final String image2 = 'assets/photos/mystery/gonegirl.jpg';
final String title2 = 'Gone Girl';
final String subtitle2 = 'Author:  Gillian Flynn';

final String image3 = 'assets/photos/mystery/coldblood.jpg';
final String title3 = 'In Cold Blood';
final String subtitle3 = 'Auther: Truman Capote';

class Mystery extends StatefulWidget {
  const Mystery({Key? key}) : super(key: key);

  @override
  State<Mystery> createState() => _MysteryState();
}

class _MysteryState extends State<Mystery> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          child: ReadyBox(image1, title1, subtitle1),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Details()),
            );
          },
        ),
        InkWell(
          child: ReadyBox(image2, title2, subtitle2),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const details1()),
            );
          },
        ),
        InkWell(
          child: ReadyBox(image3, title3, subtitle3),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Details2()),
            );
          },
        ),
      ],
    );
  }

  ReadyBox(image, title, subtitle) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        child: Container(
          height: 120,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 198, 195, 195),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                  height: 100,
                  width: 60,
                  child: Image(
                    image: AssetImage('$image'),
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  Text(subtitle),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  details(image, title) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset('$image1'),
        Text('$title1'),
      ],
    ));
  }
}

class thebigsleep extends StatelessWidget {
  const thebigsleep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/mystery/thebigsleep.pdf'),
    );
  }
}

class gonegirl extends StatelessWidget {
  const gonegirl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/mystery/gonegirl.pdf'),
    );
  }
}

class coldblood extends StatelessWidget {
  const coldblood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/mystery/coldblood.pdf'),
    );
  }
}

///  Discription page for the first book.....................
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int likes = 234;
  String color = 'gray';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 200, 200),
        body: discription_Templete(image1, title1, subtitle1));
  }

  discription_Templete(image, title, subtitle) {
    return Container(
      child: Column(
        
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            '$title',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 300,
                width: 250,
                child: Image.asset(image),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 175,
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color.fromARGB(255, 233, 229, 229),
                        border: (Border.all(
                            width: 2.0,
                            color: Color.fromARGB(255, 92, 96, 221))),
                      ),
                      child: Center(
                          child: Text(
                        "Read Book",
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const thebigsleep()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink,),
                      Icon(Icons.star_border),
                    ],
                  )
                ],
              )
            ],
          ),
          Divider(
            height: 1,
            thickness: 4,
          ),
          Row(
            children: [
              SizedBox(width: 1),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 25,
                ),
                onPressed: () {
                  setState(() {
                    likes++;
                  });
                },
              ),
              Text(
                "$likes ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Likes",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 22,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              Text(
                "Comments",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.share))
            ],
          ),
          Divider(height: 1, thickness: 4),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Discription :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    )),
                Text(
                    "Private investigator Philip Marlowe (Humphrey Bogart) is hired by General Sternwood to help resolve the gambling debts of his wild young daughter, Carmen (Martha Vickers). Sternwood's older daughter, Vivian (Lauren Bacall), provides assistance when she implies that the situation is more complex, and also involves casino owner (John Ridgely) and a recently disappeared family friend. As people linked to the Sternwoods start being murdered, Marlowe finds himself getting ever deeper into the case.")
              ],
            ),
          )
        ],
      ),
    );
  }
}

//Discription for the second book...........................
class details1 extends StatefulWidget {
  const details1({Key? key}) : super(key: key);

  @override
  State<details1> createState() => _details1State();
}

class _details1State extends State<details1> {
  int likes = 234;
  String color = 'gray';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 200, 200),
        body: discription_Templete(image2, title2, subtitle2));
  }

  discription_Templete(image, title, subtitle) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            '$title',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 300,
                width: 250,
                child: Image.asset(image),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 175,
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color.fromARGB(255, 233, 229, 229),
                        border: (Border.all(
                            width: 2.0,
                            color: Color.fromARGB(255, 92, 96, 221))),
                      ),
                      child: Center(
                          child: Text(
                        "Read Book",
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const gonegirl()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink,),
                      Icon(Icons.star_border),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            thickness: 5,
          ),
          Row(
            children: [
              SizedBox(width: 1),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 25,
                ),
                onPressed: () {
                  setState(() {
                    likes++;
                  });
                },
              ),
              Text(
                "$likes ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Likes",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              
              SizedBox(
                width: 22,
              ),   
             IconButton(onPressed: () {}, icon: Icon(Icons.message)),
             Text(
                "Comments",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          ),
          Divider(height: 1, thickness: 4,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Discription :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    )),
                Text(
                    "Gone Girl is a 2012 crime thriller novel by American writer Gillian Flynn. It was published by Crown Publishing Group in June 2012. The novel became popular and made the New York Times Best Seller list.")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Details2 extends StatefulWidget {
  const Details2({ Key? key }) : super(key: key);

  @override
  State<Details2> createState() => _Details2State();
}

class _Details2State extends State<Details2> {
  int likes = 234;
  String color = 'gray';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 200, 200),
        body: discription_Templete(image3, title3, subtitle3));
  }
  discription_Templete(image, title, subtitle) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            '$title',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 300,
                width: 250,
                child: Image.asset(image),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 175,
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color.fromARGB(255, 233, 229, 229),
                        border: (Border.all(
                            width: 2.0,
                            color: Color.fromARGB(255, 92, 96, 221))),
                      ),
                      child: Center(
                          child: Text(
                        "Read Book",
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const coldblood()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink,),
                      Icon(Icons.star_border),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 1,
            thickness: 5,
          ),
          Row(
            children: [
              SizedBox(width: 1),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 25,
                ),
                onPressed: () {
                  setState(() {
                    likes++;
                  });
                },
              ),
              Text(
                "$likes ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Likes",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 22,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              Text(
                "Comments",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          ),
           Divider(height: 1, thickness: 4,),
           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Discription :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    )),
                Text(
                    "On November 15, 1959, in the small town of Holcomb, Kansas, four members of the Clutter family were savagely murdered by blasts from a shotgun held a few inches from their faces. There was no apparent motive for the crime, and there were almost no clues. In one of the first non-fiction novels ever written, Truman Capote reconstructs the murder and the investigation that led to the capture, trial, and execution of the killers, generating both mesmerizing suspense and astonishing empathy. In Cold Blood is a work that transcends its moment, yielding poignant insights into the nature of American violence.")
              ],
            ),
          )
        ],
      ),
    );
}
}
