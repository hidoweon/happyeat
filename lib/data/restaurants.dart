import 'package:cloud_firestore/cloud_firestore.dart';

class Restaurant {
  final String name;
  final String address;
  final String phone;
  final String category;
  final String image;
  final String description;
  final String menu;
  final String location;
  final String time;
  final String price;
  final String url;
  final String id;
  final String lat;
  final String lng;

  Restaurant({
    required this.name,
    required this.address,
    required this.phone,
    required this.category,
    required this.image,
    required this.description,
    required this.menu,
    required this.location,
    required this.time,
    required this.price,
    required this.url,
    required this.id,
    required this.lat,
    required this.lng,
  });

  factory Restaurant.fromDocument(DocumentSnapshot doc) {
    return Restaurant(
      name: doc['name'],
      address: doc['address'],
      phone: doc['phone'],
      category: doc['category'],
      image: doc['image'],
      description: doc['description'],
      menu: doc['menu'],
      location: doc['location'],
      time: doc['time'],
      price: doc['price'],
      url: doc['url'],
      id: doc['id'],
      lat: doc['lat'],
      lng: doc['lng'],
    );
  }
}