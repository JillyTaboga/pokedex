import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/use_cases/get_evolution_use_case.dart';
import 'package:pokedex/domain/use_cases/get_pokemons_use_case.dart';

final loadingProvider = StateProvider<bool>((ref) {
  return false;
});

final currentOffsetProvider = StateProvider<int>((ref) {
  return 0;
});

final selectedPokemonProvider = StateProvider<PokemonEntity?>((ref) {
  return;
});

final pokemonsProvider = FutureProvider<List<PokemonEntity>>((ref) async {
  final currentOffset = ref.watch(currentOffsetProvider);
  return await ref.read(
    getPokemonsUseCase(
      GetPokemonsParameters(
        offset: currentOffset,
      ),
    ).future,
  );
});

final spritesProvider = Provider<List<String>>((ref) {
  final pokemon = ref.watch(selectedPokemonProvider);
  if (pokemon == null) return [];
  final isBack = ref.watch(isBackProvider);
  return isBack ? pokemon.spriteInOrderBacks() : pokemon.spriteInOrder();
});

final currentSpriteProvider =
    StateNotifierProvider<CurrentSpriteNotifier, String>((ref) {
  final sprites = ref.watch(spritesProvider);
  return CurrentSpriteNotifier(sprites: sprites);
});

class CurrentSpriteNotifier extends StateNotifier<String> {
  CurrentSpriteNotifier({
    required this.sprites,
  }) : super(sprites.first);

  final List<String> sprites;

  advance() {
    final currentIndex = sprites.indexOf(state);
    if (currentIndex < sprites.length - 1) {
      state = sprites[currentIndex + 1];
    } else {
      state = sprites.first;
    }
  }

  back() {
    final currentIndex = sprites.indexOf(state);
    if (currentIndex > 0) {
      state = sprites[currentIndex - 1];
    } else {
      state = sprites.last;
    }
  }
}

final evolutionsProvider = FutureProvider<List<PokemonEntity>>((ref) async {
  final selectedPokemon = ref.watch(selectedPokemonProvider);
  if (selectedPokemon == null) return [];
  final evolutions =
      await ref.watch(getEvolutionsUseCase(selectedPokemon.species.url).future);
  return evolutions;
});

final isBackProvider = StateProvider<bool>((ref) {
  return false;
});
