import 'package:flutter/material.dart';
import 'package:flutter_application_krushnesh/color/app_color.dart';

class Youtubeplayvideo extends StatefulWidget {
  const Youtubeplayvideo({super.key});

  @override
  State<Youtubeplayvideo> createState() => _YoutubeplayvideoState();
}

class _YoutubeplayvideoState extends State<Youtubeplayvideo> {
  bool ifliked = false;
  bool unliked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondarycolor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Like Button
            IconButton(
              icon: Icon(
                ifliked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                size: 40,
                color: ifliked
                    ? Colors.white
                    : const Color.fromARGB(255, 227, 28, 28),
              ),
              onPressed: () {
                setState(() {
                  ifliked = !ifliked;
                  if (ifliked && unliked) {
                    unliked = false;
                  }
                });
              },
            ),
            const SizedBox(width: 20),
            // Dislike Button
            IconButton(
              icon: Icon(
                unliked ? Icons.thumb_down : Icons.thumb_down_alt_outlined,
                size: 40,
                color: unliked
                    ? Colors.white
                    : const Color.fromARGB(255, 203, 28, 28),
              ),
              onPressed: () {
                setState(() {
                  unliked = !unliked;
                  if (unliked && ifliked) {
                    ifliked = false;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
