class Donar {
  String name, message, amount;

  Donar(this.amount, this.name, this.message);

  Donar.fromJson(Map<String, dynamic> json)
      : amount = json['amount'],
        name = json['name'],
        message = json['message'];

  Map<String, dynamic> toJson() =>
      {'amount': amount, 'name': name, 'message': message};
}
