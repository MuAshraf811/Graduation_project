import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContinueWithContainer extends StatelessWidget {
  const ContinueWithContainer({
    super.key,
    required this.name,
    required this.svgImagePath,
    required this.space,
  });
  final String svgImagePath;
  final String name;
  final double space;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: Colors.grey.withOpacity(0.6),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 42,
            child: SvgPicture.asset(
              svgImagePath,
            ),
          ),
          SizedBox(width: space),
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
