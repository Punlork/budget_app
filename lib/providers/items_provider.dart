import 'package:flutter/material.dart';

import 'item.dart';

class Items with ChangeNotifier {
  List<Item> _items = [
    Item(
      id: 1,
      title: 'Road Bike',
      price: 500,
      date: '22 Agust 2020',
      description:
          'Road bicycles are designed to be ridden fast on smooth pavement. They have smooth, skinny tires and "drop" handlebars, and can be used for on-road racing. They are usually lighter than other types of bicycles. They can be ridden on paved trails, but most people find them uncomfortable and unstable on unpaved trails. Most road bikes are not capable of carrying heavy loads, so are not very suitable for commuting or touring.',
      imageUrl: 'lib/assets/images/Bike.jpg',
      category: 'Vechile',
    ),
    Item(
      id: 2,
      title: 'IPhone 12 Pro Max',
      date: '30 March 2019',
      price: 1000,
      description:
          'Apple iPhone 12 Pro Max was officially released on October 13, 2020. The phone is powered by the new Apple A14 Bionic processor. The smartphone comes with a 6.7 inches Super Retina XDR OLED capacitive touchscreen, 2778 x 1284 pixels resolution and HDR display, True Tone and Wide color (P3) gamut.',
      imageUrl: 'lib/assets/images/Iphone.jpg',
      category: 'Electronics',
    ),
    Item(
      id: 3,
      title: 'ROG Stix G17',
      date: '15 May 2018',
      price: 1500,
      description:
          'The ROG Strix G17 embodies a streamlined design, offering a formidable core experience for serious gaming and multitasking on Windows 10. Featuring the latest 10th Gen Intel® Core™ i7 CPU and a GeForce RTX™ GPU, it offers high-FPS power that takes full advantage of its high refresh rate display.',
      imageUrl: 'lib/assets/images/Laptop.jpg',
      category: 'Electronics',
    ),
    Item(
      id: 4,
      title: 'Nike Air Jorden',
      date: '11 August 2021',
      price: 300,
      description:
          'The Air Jordans’ exclusive level relative to other types of footwear has been the reason behind this phenomenon. They made these sneakers with extremely high-quality materials like full-grain calfskin and premium leather uppers. With this, people cannot marvel at the feel and look of a high-quality product and a sense of durability. Ultimately, they can get these sneakers in different styles and colors. And with their preferences, buyers can choose their best sneakers.',
      imageUrl: 'lib/assets/images/Shoes.jpg',
      category: 'Shoes',
    ),
  ];

  List<Item> get items {
    return [..._items];
  }

  void showMostExpensiveItem() {
    items.sort((a, b) => b.price.compareTo(a.price));
    notifyListeners();
  }

  void addItem() {
    // _items.add();
    notifyListeners();
  }
}
