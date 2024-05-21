part of 'news_list_widget.dart';

class NewsTitleWidget extends StatelessWidget {
  final String? title;
  final int maxLines;

  const NewsTitleWidget({
    super.key,
    required this.title,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: TextStyleConstant.bodyLarge(
        context,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
