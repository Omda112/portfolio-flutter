class MobilePhone {
  final String brand;
  final String model;
  final int? storage;
  final double price;
  final String serialNumber;

  MobilePhone({
    required this.brand,
    required this.model,
    this.storage,
    this.price = 1000.0,
    required this.serialNumber,
  });

  MobilePhone.withDefaultStorage({
    required this.brand,
    required this.model,
    int? storage,
    this.price = 1000.0,
    required this.serialNumber,
  }) : storage = storage ?? 128;

  const MobilePhone.constant({
    required this.brand,
    required this.model,
    this.storage,
    this.price = 1000.0,
    required this.serialNumber,
  });

  @override
  String toString() {
    return "📱 Brand: $brand | Model: $model | Storage: ${storage ?? 'Not specified'} GB | Price: \$$price | Serial: $serialNumber";
  }

  MobilePhone copyWith({
    String? brand,
    String? model,
    int? storage,
    double? price,
    String? serialNumber,
  }) {
    return MobilePhone(
      brand: brand ?? this.brand,
      model: model ?? this.model,
      storage: storage ?? this.storage,
      price: price ?? this.price,
      serialNumber: serialNumber ?? this.serialNumber,
    );
  }
}

void main() {
  var phone1 = MobilePhone(
    brand: "Samsung",
    model: "Galaxy S23",
    storage: 256,
    price: 1200.0,
    serialNumber: "SN12345678",
  );

  var phone2 = MobilePhone.withDefaultStorage(
    brand: "Apple",
    model: "iPhone 15",
    serialNumber: "SN87654321",
  );

  const phone3 = MobilePhone.constant(
    brand: "Google",
    model: "Pixel 8",
    storage: 128,
    serialNumber: "SN99887766",
  );

  print(phone1);
  print(phone2);
  print(phone3);

  var phone4 = phone1.copyWith(model: "Galaxy S24", storage: 512);
  print(phone4);

  var phone5 = phone1.copyWith(price: 850.0, storage: 512);
  print(phone5);
}