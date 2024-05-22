import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:newsus/models/get_news_us_response_model.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;

  static Database? _database;
  final StreamController<List<Article>> _bookmarkController =
      StreamController<List<Article>>.broadcast();

  DBHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'bookmark.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE bookmarks(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      sourceId TEXT,
      sourceName TEXT,
      author TEXT,
      title TEXT,
      description TEXT,
      url TEXT,
      urlToImage TEXT,
      publishedAt TEXT,
      content TEXT
    )
  ''');
  }

  Future<int> insertBookmark(Article article) async {
    Database db = await database;
    Map<String, dynamic> articleJson = article.toJson();
    articleJson['sourceId'] = articleJson['source']['id'];
    articleJson['sourceName'] = articleJson['source']['name'];
    articleJson.remove('source');
    int id = await db.insert('bookmarks', articleJson);
    _updateBookmarks();
    return id;
  }

  Future<List<Article>> getBookmarks() async {
    Database db = await database;
    List<Map<String, dynamic>> maps = await db.query('bookmarks');
    return List.generate(maps.length, (i) {
      return Article.fromJson(maps[i]);
    });
  }

  Future<int> deleteBookmark(String url) async {
    Database db = await database;
    int count =
        await db.delete('bookmarks', where: 'url = ?', whereArgs: [url]);
    _updateBookmarks();
    return count;
  }

  Stream<List<Article>> get bookmarkStream => _bookmarkController.stream;

  void _updateBookmarks() async {
    List<Article> bookmarks = await getBookmarks();
    _bookmarkController.sink.add(bookmarks);
  }

  void dispose() {
    _bookmarkController.close();
  }
}
