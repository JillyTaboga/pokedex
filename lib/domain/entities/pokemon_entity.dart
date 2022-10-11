import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_entity.freezed.dart';
part 'pokemon_entity.g.dart';

@freezed
class PokemonEntity with _$PokemonEntity {
  const PokemonEntity._();
  const factory PokemonEntity({
    required int id,
    required String name,
    required int height,
    required int weight,
    required PokemonSprites sprites,
    @Default([]) List<PokemonTypeSlot> types,
    @Default([]) List<PokemonStats> stats,
    required PokemonSpecies species,
  }) = _PokemonEntity;

  factory PokemonEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonEntityFromJson(json);

  List<String> spriteInOrder() {
    List<String> spritesUrl = [];
    if (sprites.others != null) {
      // if (sprites.others!.dreamWorld != null) {
      //   spritesUrl.addAll(sprites.others!.dreamWorld!.spritesInOrder());
      // }
      if (sprites.others!.home != null) {
        spritesUrl.addAll(sprites.others!.home!.spritesInOrder());
      }
      if (sprites.others!.officialArtwork != null) {
        spritesUrl.addAll(sprites.others!.officialArtwork!.spritesInOrder());
      }
    }
    if (sprites.frontDefault?.isNotEmpty ?? false) {
      spritesUrl.add(sprites.frontDefault!);
    }
    if (sprites.frontFemale?.isNotEmpty ?? false) {
      spritesUrl.add(sprites.frontFemale!);
    }
    if (sprites.frontShiny?.isNotEmpty ?? false) {
      spritesUrl.add(sprites.frontShiny!);
    }
    return spritesUrl;
  }

  List<String> spriteInOrderBacks() {
    List<String> spritesUrl = [];
    if (sprites.others != null) {
      // if (sprites.others!.dreamWorld != null) {
      //   spritesUrl.addAll(sprites.others!.dreamWorld!.spritesInOrder());
      // }
      if (sprites.others!.home != null) {
        spritesUrl.addAll(sprites.others!.home!.spritesInOrderBack());
      }
      if (sprites.others!.officialArtwork != null) {
        spritesUrl
            .addAll(sprites.others!.officialArtwork!.spritesInOrderBack());
      }
    }
    if (sprites.backDefault?.isNotEmpty ?? false) {
      spritesUrl.add(sprites.backDefault!);
    }
    if (sprites.backFemale?.isNotEmpty ?? false) {
      spritesUrl.add(sprites.backFemale!);
    }
    if (sprites.backShiny?.isNotEmpty ?? false) {
      spritesUrl.add(sprites.backShiny!);
    }
    return spritesUrl;
  }
}

@freezed
class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies({
    required String name,
    required String url,
  }) = _PokemonSpecies;

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesFromJson(json);
}

@freezed
class PokemonSprites with _$PokemonSprites {
  const factory PokemonSprites({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_female') String? backFemale,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'other') PokemonOtherSprites? others,
  }) = _PokemonSprites;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
}

@freezed
class PokemonOtherSprites with _$PokemonOtherSprites {
  const factory PokemonOtherSprites({
    @JsonKey(name: 'dream_world') Sprites? dreamWorld,
    Sprites? home,
    @JsonKey(name: 'official-artwork') Sprites? officialArtwork,
  }) = _PokemonOtherSprites;

  factory PokemonOtherSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonOtherSpritesFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  const Sprites._();
  const factory Sprites({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_female') String? backFemale,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);

  List<String> spritesInOrder() {
    List<String> sprites = [];
    if (frontDefault?.isNotEmpty ?? false) {
      sprites.add(frontDefault!);
    }
    if (frontFemale?.isNotEmpty ?? false) {
      sprites.add(frontFemale!);
    }
    if (frontShiny?.isNotEmpty ?? false) {
      sprites.add(frontShiny!);
    }
    return sprites;
  }

  List<String> spritesInOrderBack() {
    List<String> sprites = [];
    if (backDefault?.isNotEmpty ?? false) {
      sprites.add(backDefault!);
    }
    if (backFemale?.isNotEmpty ?? false) {
      sprites.add(backFemale!);
    }
    if (backShiny?.isNotEmpty ?? false) {
      sprites.add(backShiny!);
    }
    return sprites;
  }
}

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required String name,
    required String url,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

@freezed
class PokemonTypeSlot with _$PokemonTypeSlot {
  const factory PokemonTypeSlot({
    required int slot,
    required PokemonType type,
  }) = _PokemonTypeSlot;

  factory PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);
}

@freezed
class PokemonStats with _$PokemonStats {
  const factory PokemonStats({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required Status stat,
  }) = _PokemonStats;

  factory PokemonStats.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatsFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    required String name,
    required String url,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
