import 'package:skill_showoff/core/modules/course.dart';
import 'package:uuid/uuid.dart';

class DummyData {
  DummyData._();

  static final List<Course> courses = [
    Course(
      vidPath: "assets/vid/1.mp4",
      startsIn: "2 DAYS 9 HRS",
      reviews: 4871,
      rating: 9.2,
      instructorPhoto: "",
      instructor: "Ben Yu & Curious Addys",
      imagePath: "assets/images/1.JPG",
      commitmentInDays: 7,
      id: const Uuid().v4(),
      title: "Master NFTs in 7 Days",
      shortTitle: "Master NFTs"
    ),
    Course(
        vidPath: "assets/vid/2.mp4",
        startsIn: "5 DAYS 9 HRS",
        reviews: 0,
        rating: 0,
        instructorPhoto: "",
        instructor: "Silvia Baena",
        imagePath: "assets/images/2.JPG",
        commitmentInDays: 7,
        id: const Uuid().v4(),
        title: "How to Become a Profitable Airbnb Host",
      shortTitle: "Build Passive Income"
    ),
    Course(
        vidPath: "assets/vid/3.mp4",
        startsIn: "3 DAYS 9 HRS",
        reviews: 1136,
        rating: 9.3,
        instructorPhoto: "",
        instructor: "Zeneca",
        imagePath: "assets/images/3.JPG",
        commitmentInDays: 7,
        id: const Uuid().v4(),
        title: "How to Launch an NFT Project",
      shortTitle: "Launch NFT Project"
    ),
    Course(
        vidPath: "assets/vid/4.mp4",
        startsIn: "2 DAYS 9 HRS",
        reviews: 0,
        rating: 0,
        instructorPhoto: "",
        instructor: "Epidemic Sound & TMS Productions",
        imagePath: "assets/images/4.JPG",
        commitmentInDays: 7,
        id: const Uuid().v4(),
        title: "Fundamentals Of Sound Design",
      shortTitle: "Master Sound Design"
    ),
    Course(
        vidPath: "assets/vid/5.mp4",
        startsIn: "32 DAYS 9 HRS",
        reviews: 366,
        rating: 9.1,
        instructorPhoto: "",
        instructor: "Bozoma Saint John",
        imagePath: "assets/images/5.JPG",
        commitmentInDays: 7,
        id: const Uuid().v4(),
        title: "Badass Business Bootcamp: Become A Badass At Work in 7 Days",
        shortTitle: "Get Ahead At Work"
    ),
    Course(
        vidPath: "assets/vid/6.mp4",
        startsIn: "7 DAYS 9 HRS",
        reviews: 938,
        rating: 9.4,
        instructorPhoto: "",
        instructor: "Catriona Gray",
        imagePath: "assets/images/6.JPG",
        commitmentInDays: 4,
        id: const Uuid().v4(),
        title: "How To Be A Queen",
        shortTitle: "Be A Queen"
    ),
    Course(
        vidPath: "assets/vid/7.mp4",
        startsIn: "16 DAYS 9 HRS",
        reviews: 0,
        rating: 0,
        instructorPhoto: "",
        instructor: "Vish BR",
        imagePath: "assets/images/7.JPG",
        commitmentInDays: 0,
        id: const Uuid().v4(),
        title: "Bored App Yacht Club, Explained",
      shortTitle: "Master BAYC"
    ),
  ];
}