import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skill_showoff/core/providers/main_provider/main_provider.dart';
import 'package:skill_showoff/core/utils/constants.dart';


class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin{
  late MainProvider _mainProvider;
  @override
  void initState() {
    super.initState();
     _mainProvider = Provider.of(context, listen: false);
    _mainProvider.setAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
  }


  @override
  void dispose() {
    super.dispose();
    _mainProvider.animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);
    return AppBar(
      elevation: 0,
      backgroundColor: Constants.headerColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset("assets/images/logo.png", height: 50,),
      ),
      title: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Classes", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
            SizedBox(width: 10,),
            Text("Communities", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.white,)),
        IconButton(onPressed: (){
          if(mainProvider.scaffoldKey.currentState!.isEndDrawerOpen){
            mainProvider.animationController.reverse();
            Navigator.pop(context);
          }else {
            mainProvider.animationController.forward();
            mainProvider.scaffoldKey.currentState!.openEndDrawer();
          }
        }, icon: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: mainProvider.animationController,
          color: Colors.white,
        )),
      ],
    );
  }
}
