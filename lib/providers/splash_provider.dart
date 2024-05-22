part of '../screens/splash/splash_screen.dart';

class SplashProvider extends ChangeNotifier {
  void startTimer(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.restorablePushReplacementNamed(
        context,
        NameRoutes.homeScreen,
      ),
    );
  }
}
