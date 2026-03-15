import 'package:flutter/material.dart';
import '../models/drinks.dart';
import '../services/drink_service.dart';
import 'package:intl/intl.dart';
import '../main.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DrinkService service = DrinkService();
  final formatRupiah = NumberFormat("#,###", "id_ID");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        title: const Text(
          "Selalu Teh",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              MyApp.of(context).toggleTheme();
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FormPage()),
          );
          setState(() {});
        },
      ),

      body: FutureBuilder<List<Drink>>(
        future: service.getDrinks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          final drinks = snapshot.data ?? [];

          if (drinks.isEmpty) {
            return const Center(child: Text("Belum ada menu minuman"));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(12),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.70,
            ),

            itemCount: drinks.length,

            itemBuilder: (context, index) {
              final drink = drinks[index];

              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                padding: const EdgeInsets.all(10),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        drink.imageUrl,
                        height: 210,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Center(
                      child: Text(
                        drink.name,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Rp ${formatRupiah.format(drink.price)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        fontSize: 14,
                      ),
                    ),

                    Text(
                      "Level Manis: ${drink.sugarLevel}",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),

                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FormPage(drink: drink),
                              ),
                            );
                            setState(() {});
                          },
                        ),

                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () async {
                            bool? confirm = await showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Konfirmasi Hapus"),
                                  content: const Text(
                                    "Apakah kamu yakin ingin menghapus menu ini?",
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, false);
                                      },
                                      child: const Text("Batal"),
                                    ),

                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, true);
                                      },
                                      child: const Text("Hapus"),
                                    ),
                                  ],
                                );
                              },
                            );

                            if (confirm == true) {
                              await service.deleteDrink(drink.id!);
                              setState(() {});
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
