// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

//import 'package:bookhub/tabs/Historical.dart';

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
  final String image1 = 'assets/photos/fiction/richdadpoordad.jpg';
  final String title1 = 'Rich Dad Poor Dad';
  final String subtitle1 = 'Author: Gary Champman';

  final String image2 = 'assets/photos/fiction/historyoftime.jpg';
  final String title2 = 'Brief History of time';
  final String subtitle2 = 'Author: Stephen Hawking';

  final String image3 = 'assets/photos/fiction/python.jpg';
  final String title3 = 'Guide for Python 3';
  final String subtitle3 = 'Author :  Matt Harison';

  final String image4 = 'assets/photos/fiction/welearn.jpg';
  final String title4 = 'How we Learn';
  final String subtitle4 = "Author: Benedict Carey";

class Fiction extends StatefulWidget {
  const Fiction({Key? key}) : super(key: key);

  @override
  State<Fiction> createState() => _FictionState();
}

class _FictionState extends State<Fiction> {
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

class richdadpoordad extends StatelessWidget {
  const richdadpoordad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/fiction/richdadpoordad.pdf'),
    );
  }
}

class Historyoftime extends StatelessWidget {
  const Historyoftime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/fiction/historyoftime.pdf'),
    );
  }
}

class python extends StatelessWidget {
  const python({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/fiction/python.pdf'),
    );
  }
}
class welearn extends StatelessWidget {
  const welearn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.asset('assets/books/fiction/howelearn.pdf'),
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
                            builder: (context) => const richdadpoordad()),
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
                    "Rich Dad Poor Dad is about Robert Kiyosaki and his two dads—his real father (poor dad) and the "
                    "father of his best friend (rich dad)—and the ways in which both men shaped his thoughts about"
                    " money and investing. You don’t need to earn a high income to be rich. Rich people make money "
                    "work for them. Rich Dad Poor Dad PDF is one of the best book on financial guidance written by "
                    "Robert Kiyosaki. In this book, Kiyosaki explained the best ways of personal finance through his"
                    "two dads—his real father (poor dad) and his best friend’s father (rich dad). Robert Kiyosaki told "
                    "about the ways in which both men shaped his thoughts about money and investing.")
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Second Book ............................

class Details1 extends StatefulWidget {
  const Details1({ Key? key }) : super(key: key);

  @override
  State<Details1> createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  int likes = 973;
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
                    "A Brief History of Time: From the Big Bang to Black Holes is a book on theoretical cosmology "
                    "by English physicist Stephen Hawking. It was first published in 1988. Hawking wrote the book"
                    " for readers who had no prior knowledge of physics and people who are interested in learning "
                    "something new about interesting subjects.")
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
   int likes = 973;
  
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
                            builder: (context) => const python()),
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
                    "Introducing Your Guide to Learning PythonIllustrated Guide to Learning Python is designed "
                    "to bring developers and others who are anxious to learn Python up to speed quickly. Not only "
                    "does it teach the basics of syntax, but it condenses years of experience. You will learn "
                    "warts, gotchas, best practices and hints that have been gleaned through the years in days. "
                    "You will hit the ground running and running in the right way.Learn Python QuicklyPython is"
                    " an incredible language. It is powerful and applicable in many areas. It is used for automation"
                    " of simple or complex tasks, numerical processing, web development, interactive games and more."
                    "Whether you are a programmer coming to Python from another language, managing Python programmers"
                    "or wanting to learn to program, it makes sense to cut to the chase and learn Python the right way."
                    " You could scour blogs, websites and much longer tomes if you have time. ")
              ],
            ),
          )
        ],
      ),
    );
  }
}

//   Details for Fourth book...........................
//   ..................................................

class Details3 extends StatefulWidget {
  const Details3({ Key? key }) : super(key: key);

  @override
  State<Details3> createState() => _Details3State();
}

class _Details3State extends State<Details3> {
  int likes = 973;
  
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
                            builder: (context) => const python()),
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
                    "Benedict Carey is an award-winning science reporter who has been at The New York Times"
                    " since 2004, and one of the newspaper’s most emailed reporters. He graduated from the "
                    "University of Colorado with a bachelor’s degree in math and from Northwestern University"
                    " with a master’s in journalism, and has written about health and science for twenty-five"
                    " years. He lives in New York City. "
                    )
              ],
            ),
          )
        ],
      ),
    );
  }
}
