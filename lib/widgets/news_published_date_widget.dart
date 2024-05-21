part of 'news_list_widget.dart';

class NewsPublishedDateWidget extends StatelessWidget {
  final DateTime? publishedAt;

  const NewsPublishedDateWidget({
    super.key,
    required this.publishedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_today,
          size: 16,
          color: Theme.of(
            context,
          ).colorScheme.primary,
        ),
        const SizedBox(
          width: 8,
        ),
        publishedAt != null
            ? Text(
                DateFormat('dd-MM-yyyy').format(publishedAt!),
                style: TextStyleConstant.labelMedium(
                  context,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            : Text(
                'Unknown',
                style: TextStyleConstant.labelMedium(
                  context,
                ),
              ),
      ],
    );
  }
}
