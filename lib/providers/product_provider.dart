import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ordering/controllers/product_controller.dart';

final productsProvider = Provider((ref) => ProductsController());
