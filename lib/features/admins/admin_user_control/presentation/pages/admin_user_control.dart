import 'package:flutter/material.dart';

class AdminUserControl extends StatelessWidget {
  const AdminUserControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Admin User Control"),
      ),
      body: Center(
        child: Text("Admin User Control"),
      ),
    );
  }
}
