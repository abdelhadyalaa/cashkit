import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEFEFEF),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            trailing: Text("5:28 pm"),
            tileColor: Colors.white,
            contentPadding: EdgeInsets.all(16),
            leading: Image.network(
                "https://img.freepik.com/free-vector/notification-bell_78370-542.jpg?t=st=1712071127~exp=1712074727~hmac=9710e3cc5a603a689fba6c9da3f7d2d9c89bf866fa005a372b47dce596fd4f6b&w=740",
                width: 28,
                height: 28,
                fit: BoxFit.fill),
            title: Text(
              "Balance notification",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            subtitle: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "Congratulations! You’re back in positive balance (EGP 3000). You can breathe a bit easier for a while."),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
