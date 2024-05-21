part of 'news_list_widget.dart';

class NewsAuthorWidget extends StatelessWidget {
  final String? author;
    final int maxLines;


  const NewsAuthorWidget({
    super.key,
    required this.author, required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.person,
          size: 16,
          color: Theme.of(
            context,
          ).colorScheme.primary,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: author != null
              ? Text(
                  author!,
                  style: TextStyleConstant.labelMedium(
                    context,
                  ),
                  maxLines: maxLines,
                  overflow: TextOverflow.ellipsis,
                )
              : Text(
                  'Unknown',
                  style: TextStyleConstant.labelMedium(
                    context,
                  ),
                ),
        ),
      ],
    );
  }
}
