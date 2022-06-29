
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
  final String image1 = 'assets/photos/historical/shewhobecamethesun.jpg';
  final String title1 = "She Who Became Sun";
  final String subtitle1 = 'Author: Shelley Parker-Chan';

  final String image2 = 'assets/photos/historical/children.jpg';
  final String title2 = 'Children Of Jocasta';
  final String subtitle2 = 'Author: Natalie Haynes';

  final String image3 = 'assets/photos/historical/xyz.jpeg';
  final String title3 = "people's tragedy";
  final String subtitle3 = 'Author: Andrew Marr';

  final String image4 = 'assets/photos/historical/firstwar.jpg';
  final String title4 = 'The Fist Total War';
  final String subtitle4 = 'Author: David A. Bell';

class Historical extends StatefulWidget {
  const Historical({Key? key}) : super(key: key);

  @override
  State<Historical> createState() => _HistoricalState();
}

class _HistoricalState extends State<Historical> {
 @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          child: ReadyBox(image1, title1, subtitle1),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Details()),
            );
          },
        ),
        InkWell(
          child: ReadyBox(image2, title2, subtitle2),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Details1()),
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
        InkWell(
          child: ReadyBox(image4, title4, subtitle4),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Details3()),
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

class shewhobecamethesun extends StatelessWidget {
  const shewhobecamethesun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/historical/shewhobecameasun.pdf'),
    );
  }
}

class children extends StatelessWidget {
  const children({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/historical/children.pdf'),
    );
  }
}

class peoplestragedy extends StatelessWidget {
  const peoplestragedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/historical/historyofrussian.pdf'),
    );
  }
}
class totalwar extends StatelessWidget {
  const totalwar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/historical/firsttotalwar.pdf'),
    );
  }
}

class Details extends StatefulWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int likes = 234;
  
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
                            builder: (context) => const shewhobecamethesun()),
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
                    "She Who Became the Sun is a 2021 fantasy novel by Shelley Parker-Chan. Parker-Chan's debut novel, the novels tells a re-imagining of the rise to power of the Hongwu Emperor in the 14th century.")
              ],
            ),
          )
        ],
      ),
    );
  }
}

//*********************************************** */
//************************************************ */
//**************************************************** */

class Details1 extends StatefulWidget {
  const Details1({ Key? key }) : super(key: key);

  @override
  State<Details1> createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  int likes = 3944;
  
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
                            builder: (context) => const children()),
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
                    "Jocasta is just fifteen when she is told that she must marry the King of Thebes, an old man she has never met. Her life has never been her own, and nor will it be, unless she outlives her strange, absent husband.Ismene is the same age when she is attacked in the palace she calls home. Since the day of her parents' tragic deaths a decade earlier, she has always longed to feel safe with the family she still has. But with a single act of violence, all that is about to change. With the turn of these two events, a tragedy is set in motion. But not as you know it. In Children of Jocasta, Natalie Haynes reimagines the Oedipus and Antigone stories from the perspectives of two of the women who have often been overlooked; retelling the myth to reveal a new side of an ancient story.")
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
  int likes = 5433;
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
                            builder: (context) => const peoplestragedy()),
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            
                children: [
                  Text('Discription :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      )),
                  Text(
                      "A People's Tragedy: The Russian Revolution, 1891–1924 is a 1996 book by British historian Orlando Figes on the Russian Revolution and the years leading up to it. It is history on an epic yet human scale. Vast in scope, exhaustive in original research, written with passion, narrative skill, and human sympathy, A People's Tragedy is a profound account of the Russian Revolution for a new generation. Many consider the Russian Revolution to be the most significant event of the twentieth century. Distinguished scholar Orlando Figes presents a panorama of Russian society on the eve of that revolution, and then narrates the story of how these social forces were violently erased. Within the broad stokes of war and revolution are miniature histories of individuals, in which Figes follows the main players' fortunes as they saw their hopes die and their world crash into ruins.  ")
                ],
              ),
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
  int likes =  7654;
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
                      
                color:Color.fromARGB(255, 203, 200, 200) ,
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
                            builder: (context) => const totalwar()),
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
                    "The twentieth century is usually seen as 'the century of total war.' But as the historian David Bell argues in this work, the phenomenon actually began much earlier, in the era of muskets, cannons, and sailing ships - in the age of Napoleon. It was during this time, Bell argues, that our modern attitudes toward war were born. Bell exposes the surprising parallels between Napoleon's day and our own - including the way that ambitious 'wars of liberation,' such as the one in Iraq, can degenerate into gruesome guerilla conflict.'--BOOK JACKET'. ")
              ],
            ),
          )
        ],
      ),
    );
  }
}
