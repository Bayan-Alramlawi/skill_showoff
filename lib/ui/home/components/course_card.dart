import 'package:flutter/material.dart';
import 'package:skill_showoff/core/modules/course.dart';
import 'package:skill_showoff/ui/course_details/course_details.dart';






class CourseCard extends StatelessWidget {
  const CourseCard({Key? key, required this.course}) : super(key: key);
  final Course course;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CourseDetails(course: course)));
      },
      child: Container(
        width: 280,
        height: 400,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(5),
          color: Colors.grey,
          gradient: const LinearGradient(
            colors: [Colors.black38,Colors.black26,Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
          )
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Hero(
              tag: "profile${course.id}",
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(course.imagePath, width: 280, height: 400,fit: BoxFit.cover,)),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Visibility(
                    visible: course.rating > 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Colors.white, size: 18,),
                        const SizedBox(width: 3,),
                        Text(course.rating.toString(), style: const TextStyle(color: Colors.white, fontSize: 14),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(course.shortTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                  const SizedBox(height: 5,),
                  Text("with ${course.instructor.split("&").first}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.white),)
                ],
              ),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("STARTS IN", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.grey[600]!),),
                    const SizedBox(height: 5,),
                    Text(course.startsIn, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );  }
}
