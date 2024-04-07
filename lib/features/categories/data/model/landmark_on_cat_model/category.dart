import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String? id;
  final String? name;

  const Category({this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['_id'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
      };

  @override
  List<Object?> get props => [id, name];
}
