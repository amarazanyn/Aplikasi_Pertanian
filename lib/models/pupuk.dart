import 'item.dart';

class Pupuk extends Item {
  Pupuk(String name, String description) : super(name, description);

  @override
  String getName() => name;

  @override
  String getDescription() => description;
}
