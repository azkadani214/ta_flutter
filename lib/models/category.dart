class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "Semua",
    image: "images/all.png",
  ),
  Category(
    title: "Kaos",
    image: "images/shoes.png",
  ),
  Category(
    title: "Katun",
    image: "images/beauty.png",
  ),
  Category(
    title: "Batik",
    image: "images/image1.png",
  ),
  Category(
    title: "Sport",
    image: "images/jewelry.png",
  ),
  Category(
    title: "Jeans",
    image: "images/men.png",
  ),
];
