import 'package:flutter/material.dart';
import 'package:newsus/helpers/db_helper.dart';
import 'package:newsus/models/get_news_us_response_model.dart';

class CustomBookmarkWidget extends StatefulWidget {
  final Article article;

  const CustomBookmarkWidget({
    super.key,
    required this.article,
  });

  @override
  CustomBookmarkWidgetState createState() => CustomBookmarkWidgetState();
}

class CustomBookmarkWidgetState extends State<CustomBookmarkWidget> {
  final DBHelper _dbHelper = DBHelper();
  bool _isBookmarked = false;

  @override
  void initState() {
    super.initState();
    _checkBookmarkStatus();
  }

  Future<void> _checkBookmarkStatus() async {
    List<Article> bookmarks = await _dbHelper.getBookmarks();
    setState(() {
      _isBookmarked =
          bookmarks.any((article) => article.url == widget.article.url);
    });
  }

  Future<void> _toggleBookmark() async {
    if (_isBookmarked) {
      await _dbHelper.deleteBookmark(widget.article.url!);
      setState(() {
        _isBookmarked = false;
      });
    } else {
      await _dbHelper.insertBookmark(widget.article);
      setState(() {
        _isBookmarked = true;
      });
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_isBookmarked ? 'Bookmark added' : 'Bookmark removed'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
        color: _isBookmarked
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.outline,
      ),
      onPressed: _toggleBookmark,
    );
  }
}
