part of 'news_list_widget.dart';

class NewsImageWidget extends StatelessWidget {
  final String? urlToImage;

  const NewsImageWidget({super.key, required this.urlToImage});

  @override
  Widget build(BuildContext context) {
    return urlToImage != null
        ? Image.network(
            urlToImage!,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            colorBlendMode: BlendMode.darken,
          )
        : Image.asset(
            AssetConstant.imageNotFound,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            colorBlendMode: BlendMode.darken,
          );
  }
}
