import 'package:flutter/material.dart';
import 'package:skin_app/dto/products.dart';
import 'package:skin_app/services/db_helper.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Future<List<Products>>? products;
  late String _name;
  late String _detail;
  bool isUpdate = false;
  late int? productIdForUpdate;
  late DBHelper dbHelper;
  final _productNameController = TextEditingController();
  final _productDetailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    refreshProductLists();
  }

  @override
  void dispose() {
    _productNameController.dispose();
    _productDetailController.dispose();
    dbHelper.close();
    super.dispose();
  }

  void cancelTextEditing() {
    _productNameController.text = '';
    _productDetailController.text = '';
    setState(() {
      isUpdate = false;
      productIdForUpdate = null;
    });
    closeKeyboard();
  }

  void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Future<void> refreshProductLists() async {
    try {
      await dbHelper.initDatabase();
      setState(() {
        products = dbHelper.getProducts();
        isUpdate = false;
      });
    } catch (error) {
      debugPrint('Error fetching products: $error');
    }
  }

  void createOrUpdateProducts() {
    _formStateKey.currentState?.save();
    if (!isUpdate) {
      dbHelper.add(Products(null, _name, _detail));
    } else {
      dbHelper.update(Products(productIdForUpdate, _name, _detail));
    }
    _productNameController.text = '';
    _productDetailController.text = '';
    refreshProductLists();
  }

  void editFormProduct(BuildContext context, Products product) {
    setState(() {
      isUpdate = true;
      productIdForUpdate = product.id;
    });
    _productNameController.text = product.name;
    _productDetailController.text = product.detail;
  }

  void deleteProduct(BuildContext context, int productID) {
    setState(() {
      isUpdate = false;
    });
    _productNameController.text = '';
    _productDetailController.text = '';
    dbHelper.delete(productID);
    refreshProductLists();
  }

  @override
  Widget build(BuildContext context) {
    var textFormField = TextFormField(
      onSaved: (value) {
        _name = value!;
      },
      autofocus: false,
      controller: _productNameController,
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: !isUpdate ? Colors.teal : Colors.purple,
                  width: 2,
                  style: BorderStyle.solid)),
          labelText: !isUpdate ? 'Add Product Name' : 'Edit Product Name',
          icon: Icon(Icons.favorite,
              color: !isUpdate ? Colors.teal : Colors.purple),
          fillColor: Colors.white,
          labelStyle:
              TextStyle(color: !isUpdate ? Colors.teal : Colors.purple)),
    );

    var detailTextFormField = TextFormField(
      onSaved: (value) {
        _detail = value!;
      },
      autofocus: false,
      controller: _productDetailController,
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: !isUpdate ? Colors.teal : Colors.purple,
                  width: 2,
                  style: BorderStyle.solid)),
          labelText: !isUpdate ? 'Add Product Detail' : 'Edit Product Detail',
          icon:
              Icon(Icons.notes, color: !isUpdate ? Colors.teal : Colors.purple),
          fillColor: Colors.white,
          labelStyle:
              TextStyle(color: !isUpdate ? Colors.teal : Colors.purple)),
    );

    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Add Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
              key: _formStateKey,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: textFormField),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: detailTextFormField,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      createOrUpdateProducts();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: !isUpdate
                          ? Colors.teal
                          : Colors.purple, // Set background color
                      foregroundColor: Colors.white,
                    ),
                    child:
                        !isUpdate ? const Text('Save') : const Text('Update')),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    cancelTextEditing();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Set background color
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Cancel'),
                ),
              ],
            ),
            const Divider(),
            Expanded(
              child: FutureBuilder<List<Products>>(
                future: products,
                builder: (context, AsyncSnapshot<List<Products>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError || !snapshot.hasData) {
                    return Center(child: Text('No Data'));
                  }
                  final List<Products> productList = snapshot.data!;
                  return generateList(productList);
                },
              ),
            )
          ],
        ));
  }

  Widget generateList(List<Products> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) => Slidable(
        key: ValueKey(index),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) => editFormProduct(context, products[index]),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
            ),
            SlidableAction(
              onPressed: (context) =>
                  deleteProduct(context, products[index].id!),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: ListTile(
          title: Text(products[index].name),
          subtitle: Text(products[index].detail),
        ),
      ),
    );
  }
}
