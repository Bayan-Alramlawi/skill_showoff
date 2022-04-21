import 'package:flutter/material.dart';
import 'package:skill_showoff/core/modules/course.dart';
import 'package:skill_showoff/core/utils/constants.dart';
import 'package:skill_showoff/ui/course_details/components/vid_player.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key, required this.course}) : super(key: key);
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: Constants.bgColor,
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          VidPlayer(path: course.vidPath,),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course.title, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 27, color: Colors.white),),
                const SizedBox(height: 10,),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("with", style: TextStyle(fontSize: 10, color: Colors.grey[200]!),),
                  subtitle: Text(course.instructor, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Colors.white),),
                  leading: Hero(
                    tag: "profile${course.id}",
                    child: Material(
                      color: Colors.transparent,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(course.imagePath,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Constants.primarySwatch),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text("Join This Class", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
          ),
        ),
      ),
    );
  }
}