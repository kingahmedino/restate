import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(horizontal: 40.0),
      decoration: BoxDecoration(
        color: const Color(0xFF2B2B2B),
        borderRadius: BorderRadius.circular(36.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 48.0,
            height: 48.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF232220)),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/svgs/search.svg',
                width: 18.0,
                height: 18.0,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Container(
            width: 48.0,
            height: 48.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF232220)),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/svgs/chat.svg',
                width: 18.0,
                height: 18.0,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Theme.of(context).primaryColor),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/svgs/home.svg',
                width: 18.0,
                height: 18.0,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Container(
            width: 48.0,
            height: 48.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF232220)),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/svgs/heart.svg',
                width: 18.0,
                height: 18.0,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Container(
            width: 48.0,
            height: 48.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF232220)),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/svgs/user.svg',
                width: 18.0,
                height: 18.0,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
