import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

const String image1 = 'assets/photos/romantic/FiveLanguage.jpg';
const String title1 = 'Five Love Language';
const String subtitle1 = 'Author: Gary Champman';

const String image2 = 'assets/photos/romantic/thenshewasgone.jpg';
const String title2 = 'Then She Was Gone';
const String subtitle2 = 'Author: Lisa Jewell';

const String image3 = 'assets/photos/romantic/notebook.jpg';
const String title3 = 'NoteBook';
const String subtitle3 = 'Author: Nicolas Sparks';

const String image4 = 'assets/photos/romantic/silentpatient.jpg';
const String title4 = 'The Silent Patient';
const String subtitle4 = 'Author: Alex Michaelides';

const String image5 = 'assets/photos/romantic/prideandprejudice.jpg';
const String title5 = 'Pride And PreJudice';
const String subtitle5 = 'Author: Jane Austen';

class Romantic extends StatefulWidget {
  const Romantic({Key? key}) : super(key: key);

  @override
  State<Romantic> createState() => _RomanticState();
}

class _RomanticState extends State<Romantic> {
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
              MaterialPageRoute(builder: (context) => const Details2()),
            );
          },
        ),
        InkWell(
          child: ReadyBox(image3, title3, subtitle3),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Details3()),
            );
          },
        ),
        InkWell(
          child: ReadyBox(image4, title4, subtitle4),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Details4()),
            );
          },
        ),
        InkWell(
          child: ReadyBox(image5, title5, subtitle5),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Details5()),
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
}

class FiveLanguageLove extends StatelessWidget {
  const FiveLanguageLove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/romantic/FiveLanguageLove.pdf'),
    );
  }
}

class Historyoftime extends StatelessWidget {
  const Historyoftime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/romantic/thenshewasgone.pdf'),
    );
  }
}

class NoteBook extends StatelessWidget {
  const NoteBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/romantic/notebook.pdf'),
    );
  }
}

class silentpatient extends StatelessWidget {
  const silentpatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/romantic/silentpatient.pdf'),
    );
  }
}

class prideandprejudice extends StatelessWidget {
  const prideandprejudice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/romantic/prideandprejudice.pdf'),
    );
  }
}

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
                            builder: (context) => const FiveLanguageLove()),
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
                      Icon(Icons.star, color: Colors.pink,),
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
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          ),
          Divider(
            height: 1,
            thickness: 4,
          ),
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
                    "The Five Love Languages: How to Express Heartfelt Commitment to Your Mate is a 1992 book by Gary Chapman. It outlines five general ways that romantic partners express and experience love, which Chapman calls love languages. The five love languages are five different ways of expressing and receiving love: words of affirmation, quality time, receiving gifts, acts of service, and physical touch. Not everyone communicates love in the same way, and likewise, people have different ways they prefer to receive love")
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
  int likes = 678;
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
                            builder: (context) => const Historyoftime()),
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
                       Icon(Icons.star_border),
                      Icon(Icons.star_border),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
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
                    "She was fifteen, her mother's golden girl. She had her whole life ahead of her. And then, in the blink of an eye, Ellie was gone. NOW It’s been ten years since Ellie disappeared, but Laurel has never given up hope of finding her daughter. And then one day a charming and charismatic stranger called Floyd walks into a café and sweeps Laurel off her feet. Before too long she’s staying the night at this house and being introduced to his nine year old daughter. Poppy is precocious and pretty - and meeting her completely takes Laurel's breath away. Because Poppy is the spitting image of Ellie when she was that age. And now all those unanswered questions that have haunted Laurel come flooding back.")
              ],
            ),
          )
        ],
      ),
    );
  }
}
class Details3 extends StatefulWidget {
  const Details3({ Key? key }) : super(key: key);

  @override
  State<Details3> createState() => _Details3State();
}

class _Details3State extends State<Details3> {
  int likes = 2390;
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
                            builder: (context) => const NoteBook()),
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
                       Icon(Icons.star_border),
                      Icon(Icons.star_border),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
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
                    "The Notebook is a 1996 romantic novel by American novelist Nicholas Sparks. The novel was later adapted into a popular 2004 film of the same name.Nicholas Sparks is one of the world’s most beloved storytellers. All of his books have been New York Times bestsellers, with over 105 million copies sold worldwide, in more than 50 languages, including over 75 million copies in the United States alone.")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Details4 extends StatefulWidget {
  const Details4({ Key? key }) : super(key: key);

  @override
  State<Details4> createState() => _Details4State();
}

class _Details4State extends State<Details4> {
  int likes =  876;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 200, 200),
        body: discription_Templete(image4, title4, subtitle4));
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
                            builder: (context) => const silentpatient()),
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
                       Icon(Icons.star_border),
                      Icon(Icons.star_border),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
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
                    "The Silent Patient is a 2019 psychological thriller novel written by British–Cypriot author Alex Michaelides. The debut novel was published by Celadon Books, a division of Macmillan Publishers, on 5 February 2019. The audiobook version, released on the same date, is read by Louise Brealey and Jack Hawkins. ")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Details5 extends StatefulWidget {
  const Details5({ Key? key }) : super(key: key);

  @override
  State<Details5> createState() => _Details5State();
}

class _Details5State extends State<Details5> {
  int likes = 9877;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 200, 200),
        body: discription_Templete(image5, title5, subtitle5));
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
                            builder: (context) => const prideandprejudice()),
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
                       Icon(Icons.star_border),
                      Icon(Icons.star_border),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
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
                    "Pride and Prejudice is set in rural England at the turn of the 19th century, and it follows the Bennet family, which includes five very different sisters. The eldest, Jane, is sweet-tempered and modest. She is her sister Elizabeth’s confidant and friend. Elizabeth, the heroine of the novel, is intelligent and high-spirited. She shares her father’s distaste for the conventional views of society as to the importance of wealth and rank. The third daughter, Mary, is plain, bookish, and pompous, while Lydia and Kitty, the two youngest, are flighty and immature.")
              ],
            ),
          )
        ],
      ),
    );
  }
}
