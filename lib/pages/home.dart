import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:restate/helpers/functions.dart';
import 'package:restate/pages/widgets.dart';
import 'package:restate/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<int> _buyNumberAnimation;
  late Animation<int> _rentNumberAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _buyNumberAnimation = IntTween(begin: 0, end: 1034).animate(_controller);
    _rentNumberAnimation = IntTween(begin: 0, end: 2212).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                    const RestateTopBar(location: 'Saint Petersburg'),
                    const RestateHeroText(name: 'Marina'),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 24),
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return Row(
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
                                      Text(
                                          formatNumber(_buyNumberAnimation.value
                                              .toInt()),
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
                              ).animate().scale(duration: 1.seconds),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
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
                                      Text(
                                          formatNumber(_rentNumberAnimation
                                              .value
                                              .toInt()),
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge
                                              ?.copyWith(
                                                color: RestateTheme
                                                    .secondaryTextColor,
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
                              ).animate().scale(duration: 1.seconds),
                            ],
                          );
                        },
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
                          SizedBox(height: 20.0),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _createLighterShade(Color color, double factor) {
    return Color.lerp(color, Colors.white, factor)!;
  }
}
