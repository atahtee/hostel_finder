import 'package:finderhostel/Theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return this != oldDelegate;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.green[300],
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          GestureDetector(
              onTap: () {
                print('Recommeded');
              },
              child: _CategoryItem(title: "Recommended")),
         GestureDetector(
              onTap: () {
                print('Recommeded');
              },
              child: _CategoryItem(title: "Nairobi")),
              GestureDetector(
              onTap: () {
                print('Recommeded');
              },
              child: _CategoryItem(title: "Kiambu")),
              GestureDetector(
              onTap: () {
                print('Thika road');
              },
              child: _CategoryItem(title: "Thika road")),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: AppColor.white),
      ),
    );
  }
}
