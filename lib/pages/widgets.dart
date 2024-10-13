import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  String selectedItem = 'home';

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
          InkWell(
            onTap: () {
              setState(() {
                selectedItem = 'search';
              });
              widget.onTap(0);
            },
            child: NavItem(
              image: 'assets/svgs/search.svg',
              isSelected: selectedItem == 'search',
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedItem = 'chat';
              });
              widget.onTap(1);
            },
            child: NavItem(
              image: 'assets/svgs/chat.svg',
              isSelected: selectedItem == 'chat',
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedItem = 'home';
              });
              widget.onTap(2);
            },
            child: NavItem(
              image: 'assets/svgs/home.svg',
              isSelected: selectedItem == 'home',
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedItem = 'heart';
              });
              widget.onTap(3);
            },
            child: NavItem(
              image: 'assets/svgs/heart.svg',
              isSelected: selectedItem == 'heart',
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedItem = 'user';
              });
              widget.onTap(4);
            },
            child: NavItem(
              image: 'assets/svgs/user.svg',
              isSelected: selectedItem == 'user',
            ),
          )
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.image,
    this.isSelected = false,
  });

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSelected ? 56.0 : 48.0,
      height: isSelected ? 56.0 : 48.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected
            ? Theme.of(context).primaryColor
            : const Color(0xFF232220),
      ),
      child: Align(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          image,
          width: 18.0,
          height: 18.0,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
