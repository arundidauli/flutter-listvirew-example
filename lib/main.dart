import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_example/listview_activity.dart';
import 'package:listview_example/dailog_with_testfield.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  Scaffold(
          body:  const ListViewActivity(title: 'EmailPageList'),
        floatingActionButton: FloatingActionButton(
          child:  const Icon(Icons.edit),
          backgroundColor: Colors.green, onPressed: () {
          _displayTextInputDialog(context);

        },
        ),

      ),

    );

  }
}

Future<void> _displayTextInputDialog(BuildContext context) async {
  TextEditingController _textFieldController = TextEditingController();
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('TextField in Dialog'),
        content: TextField(
          controller: _textFieldController,
          decoration: InputDecoration(hintText: "Text Field in Dialog"),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('CANCEL'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              print(_textFieldController.text);
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}


