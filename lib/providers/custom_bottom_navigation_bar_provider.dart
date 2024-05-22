part of '../widgets/custom_bottom_navigation_bar_widget.dart';

class CustomBottomNavigationBarProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
