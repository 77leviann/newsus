part of 'news_list_widget.dart';

class NewsGridWidget extends StatelessWidget {
  final List<Article>? articles;
  final int gridCount;

  const NewsGridWidget({
    super.key,
    required this.articles,
    required this.gridCount,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemCount: articles?.length ?? 0,
      itemBuilder: (context, index) {
        final article = articles![index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(article: article),
              ),
            );
          },
          child: NewsItemGridWidget(
            urlToImage: article.urlToImage,
            title: article.title,
            author: article.author,
            publishedAt: article.publishedAt,
          ),
        );
      },
    );
  }
}
