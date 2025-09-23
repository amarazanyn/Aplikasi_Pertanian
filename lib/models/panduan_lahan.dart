import 'item.dart';

class Panduan extends Item {
  Panduan(String name, String description) : super(name, description);

  @override
  String getName() => name;

  @override
  String getDescription() => description;
}
