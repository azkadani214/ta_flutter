import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Pastikan impor ini ada

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.seller,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<Product> all = [
  Product(
    title: "Kain Kombed 20s",
    description:
        "Kain kombed 20s adalah kain berkualitas tinggi yang terbuat dari serat kapas 100%. Kain ini sangat lembut dan nyaman saat dipakai, cocok untuk berbagai keperluan seperti membuat kaos, kemeja, atau bahkan celana. Dengan berbagai pilihan warna yang tersedia, Anda bisa menciptakan pakaian yang sesuai dengan gaya Anda.",
    image: "images/all/kain_kombed.png",
    price: 120,
    seller: "Toko Kain Abadi",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Kaos",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Kain Kaos FLeece",
    description:
        "Kain kombed 20s adalah kain berkualitas tinggi yang terbuat dari serat kapas 100%. Kain ini sangat lembut dan nyaman saat dipakai, cocok untuk berbagai keperluan seperti membuat kaos, kemeja, atau bahkan celana. Dengan berbagai pilihan warna yang tersedia, Anda bisa menciptakan pakaian yang sesuai dengan gaya Anda.",
    image: "images/all/kain_kombed2.png",
    price: 120,
    seller: "Toko Kain Abadi",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Kaos",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Kain Katun",
    description:
        "Kain katun adalah kain yang terbuat dari serat kapas alami. Kain ini sangat lembut dan cocok untuk membuat berbagai jenis pakaian seperti baju, celana, atau rok. Dengan berbagai pilihan warna dan pola yang tersedia, Anda bisa berkreasi sesuai dengan selera Anda.",
    image: "images/all/kain_katun.jpg",
    price: 120,
    seller: "Toko Kain Indah",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Katun",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Kain Batik",
    description:
        "Kain batik adalah kain tradisional Indonesia yang memiliki corak unik dan khas. Kain ini dibuat dengan teknik pewarnaan khusus sehingga menghasilkan pola yang indah dan beragam. Cocok untuk berbagai keperluan seperti membuat baju, dress, atau aksesori lainnya.",
    image: "images/all/kain_batik.png",
    price: 55,
    seller: "Toko Batik Ceria",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Batik",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Kain Batik",
    description:
        "Kain batik adalah kain tradisional Indonesia yang memiliki corak unik dan khas. Kain ini dibuat dengan teknik pewarnaan khusus sehingga menghasilkan pola yang indah dan beragam. Cocok untuk berbagai keperluan seperti membuat baju, dress, atau aksesori lainnya.",
    image: "images/all/kain_batik2.png",
    price: 55,
    seller: "Toko Batik Ceria",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Batik",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Kain Sport",
    description:
        "Kain sport adalah kain yang dirancang khusus untuk kegiatan olahraga. Kain ini memiliki teknologi yang membuatnya cepat kering dan nyaman dipakai selama beraktivitas. Dengan berbagai pilihan warna dan desain yang trendy, Anda akan tampil stylish di setiap kesempatan.",
    image: "images/all/kain_sport.jpg",
    price: 155,
    seller: "Toko Sport Berkah",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Sport",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Kain Jeans",
    description:
        "Kain jeans adalah kain tebal yang biasa digunakan untuk membuat celana jeans. Kain ini sangat kuat dan tahan lama, cocok untuk digunakan dalam berbagai aktivitas sehari-hari. Dengan desain yang timeless, celana jeans dari kain ini akan menjadi salah satu item favorit dalam lemari pakaian Anda.",
    image: "images/all/kain_jeans.png",
    price: 1000,
    seller: "Toko Jeans Trendy",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "Jeans",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];

String formatRupiah(double amount) {
  final formatCurrency = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
  return formatCurrency.format(amount);
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: all.length,
        itemBuilder: (context, index) {
          final product = all[index];
          return ListTile(
            leading: Image.asset(product.image),
            title: Text(product.title),
            subtitle: Text(formatRupiah(product.price)),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductList(),
  ));
}
