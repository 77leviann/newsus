part of 'news_list_widget.dart';

class NewsDescriptionWidget extends StatelessWidget {
  final String? description;

  const NewsDescriptionWidget({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description ?? '',
      style: TextStyleConstant.bodyMedium(
        context,
      ),
      overflow: TextOverflow.fade,
    );
  }
}
