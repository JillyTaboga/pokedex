import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/data_source/pokemon_data_source.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';

final getPokemonsUseCase =
    FutureProvider.family<List<PokemonEntity>, GetPokemonsParameters>((
  ref,
  paramenters,
) async {
  final ds = ref.watch(pokemonDS);
  return await ds.getPokemons(
    id: paramenters.id,
    name: paramenters.name,
    offset: paramenters.offset,
  );
});

class GetPokemonsParameters {
  final String? name;
  final int? id;
  final int offset;
  GetPokemonsParameters({
    this.name,
    this.id,
    required this.offset,
  });
}
