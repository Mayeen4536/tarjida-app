class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: 'Ghee',
        desc: 'Original Hand Crafted Ghee that you will crave for',
        price: 800,
        color: '#33505a',
        image: 'assets/images/Ghee.jpg')
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
