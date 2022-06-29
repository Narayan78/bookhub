// ignore_for_file: prefer_const_constructors

import 'package:email_validator/email_validator.dart';
import 'package:bookhub/Home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;
  final EmailFieldController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    EmailFieldController.addListener(onListen);
  }

  @override
  void dispose() {
    EmailFieldController.removeListener(onListen);
    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfcbca),
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 40),
          Container(
            height: 400,
            width: 600,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 198, 195, 195),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
                  ),
                  const SizedBox(height: 70),
                  Form(
                    key: formKey,
                    child: TextFormField(
                      controller: EmailFieldController,
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? 'Enter a valid Email Address'
                              : null,
                      decoration: InputDecoration(
                          label: Text(" Email"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          prefixIcon: Icon(Icons.email),
                          suffixIcon: IconButton(
                            icon: EmailFieldController.text.isEmpty
                                ? Container(
                                    width: 0,
                                  )
                                : Icon(Icons.close),
                            onPressed: () => EmailFieldController.clear(),
                          )),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    obscureText: isHiddenPassword,
                    decoration: InputDecoration(
                      label: const Text('Password'),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: InkWell(
                        onTap: _showpassword,
                        child: const Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        final form = formKey.currentState!;
                        if (form.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        }
                      },
                      child: Container(
                        height: 42,
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 123, 122, 214),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(children: [
            InkWell(
              child: Container(
                height: 55,
                width: 260,
                child: Image(
                  image: AssetImage('assets/GButton.jpg'),
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                    color: Color(0xff54add6),
                    borderRadius: BorderRadius.circular(10)),
              ),
              onTap: () {

               


              },
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
                child: Container(
              height: 29,
              width: 100,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 198, 195, 195)),
              child: Center(
                  child: Text(
                "Skip",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 20),
              )),
            ),
            onTap: (){
               Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
            },
            )
          ])
        ],
      ),
    );
  }

  void _showpassword() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}








