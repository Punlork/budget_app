class Item {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  Item({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

final List<Item> loadedItems = [
  Item(
    id: 'i1',
    title: 'Road Bike',
    price: 500,
    description:
        'Road bicycles are designed to be ridden fast on smooth pavement. They have smooth, skinny tires and "drop" handlebars, and can be used for on-road racing. They are usually lighter than other types of bicycles. They can be ridden on paved trails, but most people find them uncomfortable and unstable on unpaved trails. Most road bikes are not capable of carrying heavy loads, so are not very suitable for commuting or touring.',
    imageUrl:
        'https://www.sefiles.net/merchant/91/images/site/giant_defy_composite_3_compact_12_z-slimC.jpg?t=1517345073613',
  ),
  Item(
    id: 'i2',
    title: 'ROG Stix G17',
    price: 1500,
    description:
        'The ROG Strix G17 embodies a streamlined design, offering a formidable core experience for serious gaming and multitasking on Windows 10. Featuring the latest 10th Gen Intel® Core™ i7 CPU and a GeForce RTX™ GPU, it offers high-FPS power that takes full advantage of its high refresh rate display.',
    imageUrl: 'https://m.media-amazon.com/images/I/81mUGg7nS7L._AC_SL1500_.jpg',
  ),
  Item(
    id: 'i3',
    title: 'IPhone 12 Pro Max',
    price: 1000,
    description:
        'Apple iPhone 12 Pro Max was officially released on October 13, 2020. The phone is powered by the new Apple A14 Bionic processor. The smartphone comes with a 6.7 inches Super Retina XDR OLED capacitive touchscreen, 2778 x 1284 pixels resolution and HDR display, True Tone and Wide color (P3) gamut.',
    imageUrl:
        'https://assets.swappie.com/cdn-cgi/image/width=600,height=600,fit=contain,format=auto/swappie-product-iphone-12-pro-max-pacific-blue-back.png',
  ),
  Item(
    id: 'i4',
    title: 'Nike Air Jorden',
    price: 300,
    description:
        'The Air Jordans’ exclusive level relative to other types of footwear has been the reason behind this phenomenon. They made these sneakers with extremely high-quality materials like full-grain calfskin and premium leather uppers. With this, people cannot marvel at the feel and look of a high-quality product and a sense of durability. Ultimately, they can get these sneakers in different styles and colors. And with their preferences, buyers can choose their best sneakers.',
    imageUrl:
        'https://brandastic.com/wp-content/uploads/2018/11/dior-nike-air-jordan-2020.jpg',
  ),
];
