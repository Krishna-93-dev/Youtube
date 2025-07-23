import 'package:flutter/material.dart';

class Notificatons extends StatefulWidget {
  const Notificatons({super.key});

  @override
  State<Notificatons> createState() => _NotificatonsState();
}

class _NotificatonsState extends State<Notificatons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("notifications")));
  }
}
