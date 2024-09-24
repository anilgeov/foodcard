class HotelData {
  int? id;
  String? image;
  String? name;
  String? location;

  HotelData({this.id, this.name, this.image, this.location});
}

List<HotelData> hotellist = [
  HotelData(
      id: 1,
      name: "Alakkapuri",
      image: "assets/images/cardimg/alakkapuri.png",
      location: "Kakkanad,Kochi"),
  HotelData(
      id: 2, name: "Malabar",
      image: "assets/images/cardimg/malabar (1).png",
      location: "Vazhakala,Kochi"),
  HotelData(
      id: 3, name: "Kings",
      image: "assets/images/cardimg/kochin.png",
      location: "Cesz,Kochi"),
  HotelData(
      id: 4,
      name: "Kings",
      image: "assets/images/cardimg/kings.png",
      location: "HMT,Kochi"),
];