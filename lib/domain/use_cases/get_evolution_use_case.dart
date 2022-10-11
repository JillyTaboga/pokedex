import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/data_source/pokemon_data_source.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';

final getEvolutionsUseCase =
    FutureProvider.family<List<PokemonEntity>, String>((ref, speciesUrl) async {
  final ds = ref.watch(pokemonDS);
  return await ds.getEvolution(speciesUrl);
});
