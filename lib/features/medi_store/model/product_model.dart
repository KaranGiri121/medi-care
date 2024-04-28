import 'package:get/get.dart';

class Product {
  final String name;
  final String companyName;
  final int price;
  final String? quantity;
  RxBool favorite;
  final String image;

  Product(
      {required this.name,
      required this.companyName,
      required this.price,
      required this.image,
      required this.favorite,
      this.quantity});
}

List<Product> productList = [
  Product(
    name: "Paracetamol",
    companyName: "Dabur",
    price: 23,
    image: "assets/images/medicine/1.png",
    favorite: true.obs,

  ),
  Product(
      name: "Paracetamol",
      companyName: "Dabur",
      price: 43,
      image: "assets/images/medicine/2.png",
      favorite: true.obs),
  Product(
      name: "Paracetamol",
      companyName: "Dabur",
      price: 32,
      image: "assets/images/medicine/3.png",
      favorite: false.obs),
  Product(
      name: "Paracetamol",
      companyName: "Dabur",
      price: 65,
      image: "assets/images/medicine/2.png",
      favorite: true.obs),
  Product(
      name: "Paracetamol",
      companyName: "Dabur",
      price: 32,
      image: "assets/images/medicine/2.png",
      favorite: false.obs),
  Product(
      name: "Paracetamol",
      companyName: "Dabur",
      price: 91,
      image: "assets/images/medicine/1.png",
      favorite: true.obs),
  Product(
      name: "Paracetamol",
      companyName: "Dabur",
      price: 56,
      image: "assets/images/medicine/3.png",
      favorite: false.obs),
];
