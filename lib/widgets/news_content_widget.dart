part of 'news_list_widget.dart';

class NewsContentWidget extends StatelessWidget {
  final String? content;

  const NewsContentWidget({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content ?? '',
      style: TextStyleConstant.bodySmall(
        context,
      ),
      overflow: TextOverflow.fade,
    );
  }
}
