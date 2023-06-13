import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as int;
    final loeadeditems =
        Provider.of<Products>(context, listen: false).findbyid(productId);

    return Scaffold(
      appBar: AppBar(title: Text(loeadeditems!.name)),
    );
  }
}
