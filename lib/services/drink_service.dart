import '../config/supabase_config.dart';
import '../models/drinks.dart';

class DrinkService {
  final supabase = SupabaseConfig.client;

  Future<List<Drink>> getDrinks() async {
    final response = await supabase.from('menus').select();

    return (response as List).map((e) => Drink.fromJson(e)).toList();
  }

  Future<void> addDrink(Drink drink) async {
    await supabase.from('menus').insert(drink.toJson());
  }

  Future<void> updateDrink(int id, Drink drink) async {
    await supabase.from('menus').update(drink.toJson()).eq('id', id);
  }

  Future<void> deleteDrink(int id) async {
    await supabase.from('menus').delete().eq('id', id);
  }
}
