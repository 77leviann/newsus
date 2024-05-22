import 'package:flutter/material.dart';
import 'package:newsus/constants/text_style_constant.dart';
import 'package:newsus/helpers/db_helper.dart';
import 'package:newsus/models/get_news_us_response_model.dart';
import 'package:newsus/widgets/news_list_widget.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({
    super.key,
  });

  @override
  BookmarkScreenState createState() => BookmarkScreenState();
}

class BookmarkScreenState extends State<BookmarkScreen> {
  late final DBHelper _dbHelper;
  late Stream<List<Article>> _bookmarkStream;

  @override
  void initState() {
    super.initState();
    _dbHelper = DBHelper();
    _bookmarkStream = _dbHelper.bookmarkStream;
  }

  @override
  void dispose() {
    _dbHelper.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookmarks',
          style: TextStyleConstant.headlineMedium(context),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: StreamBuilder<List<Article>>(
        stream: _bookmarkStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No bookmarks'),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final articles = snapshot.data;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return NewsListWidget(articles: articles);
                  } else if (constraints.maxWidth <= 960) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: NewsGridWidget(
                        articles: articles,
                        gridCount: 2,
                      ),
                    );
                  } else if (constraints.maxWidth <= 1200) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      child: NewsGridWidget(
                        articles: articles,
                        gridCount: 3,
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 160),
                      child: NewsGridWidget(
                        articles: articles,
                        gridCount: 4,
                      ),
                    );
                  }
                },
              ),
            );
          }
        },
      ),
    );
  }
}
