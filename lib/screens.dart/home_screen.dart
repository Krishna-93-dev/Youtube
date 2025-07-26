import 'package:flutter/material.dart';

/// VideoCard Widget
class VideoCard extends StatelessWidget {
  final String thumbnailUrl;
  final String title;
  final String channel;
  final String views;
  final String timeAgo;

  const VideoCard({
    super.key,
    required this.thumbnailUrl,
    required this.title,
    required this.channel,
    required this.views,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            thumbnailUrl,
            width: double.infinity,
            height: screenWidth * 0.55, // Responsive height
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: screenWidth * 0.045,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "$channel • $views • $timeAgo",
          style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.grey),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

/// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Clone'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          VideoCard(
            thumbnailUrl: "https://img.youtube.com/vi/abc123/0.jpg",
            title: "Flutter UI Tutorial",
            channel: "Flutter Dev",
            views: "1.2M views",
            timeAgo: "2 days ago",
          ),
          VideoCard(
            thumbnailUrl: "https://img.youtube.com/vi/xyz789/0.jpg",
            title: "Learn MediaQuery in Flutter",
            channel: "Code Master",
            views: "500k views",
            timeAgo: "1 week ago",
          ),
          VideoCard(
            thumbnailUrl: "https://img.youtube.com/vi/pqr456/0.jpg",
            title: "Dart Crash Course",
            channel: "Tech Guru",
            views: "800k views",
            timeAgo: "3 weeks ago",
          ),
          VideoCard(
            thumbnailUrl: "https://img.youtube.com/vi/lmn987/0.jpg",
            title: "Flutter Animations",
            channel: "Flutter Guide",
            views: "300k views",
            timeAgo: "1 month ago",
          ),
          VideoCard(
            thumbnailUrl: "https://img.youtube.com/vi/uvw654/0.jpg",
            title: "Build YouTube Clone",
            channel: "Code Tutorials",
            views: "900k views",
            timeAgo: "2 months ago",
          ),
        ],
      ),
    );
  }
}
