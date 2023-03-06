class ElonModel {
  final String title;
  final String price;
  final String place;
  final String floor;
  final String location;
  final String image;
  final String time;
  bool? like;

  ElonModel(
      {required this.title,
      required this.price,
      required this.place,
      required this.floor,
      required this.location,
      required this.image,
      required this.time,
      this.like});
}


