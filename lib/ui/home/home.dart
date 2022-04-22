import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skill_showoff/core/providers/main_provider/main_provider.dart';
import 'package:skill_showoff/core/utils/dummy_data.dart';
import 'package:skill_showoff/ui/home/components/course_card.dart';
import 'package:skill_showoff/ui/home/components/end_drawer.dart';
import 'package:skill_showoff/ui/home/components/header.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: const Header(),
      ),
      body: Scaffold(
        key: mainProvider.scaffoldKey,
        endDrawer: const EndDrawer(),
        endDrawerEnableOpenDragGesture: false,
        onEndDrawerChanged: (opened){
          if(opened){
            mainProvider.animationController.forward();
          }else {
            mainProvider.animationController.reverse();
          }
        },
        body: MaterialApp(
          title: "Skill Showoff",
          debugShowCheckedModeBanner: false,
          home: Material(
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              children: [
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child:  Text("Featured", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: DummyData.courses.length,
                    itemBuilder: (context, index){
                      mainProvider.navContext = context;
                      return CourseCard(course: DummyData.courses[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
