part of '../widgets/custom_bookmark_widget.dart';

class CustomBookmarkProvider extends ChangeNotifier {
  final DBHelper _dbHelper = DBHelper();
  Map<String, bool> _bookmarkedArticles = {};

  Map<String, bool> get bookmarkedArticles => _bookmarkedArticles;

  Future<void> loadBookmarks() async {
    List<Article> bookmarks = await _dbHelper.getBookmarks();
    _bookmarkedArticles = {
      for (var article in bookmarks) article.url!: true,
    };
    notifyListeners();
  }

  bool isBookmarked(
    Article article,
  ) {
    return _bookmarkedArticles.containsKey(
      article.url,
    );
  }

  Future<void> toggleBookmark(
    Article article,
  ) async {
    if (isBookmarked(
      article,
    )) {
      await _dbHelper.deleteBookmark(
        article.url!,
      );
      _bookmarkedArticles.remove(
        article.url,
      );
    } else {
      await _dbHelper.insertBookmark(
        article,
      );
      _bookmarkedArticles[article.url!] = true;
    }
    loadBookmarks();
    notifyListeners();
  }
}
