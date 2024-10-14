import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:restate/theme/theme.dart';
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

class RestateHalfHomeCard extends StatelessWidget {
  const RestateHalfHomeCard({
    super.key,
    required this.title,
    required this.imageUrl,
    this.height = 180,
  });
  final String title;
  final String imageUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.network(
            imageUrl,
            height: height,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 12.0,
          right: 12.0,
          child: Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.only(top: 11.0, bottom: 11.0, left: 8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFD6C5B6).withOpacity(0.92),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ).animate(delay: 1.seconds).fadeIn(duration: 1.seconds),
                    const Spacer()
                  ],
                ),
              )
                  .animate(delay: 500.ms)
                  .scaleX(duration: 1.seconds, alignment: Alignment.centerLeft),
              Row(
                children: [
                  const Spacer(),
                  Container(
                    width: 36,
                    height: 36,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 20,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: RestateTheme.secondaryTextColor,
                      size: 20,
                    ),
                  ).animate().moveX(
                        duration: 1.3.seconds,
                        begin: -200,
                        end: 0,
                      ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RestateFullHomeCard extends StatelessWidget {
  const RestateFullHomeCard({
    super.key,
    required this.title,
    required this.imageUrl,
    this.height = 220,
  });
  final String title;
  final String imageUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(28.0),
          child: Image.network(
            imageUrl,
            height: height,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 20.0,
          right: 20.0,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: const Color(0xFFD6C5B6).withOpacity(0.92),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ).animate(delay: 1.seconds).fadeIn(duration: 1.seconds),
                ),
              )
                  .animate(delay: 300.ms)
                  .scaleX(duration: 1.seconds, alignment: Alignment.centerLeft),
              Row(
                children: [
                  const Spacer(),
                  Container(
                    width: 42,
                    height: 42,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 20,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: RestateTheme.secondaryTextColor,
                      size: 20,
                    ),
                  ).animate().moveX(
                        duration: 1.3.seconds,
                        begin: -400,
                        end: 0,
                      ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RestateTopBar extends StatelessWidget {
  final String location;

  const RestateTopBar({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/svgs/marker.svg',
                    width: 16.0,
                    height: 16.0,
                    colorFilter: const ColorFilter.mode(
                      RestateTheme.secondaryTextColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  location,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: RestateTheme.secondaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ).animate().fade(delay: 1.seconds, duration: 1.seconds),
          )
              .animate()
              .scaleX(duration: 1.seconds, alignment: Alignment.centerLeft),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                'assets/images/avatar.jpeg',
              ),
            ),
          ).animate().scale(duration: 1.seconds),
        ],
      ),
    );
  }
}

class RestateHeroText extends StatelessWidget {
  final String name;

  const RestateHeroText({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi, $name',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 20.0,
                  )).animate().fade(duration: 2.seconds),
          const SizedBox(height: 6),
          Text(
            "let's select your",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(height: 1.1, fontSize: 36),
          ).animate().moveY(duration: 2.seconds, begin: 20, end: 0),
          Text(
            "perfect place",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(height: 1.1, fontSize: 36),
          )
              .animate()
              .moveY(delay: 500.ms, duration: 2.seconds, begin: 20, end: 0),
        ],
      ),
    );
  }
}
