//@dart=2.9
class Products {
  Products({
    this.name,
    this.image,
  });

  String name;
  String image;

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
      };
}

//static data; you can get it from your API
final prds = [
  {"quantity": 1, "name": "Turkish Steak", "price": '55'},
  {"quantity": 1, "name": "Salmon", "price": '15'},
  {"quantity": 1, "name": "Red Juice", "price": '15'},
  {"quantity": 1, "name": "Cola", "price": '14'},
];
