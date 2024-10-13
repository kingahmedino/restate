import 'package:flutter/material.dart';
import 'package:restate/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color primaryColor = theme.primaryColor;

    final Color lightShade = _createLighterShade(primaryColor, 1);
    final Color mediumShade = _createLighterShade(primaryColor, 0.5);

    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: Column(
            children: [
              RestateTopBar(
                location: 'Saint Petersburg',
                avatarUrl: 'https://picsum.photos/200/300',
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _createLighterShade(Color color, double factor) {
    return Color.lerp(color, Colors.white, factor)!;
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
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 18,
                  color: RestateTheme.secondaryTextColor,
                ),
                const SizedBox(width: 4),
                Text(
                  location,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: RestateTheme.secondaryTextColor),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(avatarUrl),
          ),
        ],
      ),
    );
  }
}
