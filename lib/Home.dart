// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member



import 'package:bookhub/tabs/Fiction.dart';
import 'package:bookhub/tabs/Historical.dart';
import 'package:bookhub/tabs/Mystery.dart';

import 'package:bookhub/tabs/Romantic.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Books", style: TextStyle()),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(text: 'Romantic'),
              Tab(text: 'Historical'),
              Tab(text: 'Mystery'),
              Tab(text: 'Education'),
            ]),
            actions: [
              IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
                icon: const Icon(Icons.search),
              )
            ],
          ),
          body: TabBarView(
            children: [ Romantic(), Historical(), Mystery(), Fiction()],
          )),
    );
  }
}


class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms=[
    'She Who Became Sun',
    'Children Of Jocasta',
    "People's Tragedy",
    "The First Total War",
    "Rich dad Poor Dad",
    "Brief History of time",
    "Guide for Python 3",
    "Five Love Language",
    "Then She Was Gone",
    "NoteBook",
    "The Silent Patient",
    "Pride And PreJudge",
    "How we learn",
    "The Big Sleep",
    "Gone Girl",

  ];


@override
List <Widget> buildActions(BuildContext context){
  return [
    IconButton(icon: const Icon(Icons.clear),
    onPressed: (){
      query = '';
    },
    ),
  ];
}

@override
Widget buildLeading(BuildContext context){
  return IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: (){
      close(context, null);
    },
  );
}
 
@override 
Widget buildResults(BuildContext context){
List<String> matchQuery =[];
for(var book in searchTerms){
  if(book.toLowerCase().contains(query.toLowerCase())){
    matchQuery.add(book);
  }
}
return ListView.builder(
  itemCount: matchQuery.length,
  itemBuilder: (context, index){
    var result = matchQuery[index];
    return ListTile(
      title: Text(result),
    );
  }
  
  );

}


  @override
  Widget buildSuggestions(BuildContext context) {
    
   List<String> matchQuery = [];
  for(var book in searchTerms){
    if(book.toLowerCase().contains(query.toLowerCase())){
      matchQuery.add(book);
    }
  }
  return ListView.builder(
    itemCount: matchQuery.length,
    itemBuilder: (context, index){
      var result =  matchQuery[index];
      return ListTile(
        
        title: Text(result),
        onTap: (){
         
        
        },
      );
    },
  );
  }
}


