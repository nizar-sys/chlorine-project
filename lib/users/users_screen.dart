import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) => ListTile(
        leading: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          child: Text(
            (index + 1).toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        title: Text((['Jane Foster', 'Tony Stark', 'Peter Parker'].toList()
              ..shuffle())
            .first),
      ),
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
