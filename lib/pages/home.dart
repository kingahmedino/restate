import 'package:flutter/material.dart';
import 'package:restate/theme/theme.dart';
import 'package:svg_flutter/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color primaryColor = theme.primaryColor;

    final Color lightShade = _createLighterShade(primaryColor, 1);
    final Color mediumShade = _createLighterShade(primaryColor, 0.5);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  lightShade,
                  mediumShade,
                ],
              ),
            ),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: SafeArea(
                left: true,
                top: true,
                bottom: false,
                right: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RestateTopBar(
                      location: 'Saint Petersburg',
                      avatarUrl: 'https://picsum.photos/200/300',
                    ),
                    const RestateHeroText(name: 'Marina'),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20.0),
                              decoration: const BoxDecoration(
                                color: RestateTheme.primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Column(
                                children: [
                                  Text('BUY',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: Colors.white)),
                                  const SizedBox(height: 36),
                                  Text('1 034',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontSize: 40,
                                          )),
                                  const SizedBox(height: 4),
                                  Text('offers',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: Colors.white)),
                                  const SizedBox(height: 28),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  Text('RENT',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: RestateTheme
                                                  .secondaryTextColor)),
                                  const SizedBox(height: 36),
                                  Text('2 212',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge
                                          ?.copyWith(
                                            color:
                                                RestateTheme.secondaryTextColor,
                                            fontSize: 40,
                                          )),
                                  const SizedBox(height: 4),
                                  Text('offers',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: RestateTheme
                                                  .secondaryTextColor)),
                                  const SizedBox(height: 28),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: const Column(
                        children: [
                          RestateFullHomeCard(
                            title: 'Gladkova St., 25',
                            imageUrl:
                                'https://www.smithandassociates.com/uploads/qwerqwe%20(1).14.jpeg',
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              Expanded(
                                child: RestateHalfHomeCard(
                                  title: 'Gubina St., 11',
                                  imageUrl:
                                      'https://www.picturecorrect.com/wp-content/uploads/2014/02/real-estate-photography-2.jpg',
                                  height: 360,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: Column(
                                  children: [
                                    RestateHalfHomeCard(
                                      title: 'Trefoleva St., 43',
                                      imageUrl:
                                          'https://www.digitalphotomentor.com/photography/2018/09/real-estate-photography-two-wall-rule-example-5.jpg',
                                      height: 180,
                                    ),
                                    SizedBox(height: 8.0),
                                    RestateHalfHomeCard(
                                      title: 'Sedova St., 42',
                                      imageUrl:
                                          'https://www.shalinimisra.com/wp-content/uploads/2022/08/living-room-space-1024x745-1.jpeg',
                                      height: 180,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            right: 20.0,
            bottom: 36.0,
            child: Container(
              height: 56,
              padding: const EdgeInsets.all(6),
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
                    width: 48.0,
                    height: 48.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF232220)),
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
            ),
          )
        ],
      ),
    );
  }

  Color _createLighterShade(Color color, double factor) {
    return Color.lerp(color, Colors.white, factor)!;
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
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFD6C5B6).withOpacity(0.92),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
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
                    ),
                  ],
                ),
              ],
            ),
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
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFD6C5B6).withOpacity(0.92),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RestateTopBar extends StatelessWidget {
  final String location;
  final String avatarUrl;

  const RestateTopBar({
    super.key,
    required this.location,
    required this.avatarUrl,
  });

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
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(avatarUrl),
            ),
          ),
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
                  )),
          const SizedBox(height: 6),
          Text("let's select your\nperfect place",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(height: 1.1, fontSize: 36)),
        ],
      ),
    );
  }
}
