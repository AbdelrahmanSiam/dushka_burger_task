import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(35),
        child: Image.asset(image),
      ),
      title: Text(title, style: AppStyles.textStyleSemiBold15(context)),
      subtitle: Text(subTitle, style: AppStyles.textStyleMedium13(context)),
      trailing: Container(
        decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
