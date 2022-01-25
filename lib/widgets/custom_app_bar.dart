import 'package:flutter/material.dart';

import 'package:dhaalac_ui/assets.dart';
import 'package:dhaalac_ui/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 24.0,
      ),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.dhaalacLogo),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'TV Shows',
                  // ignore: avoid_print
                  onTap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  // ignore: avoid_print
                  onTap: () => print('Movies'),
                ),
                _AppBarButton(
                  title: 'My List',
                  // ignore: avoid_print
                  onTap: () => print('My List'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.dhaalacLogo1),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'Home',
                  // ignore: avoid_print
                  onTap: () => print('Home'),
                ),
                _AppBarButton(
                  title: 'TV Shows',
                  // ignore: avoid_print
                  onTap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  // ignore: avoid_print
                  onTap: () => print('Movies'),
                ),
                _AppBarButton(
                  title: 'Latest',
                  // ignore: avoid_print
                  onTap: () => print('Latest'),
                ),
                _AppBarButton(
                  title: 'My List',
                  // ignore: avoid_print
                  onTap: () => print('My List'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  // ignore: avoid_print
                  onPressed: () => print('Search'),
                ),
                _AppBarButton(
                  title: 'KIDS',
                  // ignore: avoid_print
                  onTap: () => print('KIDS'),
                ),
                _AppBarButton(
                  title: 'DVD',
                  // ignore: avoid_print
                  onTap: () => print('DVD'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  // ignore: avoid_print
                  onPressed: () => print('Gift'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  // ignore: avoid_print
                  onPressed: () => print('Notifications'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
