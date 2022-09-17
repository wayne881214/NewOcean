import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/store_model/cart_model.dart';
import '../model/store_model/shoes_model.dart';

final TextStyle style = GoogleFonts.lato(
    fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700);
const Color bleu = Color(0xFF148BFF);
const Color red = Color(0xFFC3011B);
const Color white = Color(0xFFDCDBEB);

List<ShoesModel> sportshoeslist = [
  ShoesModel(
      name: 'Nike Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Nike',
      price: 123,
      isselected: false,
      color: red),
  ShoesModel(
      name: 'Sport Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Nike',
      price: 103,
      isselected: false,
      color: Colors.amber.shade700),
  ShoesModel(
      name: 'Sneakers',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Nike',
      price: 100,
      isselected: false,
      color: bleu),
];

List<ShoesModel> menshoeslist = [
  ShoesModel(
      name: 'Mowdy Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Mowdy',
      price: 223,
      isselected: false,
      color: Colors.teal),
  ShoesModel(
      name: 'Rido Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Rido',
      price: 199,
      isselected: false,
      color: Colors.amber.shade700),
  ShoesModel(
      name: 'Sunny Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Sunny',
      price: 109,
      isselected: false,
      color: bleu),
];

List<ShoesModel> womenshoeslist = [
  ShoesModel(
      name: 'Caty Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Caty',
      price: 499,
      isselected: false,
      color: Colors.amber.shade700),
  ShoesModel(
      name: 'Heelmy Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Heelmy',
      price: 567,
      isselected: false,
      color: bleu),
  ShoesModel(
      name: 'Pinky Shoes',
      img: 'assets/images/task_carousel_turtle_3.jpg',
      company: 'Pinky',
      price: 533,
      isselected: false,
      color: red),
];

List<ShoesModel> allshoes = sportshoeslist + menshoeslist + womenshoeslist;

List sizes = [40, 41, 42, 43, 44];

List<CartModel> boughtitems = [];
List<ShoesModel> favouriteitems = [];

double total = 0.00;
