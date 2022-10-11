import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';

final pokemonDS = Provider<PokemonDS>((ref) {
  return _PokemonPokeApi();
});

abstract class PokemonDS {
  Future<List<PokemonEntity>> getPokemons({
    String? name,
    int? id,
    int offset,
  });

  Future<List<PokemonEntity>> getEvolution(String pokemonSpeciesUrl);
}

class _PokemonPokeApi implements PokemonDS {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://pokeapi.co/api/v2/'));

  @override
  Future<List<PokemonEntity>> getPokemons({
    String? name,
    int? id,
    int offset = 0,
  }) async {
    final response = await dio.get(
      'pokemon',
      queryParameters: {
        if (name != null) 'name': name,
        if (id != null) 'id': id,
        'offset': offset,
        'limit': 10,
      },
    );
    List<PokemonEntity> list = [];
    for (final pokemon in response.data['results']) {
      final name = pokemon['name'];
      final pokemonData = await dio.get('pokemon/$name');
      list.add(PokemonEntity.fromJson(pokemonData.data));
    }
    return list;
  }

  @override
  Future<List<PokemonEntity>> getEvolution(String pokemonSpeciesUrl) async {
    final speciesResponse = await Dio().get(pokemonSpeciesUrl);
    final response =
        await Dio().get(speciesResponse.data['evolution_chain']['url']);
    List<PokemonEntity> evolves = [];
    for (final pokemon in response.data['chain']['evolves_to']) {
      final name = pokemon['species']['name'];
      final pokemonData = await dio.get('pokemon/$name');
      evolves.add(PokemonEntity.fromJson(pokemonData.data));
      for (final subPokemon in pokemon['evolves_to']) {
        final subName = subPokemon['species']['name'];
        final subPokemonData = await dio.get('pokemon/$subName');
        evolves.add(PokemonEntity.fromJson(subPokemonData.data));
      }
    }
    return evolves;
  }
}
