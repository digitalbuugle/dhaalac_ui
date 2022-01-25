import 'package:flutter/material.dart';

import 'package:dhaalac_ui/models/models.dart';
import 'package:dhaalac_ui/widgets/widgets.dart';
import 'package:video_player/video_player.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({
    Key? key,
    required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _ContentHeaderMobile(featuredContent: featuredContent),
      desktop: _ContentHeaderDesktop(featuredContent: featuredContent),
    );
  }
}

class _ContentHeaderMobile extends StatelessWidget {
  final Content featuredContent;

  const _ContentHeaderMobile({
    Key? key,
    required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: 'List',
                // ignore: avoid_print
                onTap: () => print('My List'),
              ),
              const PlayButton(),
              VerticalIconButton(
                icon: Icons.info_outline,
                title: 'Info',
                // ignore: avoid_print
                onTap: () => print('Info'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContentHeaderDesktop extends StatefulWidget {
  final Content featuredContent;

  const _ContentHeaderDesktop({
    Key? key,
    required this.featuredContent,
  }) : super(key: key);

  @override
  __ContentHeaderDesktopState createState() => __ContentHeaderDesktopState();
}

class __ContentHeaderDesktopState extends State<_ContentHeaderDesktop> {
  late VideoPlayerController _videoController;
  bool _isMuted = true;

  @override
  void initState() {
    super.initState();
    _videoController =
        VideoPlayerController.network(widget.featuredContent.videoUrl!)
          ..initialize().then((_) => setState(() {}))
          ..setVolume(0)
          ..play();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _videoController.value.isPlaying
          ? _videoController.pause()
          : _videoController.play(),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          AspectRatio(
            aspectRatio: _videoController.value.isInitialized
                ? _videoController.value.aspectRatio
                : 2.344,
            child: _videoController.value.isInitialized
                ? VideoPlayer(_videoController)
                : Image.asset(
                    widget.featuredContent.imageUrl,
                    fit: BoxFit.cover,
                  ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -1.0,
            child: AspectRatio(
              aspectRatio: _videoController.value.isInitialized
                  ? _videoController.value.aspectRatio
                  : 2.344,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 60.0,
            right: 60.0,
            bottom: 150.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15.0),
                Text(
                  widget.featuredContent.description!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2.0, 4.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    const PlayButton(),
                    const SizedBox(width: 16.0),
                    Column(
                      children: const [
                        InfoButton(),
                        Text(
                          'Info',
                          style: TextStyle(fontSize: 10.0),
                        )
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    if (_videoController.value.isInitialized)
                      IconButton(
                        icon: Icon(
                          _isMuted ? Icons.volume_off : Icons.volume_up,
                        ),
                        color: Colors.white,
                        iconSize: 30.0,
                        onPressed: () => setState(() {
                          _isMuted
                              ? _videoController.setVolume(100)
                              : _videoController.setVolume(0);
                          _isMuted = _videoController.value.volume == 0;
                        }),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoButton extends StatefulWidget {
  final double size;
  final Color color;

  const InfoButton({Key? key, this.size = 24, this.color = Colors.white70}) : super(key: key);

  @override
  _InfoButtonState createState() => _InfoButtonState();
}

class _InfoButtonState extends State<InfoButton> {
  IconData iconData = Icons.info_outline;
  // ↑ Moving the state up to here

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          primary: Colors.white70,
        ),
        child: Icon(
          iconData,
          size: widget.size,
          color: widget.color,
        ),
        onPressed: toggleLike,
      ),
    );
  }

  void toggleLike() {
    setState(() {
      iconData = iconData == Icons.info ? Icons.info_outline : Icons.info;
    });
  }
}

class PlayButton extends StatefulWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  _PlayButtonState createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Icon(obscure ? Icons.play_arrow : Icons.pause,
          size: 30.0, color: const Color(0xff1f1f1f)),
      style: TextButton.styleFrom(
        padding: !Responsive.isDesktop(context)
            ? const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0)
            : const EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 10.0),
        primary: Colors.white,
        backgroundColor: Colors.white70,
        side: const BorderSide(color: Colors.white, width: 1),
        elevation: 20,
        minimumSize: const Size(100, 50),
        shadowColor: Colors.transparent,
      ),
      onPressed: () {
        setState(() => obscure = !obscure);
      },
    );
  }
}
