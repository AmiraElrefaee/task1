class Serializable {
  tojson() {}
}

class User implements Serializable {
  final String name;
  final int id;
  User({required this.name, required this.id});

  tojson() {
    print('{ "name" : $name , "id" : $id}');
  }
}

class Product implements Serializable {
  final String name;
  final int SerialNum;
  Product({required this.name, required this.SerialNum});
  tojson() {
    print('{ "name" : $name , "SerialNumber" : $SerialNum}');
  }
}

void main() {
  User user = User(name: 'amira', id: 1233);
  user.tojson();
  Product product = Product(name: 'airpods', SerialNum: 6789);
  product.tojson();
}
