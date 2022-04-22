import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skill_showoff/core/providers/main_provider/main_provider.dart';
import 'package:skill_showoff/core/utils/constants.dart';
import 'package:skill_showoff/ui/video_chapters/video_chapters.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);
    return Drawer(
      backgroundColor: Constants.bgColor,
      child: ListView(
        padding: const EdgeInsets.all(Constants.padding),
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Constants.primarySwatch)),
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black),
                ),
              )),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Classes",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text(
                "Communities",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Constants.borderRadius),
                    color: Constants.primarySwatch),
                child: const Text(
                  "New!",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Degree",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Crypto",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "For Business",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: ()async{
              Navigator.pop(context);
              Navigator.of(mainProvider.navContext).popUntil((route) => route.isFirst);
              await Future.delayed(const Duration(milliseconds: 200));
              Navigator.push(mainProvider.navContext, MaterialPageRoute(builder: (context)=> const VideoPlayerChaptersScreen()));
            },
            child: Row(
              children: [
                const Text(
                  "Video Chapters",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Constants.borderRadius),
                      color: Constants.primarySwatch),
                  child: const Text(
                    "New!",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
