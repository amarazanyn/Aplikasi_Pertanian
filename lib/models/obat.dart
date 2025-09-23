import 'item.dart';

class Obat extends Item {
  Obat(String name, String description) : super(name, description);

  @override
  String getName() => name;

  @override
  String getDescription() => description;
}
