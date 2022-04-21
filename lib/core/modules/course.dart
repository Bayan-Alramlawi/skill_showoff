class Course {
  String title;
  String id;
  String imagePath;
  String vidPath;
  String instructor;
  double rating;
  int reviews;
  String startsIn;
  String instructorPhoto;
  int commitmentInDays;
  String shortTitle;


  Course(
      {
        required this.title,
        required this.id,
        required this.imagePath,
        required this.vidPath,
        required this.instructor,
        required this.rating,
        required this.reviews,
        required this.startsIn,
      required this.commitmentInDays,
      required this.instructorPhoto,
      required this.shortTitle});

  factory Course.fromMap (Map<String, dynamic> data){
    return Course(
      id: data["id"],
      title: data["title"],
      commitmentInDays: data["commitmentInDays"],
      imagePath: data["imagePath"],
      instructor: data["instructor"],
      instructorPhoto: data["instructorPhoto"],
      rating: data["rating"],
      reviews: data["reviews"],
      startsIn: data["startsIn"],
      vidPath: data["vidPath"],
      shortTitle: data["shortTitle"]
    );
  }



  Map<String, dynamic> toMap (){
    return {
      "id" : id,
      "title" : title,
      "commitmentInDays" : commitmentInDays,
      "imagePath" : imagePath,
      "instructor" : instructor,
      "instructorPhoto" : instructorPhoto,
      "rating" : rating,
      "reviews" : reviews,
      "startsIn" : startsIn,
      "vidPath" : vidPath,
      "shortTitle": shortTitle
     };
  }

}