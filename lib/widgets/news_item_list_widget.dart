part of 'news_list_widget.dart';

class NewsItemListWidget extends StatelessWidget {
  final String? urlToImage;
  final String? title;
  final String? author;
  final DateTime? publishedAt;

  const NewsItemListWidget({
    super.key,
    required this.urlToImage,
    required this.title,
    required this.author,
    required this.publishedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8,
      ),
      child: Container(
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
        child: Row(
          children: [
            Container(
              height: 100,
              width: 120,
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
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NewsTitleWidget(
                    title: title,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  NewsPublishedDateWidget(
                    publishedAt: publishedAt,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  NewsAuthorWidget(
                    author: author,
                    maxLines: 1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
