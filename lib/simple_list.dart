import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  final List<String> friends = [
    "Wahab",
    "Anand",
    "Taj Bhai",
    "Faraz",
    "Shoaib",
    "Soraya",
    "Mohan Raj",
    "Saran",
    "Yassar",
    "Algo",
    "Thariq",
    "Karthik Raja",
    "Ashwin",
    "Deepan",
    "Deva",
    "Gopu",
    "Gowtham Manoharan",
    "Aeijaz",
    "Faizer",
    "Muzammil",
    "Niyaz",
    "Noorullah",
    "Pankaj",
    "S Karthik",
    "Karthik Fizz",
    "Sadiq",
    "Shah Abdullah",
    "Suresh",
    "Gopu",
    "Gowtham Travllr",
    "Manoj Kumar Partner",
    "Faris",
    "Abhay",
    "Anas Magdoom",
    "Arvind",
    "Feroz Hussain",
    "Irfan Ji",
    "Kumar Casperon",
    "Nasara Reddy",
    "Noorudeen",
    "Shah Jahan",
    "Silmi",
    "Rahim",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend List (${friends.length})'),
      ),
      body: _cardList(),
    );
  }

  Widget _cardList() {
    return ListView.builder(
        itemBuilder: (context, i) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 2,
            child: ListTile(
              title: Text(friends[i]),
            ),
          );
        },
        itemCount: friends.length);
  }

  Widget _simpleList() {
    return ListView.separated(
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(friends[i]),
          );
        },
        separatorBuilder: (context, i) {
          return Divider();
        },
        itemCount: friends.length);
  }
}
