part of '../screens/detail/detail_screen.dart';

class DetailProvider extends ChangeNotifier {
  static void launchURL(
    BuildContext context,
    String? url,
  ) async {
    if (url != null && url.isNotEmpty) {
      var uri = Uri.parse(
        url.toLowerCase(),
      );
      try {
        if (await canLaunchUrl(
          uri,
        )) {
          await launchUrl(
            uri,
            mode: LaunchMode.inAppWebView,
          );
        } else {
          throw 'Could not launch $uri';
        }
      } catch (e) {
        'Error launching URL: $e';
      }
    }
  }
}
