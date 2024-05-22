import 'package:flutter/material.dart';
import 'package:newsus/constants/text_style_constant.dart';
import 'package:newsus/helpers/db_helper.dart';
import 'package:newsus/models/get_news_us_response_model.dart';
import 'package:newsus/widgets/custom_bookmark_widget.dart';
import 'package:newsus/widgets/news_list_widget.dart';
import 'package:provider/provider.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<CustomBookmarkProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookmarks',
          style: TextStyleConstant.headlineMedium(context),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary,
      ),
      body: FutureBuilder<List<Article>>(
        future: DBHelper().getBookmarks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No bookmarks'),
            );
          } else {
            final article = snapshot.data;
            return Padding(
                  padding: const EdgeInsets.fromLTRB(
                    16,
                    16,
                    16,
                    0,
                  ),
                  child: NewsListWidget(
                    articles: article,
                  ),
                );
          }
        },
      ),
    );
  }
}
