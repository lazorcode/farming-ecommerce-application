import 'package:ecommerce/common/widgets/loader.dart';
import 'package:ecommerce/constants/global_variables.dart';
import 'package:ecommerce/features/account/widgets/single_product.dart';
import 'package:ecommerce/features/admin/screens/add_product_screen.dart';
import 'package:ecommerce/features/admin/services/admin_services.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<Product>? products;
  final AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  fetchAllProducts() async {
    products = await adminServices.fetchAllProducts(context);
    setState(() {});
  }

  void deleteProduct(Product product, int index) {
    adminServices.deleteProduct(
      context: context,
      product: product,
      onSuccess: () {
        products!.removeAt(index);
        setState(() {});
      },
    );
  }

  void navigateToAddProduct() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return products == null
        ? const Loader()
        : Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: GridView.builder(
                itemCount: products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    mainAxisSpacing: 7,
                    crossAxisCount: 2,
                    crossAxisSpacing: 7),
                itemBuilder: (context, index) {
                  final productData = products![index];
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black26)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 130,
                          child: SingleProduct(
                            image: productData.images[0],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  productData.name,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () =>
                                  deleteProduct(productData, index),
                              icon: const Icon(
                                Icons.delete_outline,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\$${productData.price}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            floatingActionButton: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: GlobalVariables.selectedNavBarColor,
              onPressed: navigateToAddProduct,
              tooltip: 'Add a Product',
              child: const Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}
