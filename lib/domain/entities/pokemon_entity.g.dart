// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonEntity _$$_PokemonEntityFromJson(Map<String, dynamic> json) =>
    _$_PokemonEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
              ?.map((e) => PokemonTypeSlot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stats: (json['stats'] as List<dynamic>?)
              ?.map((e) => PokemonStats.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      species: PokemonSpecies.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonEntityToJson(_$_PokemonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'sprites': instance.sprites,
      'types': instance.types,
      'stats': instance.stats,
      'species': instance.species,
    };

_$_PokemonSpecies _$$_PokemonSpeciesFromJson(Map<String, dynamic> json) =>
    _$_PokemonSpecies(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_PokemonSpeciesToJson(_$_PokemonSpecies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$_PokemonSprites _$$_PokemonSpritesFromJson(Map<String, dynamic> json) =>
    _$_PokemonSprites(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      others: json['other'] == null
          ? null
          : PokemonOtherSprites.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonSpritesToJson(_$_PokemonSprites instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'other': instance.others,
    };

_$_PokemonOtherSprites _$$_PokemonOtherSpritesFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonOtherSprites(
      dreamWorld: json['dream_world'] == null
          ? null
          : Sprites.fromJson(json['dream_world'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : Sprites.fromJson(json['home'] as Map<String, dynamic>),
      officialArtwork: json['official-artwork'] == null
          ? null
          : Sprites.fromJson(json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonOtherSpritesToJson(
        _$_PokemonOtherSprites instance) =>
    <String, dynamic>{
      'dream_world': instance.dreamWorld,
      'home': instance.home,
      'official-artwork': instance.officialArtwork,
    };

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
    };

_$_PokemonType _$$_PokemonTypeFromJson(Map<String, dynamic> json) =>
    _$_PokemonType(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_PokemonTypeToJson(_$_PokemonType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$_PokemonTypeSlot _$$_PokemonTypeSlotFromJson(Map<String, dynamic> json) =>
    _$_PokemonTypeSlot(
      slot: json['slot'] as int,
      type: PokemonType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonTypeSlotToJson(_$_PokemonTypeSlot instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$_PokemonStats _$$_PokemonStatsFromJson(Map<String, dynamic> json) =>
    _$_PokemonStats(
      baseStat: json['base_stat'] as int,
      effort: json['effort'] as int,
      stat: Status.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonStatsToJson(_$_PokemonStats instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
