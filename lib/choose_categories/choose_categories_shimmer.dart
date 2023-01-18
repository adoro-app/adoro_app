import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ChooseCategoriesShimmer extends StatelessWidget {
  const ChooseCategoriesShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      period: const Duration(seconds: 2),
      child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.2,
          children: List.generate(
            24,
            (index) => Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
            ),
          )),
    );
  }
}
