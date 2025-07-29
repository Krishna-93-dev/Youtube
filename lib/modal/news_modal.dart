import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsScreen(),
    );
  }
}

// ----------------- MODEL CLASSES -----------------
class NewsArticle {
  final String title;
  final String author;
  final String source;
  final String description;
  final String url;
  final String imageUrl;
  final DateTime publishedAt;

  NewsArticle({
    required this.title,
    required this.author,
    required this.source,
    required this.description,
    required this.url,
    required this.imageUrl,
    required this.publishedAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? 'No Title',
      author: json['author'] ?? 'Unknown',
      source: json['source']?['name'] ?? 'Unknown',
      description: json['description'] ?? 'No Description',
      url: json['url'] ?? '',
      imageUrl: json['urlToImage'] ?? '',
      publishedAt: DateTime.tryParse(json['publishedAt'] ?? '') ?? DateTime.now(),
    );
  }
}

class NewsModule {
  final String status;
  final int totalResults;
  final List<NewsArticle> articles;

  NewsModule({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsModule.fromJson(Map<String, dynamic> json) {
    return NewsModule(
      status: json['status'] ?? '',
      totalResults: json['totalResults'] ?? 0,
      articles: (json['articles'] as List)
          .map((item) => NewsArticle.fromJson(item))
          .toList(),
    );
  }
}

// ----------------- SERVICE -----------------
class NewsService {
  final String apiUrl =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=93eca693e74f4e668aca032f44be95bd'; // Replace with your API URL

  Future<NewsModule> fetchNews() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return NewsModule.fromJson(data);
    } else {
      throw Exception('Failed to load news');
    }
  }
}

// ----------------- UI -----------------
class NewsScreen extends StatelessWidget {
  final NewsService newsService = NewsService();

  NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latest News")),
      body: FutureBuilder<NewsModule>(
        future: newsService.fetchNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.articles.isEmpty) {
            return const Center(child: Text('No news found.'));
          }

          final articles = snapshot.data!.articles;

          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return Card(
                margin: const EdgeInsets.all(8),
                elevation: 4,
                child: ListTile(
                  leading: article.imageUrl.isNotEmpty
                      ? Image.network(article.imageUrl,
                          width: 60, height: 60, fit: BoxFit.cover)
                      : const Icon(Icons.image_not_supported, size: 40),
                  title: Text(article.title, maxLines: 2, overflow: TextOverflow.ellipsis),
                  subtitle: Text(article.source),
                  onTap: () {
                    // Open article URL
                    print('Open article: ${article.url}');
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
