
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/models/product.dart';
import 'package:dto/schema.dart';
import 'package:firestore_odm/firestore_odm.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/paddings.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _quantityController =
  TextEditingController(text: '1');

  final odm = FirestoreODM(appSchema, firestore: FirebaseFirestore.instance);

  bool _isSaving = false;

  int? _priceToCents(String input) {
    final value = input.trim().replaceAll(',', '.');

    if (!RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(value)) {
      return null;
    }

    final parts = value.split('.');
    final euros = int.tryParse(parts[0]);
    final cents = parts.length == 2
        ? int.tryParse(parts[1].padRight(2, '0'))
        : 0;

    if (euros == null || cents == null) {
      return null;
    }

    return euros * 100 + cents;
  }

  Future<void> _saveProduct() async {
    if (_isSaving || !_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _isSaving = true);

    try {
      final product = Product(
        id: '',
        name: _nameController.text.trim(),
        description: _descriptionController.text.trim(),
        priceCents: _priceToCents(
          _priceController.text,
        )!,
        quantity: int.parse(_quantityController.text.trim()),
        createdAt: DateTime.now(),
      );

      final productId = await odm.products.create(product);

      _formKey.currentState!.reset();
      _nameController.clear();
      _descriptionController.clear();
      _priceController.clear();
      _quantityController.text = '1';

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Produit ajouté avec succès ! ID : $productId',
          ),
          backgroundColor: Colors.green,
        ),
      );
    } catch (error) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Erreur lors de l’ajout : $error',
          ),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingM),
      child: Container(
        padding: const EdgeInsets.all(kPaddingM),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(kPaddingM),
          border: Border.all(color: kLightGreen),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Ajouter un produit',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // NOM
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nom du produit',
                  prefixIcon: Icon(Icons.shopping_bag_outlined),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Veuillez saisir un nom';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: _descriptionController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  prefixIcon: Icon(Icons.description_outlined),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: _priceController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  labelText: 'Prix (€)',
                  hintText: 'Exemple : 12,50',
                  prefixIcon: Icon(Icons.euro),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  final cents = _priceToCents(value ?? '');

                  if (cents == null || cents <= 0) {
                    return 'Saisissez un prix valide supérieur à 0';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: _quantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Quantité',
                  prefixIcon: Icon(Icons.inventory_2_outlined),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  final quantity = int.tryParse(
                    value?.trim() ?? '',
                  );

                  if (quantity == null || quantity < 0) {
                    return 'Saisissez une quantité valide';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 24),

              // ENREGISTRER
              ElevatedButton.icon(
                onPressed: _isSaving ? null : _saveProduct,
                icon: _isSaving
                    ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )
                    : const Icon(Icons.add),
                label: Text(
                  _isSaving
                      ? 'Enregistrement...'
                      : 'Ajouter le produit',
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
