import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ward/core/viewModel/home_view_model.dart';
import 'package:ward/view/widgets/custom_text.dart';

import '../utils/utils.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      // init: Get.find(),
      builder: (controller) => controller.loading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Column(
                    children: [
                      // _searchTextFormField(),
                      SizedBox(
                        height: 30,
                      ),
                      const CustomText(
                        text: "Categories",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _listViewCategory(),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     CustomText(
                      //       text: "Best Selling",
                      //       fontSize: 18,
                      //     ),
                      //     CustomText(
                      //       text: "See all",
                      //       fontSize: 16,
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // _listViewProducts(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _listViewCategory() {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Container(
        height: 200,
        child: ListView.separated(
          itemCount: controller.categoryModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade100,
                  ),
                  height: 160,
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      controller.categoryModel[index].image ?? "",
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        // THIS WILL MAKE ITS WAY TO THE ERROR HANDLER IF IT DOES NOT EXIST
                        return Icon(Icons.error_outline);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                CustomText(
                  text: controller.categoryModel[index].name ?? "",
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 20,
          ),
        ),
      ),
    );
  }

  Widget _listViewProducts() {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Container(
        height: 350,
        child: ListView.separated(
          itemCount: controller.productModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Get.to(DetailsView(
                //   model: controller.productModel[index],
                // ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade100,
                      ),
                      child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width * .4,
                          child: Image.network(
                            controller.productModel[index].image!,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      text: controller.productModel[index].name!,
                      alignment: Alignment.bottomLeft,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: CustomText(
                        text: controller.productModel[index].description!,
                        color: Colors.grey,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      text: "${controller.productModel[index].price} \$",
                      color: ColorManager.primary,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            width: 20,
          ),
        ),
      ),
    );
  }
}
