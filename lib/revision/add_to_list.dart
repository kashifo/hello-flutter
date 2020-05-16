import 'package:flutter/material.dart';

class AddToList extends StatefulWidget {
  @override
  _AddToListState createState() => _AddToListState();
}

class _AddToListState extends State<AddToList> {
  List<String> itemList = [
    "Kashif",
    "Fathima",
    "Arshad",
    "Rayeesa",
    "Ruhma",
  ];
  final nameHolder = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add to list',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: ListView.separated(
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(itemList[i]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          itemList.removeAt(i);
                        });
                      },
                    ),
                  );
                },
                separatorBuilder: (context, i) {
                  return Divider();
                },
                itemCount: itemList.length),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter text here'),
                  controller: nameHolder,
                  onSubmitted: (str) {
                    print('submitted $str');
                    setState(() {
                      itemList.add(str);
                    });
                    nameHolder.clear();
                  }),
            ),
          )
        ],
      ),
    );
  }
} //state
