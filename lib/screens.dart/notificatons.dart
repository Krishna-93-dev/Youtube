import 'package:flutter/material.dart';
import 'package:flutter_application_krushnesh/color/app_color.dart';


// class Notifications extends StatefulWidget {
//   const Notifications({super.key});

//   @override
//   State<Notifications> createState() => _NotificationsState();
// }


class Notificatons extends StatelessWidget {
  const Notificatons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       leading: IconButton(onPressed: () {
        Navigator.pop(context);
       } , icon:  Icon(Icons.arrow_back_ios_new ,color:AppColor.primarycolor,)),


        title: Text("Notifications screen"),
      ),
    );
  }
}
