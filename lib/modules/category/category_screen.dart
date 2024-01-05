import 'package:flutter/material.dart';
import 'package:flutter_getx_base/modules/category/category.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';
import 'package:flutter_getx_base/shared/utils/size_utils.dart';
import 'package:flutter_getx_base/shared/widgets/app_bar_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends GetView<CategoryController> {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.lightBackground,
        appBar: CustomAppBar(
          titles: "Categoriess",
          height: getSize(68),
        ),
        body: Padding(
          padding: getPadding(all: 20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: controller.listBookCategory.length,
            itemBuilder: (context, index) {
              return GridItem(item: controller.listBookCategory[index]);
            },
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final Map<String, String> item;

  GridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(item["title"] ?? ""),
      ),
    );
  }
}
