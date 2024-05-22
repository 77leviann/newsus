import 'package:flutter/material.dart';
import 'package:newsus/constants/text_style_constant.dart';
import 'package:newsus/models/get_news_us_response_model.dart';
import 'package:newsus/widgets/news_list_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final Article article;

  const DetailScreen({
    super.key,
    required this.article,
  });

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  Future<void> _launchURL(BuildContext context, String? url) async {
    if (url != null && url.isNotEmpty) {
      var uri = Uri.parse(url.toLowerCase());
      try {
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.inAppWebView);
        } else {
          throw 'Could not launch $uri';
        }
      } catch (e) {
        SnackBar(
          content: Text('Error launching URL: $e'),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final article = widget.article;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail News',
          style: TextStyleConstant.headlineMedium(context),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: NewsImageWidget(urlToImage: article.urlToImage),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsTitleWidget(
                    title: article.title,
                    maxLines: 10,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  NewsDescriptionWidget(
                    description: article.description,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  NewsContentWidget(
                    content: article.content,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  NewsAuthorWidget(
                    author: article.author,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  NewsPublishedDateWidget(
                    publishedAt: article.publishedAt,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _launchURL(context, article.url);
                      },
                      child: const Text('Read More'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
