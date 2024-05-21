part of 'news_list_widget.dart';

class NewsItemGridWidget extends StatelessWidget {
  final String? urlToImage;
  final String? title;
  final String? author;
  final DateTime? publishedAt;

  const NewsItemGridWidget({
    super.key,
    required this.urlToImage,
    required this.title,
    required this.author,
    required this.publishedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: Theme.of(
          context,
        ).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(
          8,
        ),
        border: Border.all(
          color: Theme.of(
            context,
          ).colorScheme.outlineVariant,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.outline,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
                child: NewsImageWidget(urlToImage: urlToImage),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              NewsTitleWidget(
                title: title,
                maxLines: 1,
              ),
              const SizedBox(
                height: 6,
              ),
              NewsPublishedDateWidget(
                publishedAt: publishedAt,
              ),
              const SizedBox(
                height: 6,
              ),
              NewsAuthorWidget(
                author: author,
                maxLines: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
