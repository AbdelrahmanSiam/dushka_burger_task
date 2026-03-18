class SingleGroupAddonEntity {
  final String addonHeaderName, addonName;
  final bool isRequired, isSelected;
  final double price;

  SingleGroupAddonEntity({
    required this.addonHeaderName,
    required this.addonName,
    required this.isRequired,
    required this.isSelected,
    required this.price,
  });
}
