import 'package:flutter/material.dart';
import 'package:newsus/screens/bookmark/bookmark_screen.dart';
import 'package:newsus/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

part '../providers/custom_bottom_navigation_bar_provider.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CustomBottomNavigationBarProvider>(
      context,
    );

    return Scaffold(
      body: IndexedStack(
        index: provider.currentIndex,
        children: const [
          HomeScreen(),
          BookmarkScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary,
        currentIndex: provider.currentIndex,
        onTap: (
          index,
        ) {
          provider.setCurrentIndex(
            index,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Theme.of(
                context,
              ).colorScheme.outlineVariant,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home,
              color: Theme.of(
                context,
              ).colorScheme.onPrimary,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_add_rounded,
              color: Theme.of(
                context,
              ).colorScheme.outlineVariant,
            ),
            label: 'Bookmark',
            activeIcon: Icon(
              Icons.bookmark_add_rounded,
              color: Theme.of(
                context,
              ).colorScheme.onPrimary,
            ),
          ),
        ],
        selectedItemColor: Theme.of(
          context,
        ).colorScheme.onPrimary,
        unselectedItemColor: Theme.of(
          context,
        ).colorScheme.outlineVariant,
      ),
    );
  }
}
