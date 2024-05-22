import 'package:flutter/material.dart';
import 'package:newsus/helpers/db_helper.dart';
import 'package:newsus/models/get_news_us_response_model.dart';
import 'package:provider/provider.dart';

part '../providers/custom_bookmark_provider.dart';
class CustomBookmarkWidget extends StatelessWidget {
  final Article article;

  const CustomBookmarkWidget({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    bool isBookmarked = Provider.of<CustomBookmarkProvider>(
      context,
    ).isBookmarked(
      article,
    );

    return Consumer<CustomBookmarkProvider>(
      builder: (context, provider, _) {
      return IconButton(
        icon: Icon(
        isBookmarked ? Icons.bookmark : Icons.bookmark_border,
        color: isBookmarked
          ? Theme.of(
            context,
            ).colorScheme.primary
          : Theme.of(
            context,
            ).colorScheme.outline,
        ),
        onPressed: () {
        provider.toggleBookmark(article);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
          content: Text(
            isBookmarked ? 'Bookmark removed' : 'Bookmark added',
          ),
          ),
        );
        },
      );
      },
    );
  }
}
