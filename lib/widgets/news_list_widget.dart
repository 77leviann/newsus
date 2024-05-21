import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newsus/constants/asset_constant.dart';
import 'package:newsus/constants/text_style_constant.dart';
import 'package:newsus/models/get_news_us_response_model.dart';

part 'news_image_widget.dart';
part 'news_title_widget.dart';
part 'news_author_widget.dart';
part 'news_published_date_widget.dart';
part 'news_item_list_widget.dart';
part 'news_item_grid_widget.dart';
part 'news_grid_widget.dart';

class NewsListWidget extends StatelessWidget {
  final List<Article>? articles;

  const NewsListWidget({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles?.length ?? 0,
      itemBuilder: (context, index) {
        final article = articles![index];
        return GestureDetector(
          onTap: () {},
          child: NewsItemListWidget(
            urlToImage: article.urlToImage,
            title: article.title,
            author: article.author,
            publishedAt: article.publishedAt,
          ),
        );
      },
    );
  }
}
