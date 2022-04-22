import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class VidPlayer extends StatefulWidget {
  const VidPlayer({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  State<VidPlayer> createState() => _VidPlayerState();
}

class _VidPlayerState extends State<VidPlayer> with SingleTickerProviderStateMixin{
  late VideoPlayerController _controller;
  final VideoPlayerOptions options = VideoPlayerOptions(mixWithOthers: false, allowBackgroundPlayback: false);
  late AnimationController _play;

  bool _playing = true;
  bool _mute = false;

  @override
  void initState() {
    super.initState();
    _play = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    _controller = VideoPlayerController.asset(widget.path, videoPlayerOptions: options,)
    ..initialize().then((_) {
      _controller.play();
      _controller.setLooping(true);
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _play.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          child:  _controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: (){
                  if(_mute){
                    _controller.setVolume(1);
                  }else {
                    _controller.setVolume(0);
                  }
                  setState(() {
                    _mute = !_mute;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black54
                  ),
                    child: Icon(_mute? Icons.volume_off : Icons.volume_up, color: Colors.white,)),
              ),
              InkWell(
                onTap: (){
                  if(_playing){
                    _controller.pause();
                    _play.forward();
                  }else {
                    _controller.play();
                    _play.reverse();
                  }
                  setState(() {
                   _playing = !_playing;
                  });
                },
                child: Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54
                    ),
                    child:  AnimatedIcon(icon: AnimatedIcons.pause_play, progress: _play, color: Colors.white,)),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54
                    ),
                    child: const Icon(Icons.fullscreen, color: Colors.white,)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
