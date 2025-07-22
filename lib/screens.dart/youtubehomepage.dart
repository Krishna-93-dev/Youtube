import 'package:flutter/material.dart';
import 'package:flutter_application_krushnesh/color/app_color.dart';
import 'package:flutter_application_krushnesh/screens.dart/notificatons.dart';
import 'package:flutter_application_krushnesh/screens.dart/youtubeplayvideo.dart';

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 52, 50, 50),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png",
          ),
        ),
        title: const Text(
          "YouTube",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: AppColor.secondarycolor,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Notificatons(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),

              const Icon(Icons.search, size: 30, color: Colors.white),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Youtubeplayvideo(),
                  ),
                );
              },
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    height: 250,
                    width: double.infinity,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1511379938547-c1f69419868d?w=600&auto=format&fit=crop&q=60",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://plus.unsplash.com/premium_photo-1677589330352-509c3d18f3a0?w=600&auto=format&fit=crop&q=60",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Music Round & songs ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Lofi Remix and more #music",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "songs · 1.2M views",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                  child: Image.network(
                    "https://img.pikbest.com/origin/09/21/29/70epIkbEsTFJf.png!sw800",
                  ),
                ),
                const Text(
                  "Shorts ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.more_vert, color: Colors.white),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  for (String imageUrl in [
                    "https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?w=600&auto=format&fit=crop&q=60",
                    "https://plus.unsplash.com/premium_photo-1681503973674-ca910d68dbff?q=80&w=687&auto=format&fit=crop",
                    "https://plus.unsplash.com/premium_photo-1682920140924-d8b5db318d97?w=600&auto=format&fit=crop&q=60",
                  ])
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 300,
                      width: 185,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade300),
              height: 250,
              width: double.infinity,
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1661288471041-9db53d75dfe4?q=80&w=1170&auto=format&fit=crop",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1528543606781-2f6e6857f318?w=500&auto=format&fit=crop",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Songs with best music",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "songs and piece",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
