import 'package:flutter/material.dart';
import 'package:skill_showoff/core/utils/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerChaptersScreen extends StatefulWidget {
  const VideoPlayerChaptersScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayerChaptersScreen> createState() =>
      _VideoPlayerChaptersScreenState();
}

class _VideoPlayerChaptersScreenState extends State<VideoPlayerChaptersScreen> {
  late String videoId;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=86jht7szxgQ")!;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.bgColor,
        body: SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: [
              YoutubePlayer(
                controller: _controller,
                liveUIColor: Constants.primarySwatch,
                bottomActions: [
                  const SizedBox(width: 14.0),
                  CurrentPosition(),
                  const SizedBox(width: 8.0),
                  ProgressBar(
                    isExpanded: true,
                    colors: ProgressBarColors(backgroundColor: Colors.grey, playedColor: Constants.primarySwatch, handleColor: Colors.amber[400]),
                  ),
                  RemainingDuration(),
                  const SizedBox(width: 14.0),
                ],
                showVideoProgressIndicator: true,
                progressColors: ProgressBarColors(backgroundColor: Colors.grey, playedColor: Constants.primarySwatch, handleColor: Colors.amber[400]),
                onReady: () {
                  _controller.addListener(() {
                    setState(() {});
                  });
                },
              ),
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:  Text("Timestamps", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: Colors.grey),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Theme(
                  data: Theme.of(context).copyWith(elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Constants.primarySwatch),
                          foregroundColor: MaterialStateProperty.all(Colors.black)
                      )
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          child:  const Text("00:00 / intro", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 0), allowSeekAhead: true);
                          },
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          child:  const  Text("01:44 / What Is Solana?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 104), allowSeekAhead: true);
                          },
                        ),
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          child:  const  Text("4:59 / Updates Part 1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 299), allowSeekAhead: true);
                          },
                        ),
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(
                          child:  const  Text("7:41 / Updates Part 2", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 461), allowSeekAhead: true);
                          },
                        ),
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(
                          child:  const  Text("10:35 / Updates Part 3", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 635), allowSeekAhead: true);
                          },
                        ),
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(
                          child:  const  Text("12:29 / SOL Price Analysis & Potential ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 749), allowSeekAhead: true);
                          },
                        ),
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(
                          child:  const  Text("15:19 / Solana Roadmap ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 919), allowSeekAhead: true);
                          },
                        ),
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(
                          child:  const  Text("18:49 / Solana Concerns ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 1129), allowSeekAhead: true);
                          },
                        ),
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          child:  const  Text("21:31 / Outro", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          onPressed: (){
                            _controller.seekTo(const Duration(seconds: 1291), allowSeekAhead: true);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
