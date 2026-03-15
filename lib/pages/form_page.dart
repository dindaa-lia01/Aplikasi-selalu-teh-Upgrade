import 'package:flutter/material.dart';
import '../models/drinks.dart';
import '../services/drink_service.dart';

class FormPage extends StatefulWidget {
  final Drink? drink;

  const FormPage({super.key, this.drink});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  String? selectedSugar;

  final DrinkService service = DrinkService();

  @override
  void initState() {
    super.initState();

    if (widget.drink != null) {
      nameController.text = widget.drink!.name;
      priceController.text = widget.drink!.price.toString();
      imageController.text = widget.drink!.imageUrl;
      selectedSugar = widget.drink!.sugarLevel;
    }
  }

  void saveDrink() async {
    if (!_formKey.currentState!.validate()) return;

    try {
      Drink newDrink = Drink(
        name: nameController.text,
        price: int.parse(priceController.text),
        sugarLevel: selectedSugar!,
        imageUrl: imageController.text,
      );

      if (widget.drink == null) {
        await service.addDrink(newDrink);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Menu berhasil ditambahkan")),
        );
      } else {
        await service.updateDrink(widget.drink!.id!, newDrink);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Menu berhasil diperbarui")),
        );
      }

      Navigator.pop(context);
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Terjadi error: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(widget.drink == null ? "Tambah Menu" : "Edit Menu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Form(
          key: _formKey,

          child: ListView(
            children: [
              /// NAMA
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Nama Minuman",
                  hintText: "Masukkan nama minuman",
                ),

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Nama menu wajib diisi";
                  }

                  if (RegExp(r'[0-9]').hasMatch(value)) {
                    return "Nama harus berupa huruf";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 16),

              /// HARGA
              TextFormField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Harga",
                  hintText: "Masukkan harga",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Harga wajib diisi";
                  }

                  if (int.tryParse(value) == null) {
                    return "Harga harus berupa angka";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 16),

              /// LEVEL GULA
              DropdownButtonFormField<String>(
                value: selectedSugar,

                decoration: const InputDecoration(labelText: "Level Manis"),

                items: ["Normal", "Less Sugar", "No Sugar"]
                    .map(
                      (sugar) =>
                          DropdownMenuItem(value: sugar, child: Text(sugar)),
                    )
                    .toList(),

                onChanged: (value) {
                  setState(() {
                    selectedSugar = value;
                  });
                },

                validator: (value) {
                  if (value == null) {
                    return "Level manis wajib dipilih";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              /// URL GAMBAR
              TextFormField(
                controller: imageController,

                decoration: const InputDecoration(
                  labelText: "Link Gambar",
                  hintText: "Masukkan URL gambar",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Link gambar wajib diisi";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: saveDrink,
                child: const Text("Simpan Menu"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
