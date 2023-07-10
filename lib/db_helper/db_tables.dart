import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class ProductTable {
  static Future<void> createTable(Database db) async {
    await db.execute(
        'CREATE TABLE products(product_id INTEGER PRIMARY KEY,product_image TEXT, product_sku INTEGER,tag_price DOUBLE,sale_price DOUBLE,product_name TEXT,store_id INTEGER, store_name TEXT,weight INTEGER,description TEXT,costprice INTEGER,barcode INTEGER)');
  }
}

class OrdersTable {
  static Future<void> createTable(Database db) async {
    await db.execute(
        'CREATE TABLE orders(id INTEGER PRIMARY KEY AUTOINCREMENT,subtotal DOUBLE ,discount DOUBLE,returnAmount DOUBLE,dueAmount DOUBLE,total DOUBLE,paidAmount DOUBLE, status TEXT)');
  }
}

class OrderItemsTable {
  static Future<void> createTable(Database db) async {
    await db.execute(
        'CREATE TABLE orderitems(orderitem_id INTEGER PRIMARY KEY AUTOINCREMENT,order_id INTEGER,product_id INTEGER,product_name TEXT,product_price DOUBLE,product_quantity INTEGER,discount DOUBLE,FOREIGN KEY (order_id) REFERENCES orders (id))');
  }
}
