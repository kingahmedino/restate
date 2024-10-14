import 'package:flutter/material.dart';
import 'package:restate/theme/theme.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/map.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(14.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/svgs/search-outlined.svg',
                                width: 18.0,
                                height: 18.0,
                                colorFilter: const ColorFilter.mode(
                                  RestateTheme.primaryTextColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            const Text('Saint Petersburg'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/svgs/settings.svg',
                          width: 18.0,
                          height: 18.0,
                          colorFilter: const ColorFilter.mode(
                            RestateTheme.primaryTextColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: MapMarker(text: '10,3 mn P'),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, top: 10.0),
                        child: MapMarker(text: '11 mn P'),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 50, right: 28.0),
                        child: MapMarker(text: '7,8 mn P'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 28.0, top: 20),
                        child: MapMarker(text: '8,5 mn P'),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 108.0, top: 12, bottom: 48.0, right: 60.0),
                        child: MapMarker(text: '13,3 mn P'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 48.0, top: 49.0),
                    child: MapMarker(text: '6,95 mn P'),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF757575)),
                          child: Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/svgs/layers.svg',
                              width: 18.0,
                              height: 18.0,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ).animate().scale(duration: 700.ms),
                        const SizedBox(height: 6.0),
                        PopupMenuButton(
                          color: const Color(0xFFFBF5EB),
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              child: RestatePopupMenuItem(
                                image: 'assets/svgs/shield-check.svg',
                                title: 'Cosy areas',
                              ),
                            ),
                            PopupMenuItem(
                              child: RestatePopupMenuItem(
                                image: 'assets/svgs/wallet.svg',
                                title: 'Price',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const PopupMenuItem(
                              child: RestatePopupMenuItem(
                                image: 'assets/svgs/bridge.svg',
                                title: 'Infrastructure',
                              ),
                            ),
                            const PopupMenuItem(
                              child: RestatePopupMenuItem(
                                image: 'assets/svgs/layers.svg',
                                title: 'Without any layer',
                              ),
                            ),
                          ],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF757575)),
                            child: Align(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/svgs/location-arrow.svg',
                                width: 18.0,
                                height: 18.0,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ).animate().scale(duration: 700.ms),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 16.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF757575),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/svgs/bars-sort.svg',
                              width: 18.0,
                              height: 18.0,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            'List of variants',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ).animate().scale(duration: 700.ms),
                  ],
                ),
              ),
              const SizedBox(height: 18.0),
            ],
          ),
        ),
      ),
    );
  }
}

class RestatePopupMenuItem extends StatelessWidget {
  const RestatePopupMenuItem({
    super.key,
    required this.image,
    required this.title,
    this.color = RestateTheme.primaryTextColor,
  });

  final String image;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            image,
            width: 18.0,
            height: 18.0,
            colorFilter: ColorFilter.mode(
              color,
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 12.0, color: color),
        )
      ],
    );
  }
}

class MapMarker extends StatelessWidget {
  const MapMarker({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white),
      ).animate(delay: 800.ms).fadeIn(duration: 500.ms),
    ).animate().scale(duration: 800.ms, alignment: Alignment.bottomLeft);
  }
}
