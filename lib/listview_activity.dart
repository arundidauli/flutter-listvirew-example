import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_example/email_data.dart';

import 'package:listview_example/listview_title.dart';

class ListViewActivity extends StatelessWidget {
  const ListViewActivity({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: allEmail.length,
        itemBuilder: (BuildContext context, int index) {
          EmailData data = allEmail[index];
          return Card(
            elevation: 5.0,
            child: EmailListTile(data),
          );
        });
  }
}