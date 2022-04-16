import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:listview_example/email_data.dart';

class EmailListTile extends ListTile {
  EmailListTile(EmailData data, {Key? key})
      : super(key: key,
      title: Text(data.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(data.email),
          Text(data.phonenumber)
        ],
      ),
      leading: CircleAvatar(child: Text(data.name[0])),
      dense: false,
      trailing: const Icon(
        Icons.arrow_forward,
        size: 28.0,
        color: Colors.deepPurple,
      ),
      onTap: () {
        Fluttertoast.showToast(
            msg: data.email,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.white,
            fontSize: 14.0);
      });
}