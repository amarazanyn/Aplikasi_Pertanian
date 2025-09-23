import 'item.dart';

class VarietasPadi extends Item {
  VarietasPadi(String name, String description) : super(name, description);

  @override
  String getName() => name;

  @override
  String getDescription() => description;
}
