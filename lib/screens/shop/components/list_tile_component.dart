import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class ListTileComponent extends StatelessWidget {
  const ListTileComponent({
    Key? key,
    required this.title,
    required this.icon,
    this.color = const Color(0xff07142E),
    this.translationValue = -16,
    this.visualDensity,
    this.dense = false,
    this.shape,
  }) : super(key: key);
  final String title;
  final String icon;
  final Color color;
  final double translationValue;
  final VisualDensity? visualDensity;
  final bool dense;
  final ShapeBorder? shape;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: shape,
      dense: dense,
      visualDensity: visualDensity,
      leading: SvgPicture.asset(icon),
      title: Transform(
        transform: Matrix4.translationValues(translationValue, 0.0, 0.0),
        child: Text(title,
            style: secondaryTextStyle(
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                size: 14,
                weight: FontWeight.w600,
                color: color)),
      ),
    );
  }
}
