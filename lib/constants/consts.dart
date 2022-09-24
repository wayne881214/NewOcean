import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/store_model/cart_model.dart';
import '../model/store_model/temp_model.dart';

final TextStyle style = GoogleFonts.lato(
    fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700);
const Color bleu = Color(0xFF148BFF);
const Color red = Color(0xFFC3011B);
const Color white = Color(0xFFDCDBEB);

List<ShoesModel> sportshoeslist = [
  ShoesModel(
      name: '環保杯8折優惠券',
      img: 'assets/images/glass.png',
      company: '合作商店',
      price: 100,
      isselected: false,
      color: red),
  ShoesModel(
      name: '環保杯5折優惠券',
      img: 'assets/images/glass.png',
      company: '合作商店',
      price: 300,
      isselected: false,
      color: Colors.amber.shade700),
  ShoesModel(
      name: '環保杯免費兌換券',
      img: 'assets/images/glass.png',
      company: '合作商店',
      price: 500,
      isselected: false,
      color: bleu),
];

List<ShoesModel> menshoeslist = [
  ShoesModel(
      name: '裝扮轉蛋1',
      img: 'assets/images/burned.png',
      company: '普通稀有度',
      price: 100,
      isselected: false,
      color: Colors.teal),
  ShoesModel(
      name: '裝扮轉蛋2',
      img: 'assets/images/burned.png',
      company: '特別稀有度',
      price: 300,
      isselected: false,
      color: Colors.amber.shade700),
  ShoesModel(
      name: '裝扮轉蛋3',
      img: 'assets/images/burned.png',
      company: '高級稀有度',
      price: 109,
      isselected: false,
      color: bleu),
];

List<ShoesModel> womenshoeslist = [
  ShoesModel(
      name: '動物轉蛋1',
      img: 'assets/images/eaten.png',
      company: '普通稀有度',
      price: 100,
      isselected: false,
      color: Colors.amber.shade700),
  ShoesModel(
      name: '動物轉蛋2',
      img: 'assets/images/eaten.png',
      company: '特別稀有度',
      price: 300,
      isselected: false,
      color: bleu),
  ShoesModel(
      name: '動物轉蛋3',
      img: 'assets/images/eaten.png',
      company: '高級稀有度',
      price: 500,
      isselected: false,
      color: red),
];

List<ShoesModel> allshoes = sportshoeslist + menshoeslist + womenshoeslist;

List sizes = [40, 41, 42, 43, 44];

List<CartModel> boughtitems = [];
List<ShoesModel> favouriteitems = [];

double total = 0.00;
