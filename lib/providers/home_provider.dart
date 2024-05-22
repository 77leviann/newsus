part of '../screens/home/home_screen.dart';

class HomeProvider with ChangeNotifier {
  late Future<GetNewsUsResponseModel> _newsFuture;
  final GetNewsUsService _getNewsUsService = GetNewsUsService();

  Future<GetNewsUsResponseModel> get newsFuture => _newsFuture;

  HomeProvider() {
    getNews();
  }

  void getNews() {
    _newsFuture = _getNewsUsService.getNewsUs();
    notifyListeners();
  }
}
