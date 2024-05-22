import 'package:flutter/material.dart';
import 'package:newsus/constants/text_style_constant.dart';
import 'package:newsus/models/get_news_us_response_model.dart';
import 'package:newsus/models/services/get_news_us_service.dart';
import 'package:newsus/widgets/news_list_widget.dart';
import 'package:provider/provider.dart';

part '../../providers/home_provider.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyleConstant.headlineMedium(context),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary,
      ),
      body: Consumer<HomeProvider>(
        builder: (context, homeProvider, child) {
          return FutureBuilder<GetNewsUsResponseModel>(
            future: homeProvider.newsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                final articles = snapshot.data?.articles;
                return Padding(
                padding: const EdgeInsets.all(16.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    if (constraints.maxWidth <= 600) {
                      return NewsListWidget(articles: articles);
                    } else if (constraints.maxWidth <= 960) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        child: NewsGridWidget(
                          articles: articles,
                          gridCount: 2,
                        ),
                      );
                    } else if (constraints.maxWidth <= 1200) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 120),
                        child: NewsGridWidget(
                          articles: articles,
                          gridCount: 3,
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 160),
                        child: NewsGridWidget(
                          articles: articles,
                          gridCount: 4,
                        ),
                      );
                    }
                  },
                ),
              );
              }
            },
          );
        },
      ),
    );
  }
}
