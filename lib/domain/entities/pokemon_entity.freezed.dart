// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonEntity _$PokemonEntityFromJson(Map<String, dynamic> json) {
  return _PokemonEntity.fromJson(json);
}

/// @nodoc
mixin _$PokemonEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  PokemonSprites get sprites => throw _privateConstructorUsedError;
  List<PokemonTypeSlot> get types => throw _privateConstructorUsedError;
  List<PokemonStats> get stats => throw _privateConstructorUsedError;
  PokemonSpecies get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonEntityCopyWith<PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntityCopyWith<$Res> {
  factory $PokemonEntityCopyWith(
          PokemonEntity value, $Res Function(PokemonEntity) then) =
      _$PokemonEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      PokemonSprites sprites,
      List<PokemonTypeSlot> types,
      List<PokemonStats> stats,
      PokemonSpecies species});

  $PokemonSpritesCopyWith<$Res> get sprites;
  $PokemonSpeciesCopyWith<$Res> get species;
}

/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._value, this._then);

  final PokemonEntity _value;
  // ignore: unused_field
  final $Res Function(PokemonEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? sprites = freezed,
    Object? types = freezed,
    Object? stats = freezed,
    Object? species = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStats>,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ));
  }

  @override
  $PokemonSpritesCopyWith<$Res> get sprites {
    return $PokemonSpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value));
    });
  }

  @override
  $PokemonSpeciesCopyWith<$Res> get species {
    return $PokemonSpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonEntityCopyWith<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  factory _$$_PokemonEntityCopyWith(
          _$_PokemonEntity value, $Res Function(_$_PokemonEntity) then) =
      __$$_PokemonEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      PokemonSprites sprites,
      List<PokemonTypeSlot> types,
      List<PokemonStats> stats,
      PokemonSpecies species});

  @override
  $PokemonSpritesCopyWith<$Res> get sprites;
  @override
  $PokemonSpeciesCopyWith<$Res> get species;
}

/// @nodoc
class __$$_PokemonEntityCopyWithImpl<$Res>
    extends _$PokemonEntityCopyWithImpl<$Res>
    implements _$$_PokemonEntityCopyWith<$Res> {
  __$$_PokemonEntityCopyWithImpl(
      _$_PokemonEntity _value, $Res Function(_$_PokemonEntity) _then)
      : super(_value, (v) => _then(v as _$_PokemonEntity));

  @override
  _$_PokemonEntity get _value => super._value as _$_PokemonEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? sprites = freezed,
    Object? types = freezed,
    Object? stats = freezed,
    Object? species = freezed,
  }) {
    return _then(_$_PokemonEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      types: types == freezed
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      stats: stats == freezed
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStats>,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonEntity extends _PokemonEntity {
  const _$_PokemonEntity(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.sprites,
      final List<PokemonTypeSlot> types = const [],
      final List<PokemonStats> stats = const [],
      required this.species})
      : _types = types,
        _stats = stats,
        super._();

  factory _$_PokemonEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final PokemonSprites sprites;
  final List<PokemonTypeSlot> _types;
  @override
  @JsonKey()
  List<PokemonTypeSlot> get types {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonStats> _stats;
  @override
  @JsonKey()
  List<PokemonStats> get stats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  final PokemonSpecies species;

  @override
  String toString() {
    return 'PokemonEntity(id: $id, name: $name, height: $height, weight: $weight, sprites: $sprites, types: $types, stats: $stats, species: $species)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.sprites, sprites) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other.species, species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(sprites),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(species));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonEntityCopyWith<_$_PokemonEntity> get copyWith =>
      __$$_PokemonEntityCopyWithImpl<_$_PokemonEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonEntityToJson(
      this,
    );
  }
}

abstract class _PokemonEntity extends PokemonEntity {
  const factory _PokemonEntity(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      required final PokemonSprites sprites,
      final List<PokemonTypeSlot> types,
      final List<PokemonStats> stats,
      required final PokemonSpecies species}) = _$_PokemonEntity;
  const _PokemonEntity._() : super._();

  factory _PokemonEntity.fromJson(Map<String, dynamic> json) =
      _$_PokemonEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  PokemonSprites get sprites;
  @override
  List<PokemonTypeSlot> get types;
  @override
  List<PokemonStats> get stats;
  @override
  PokemonSpecies get species;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonEntityCopyWith<_$_PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpecies _$PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return _PokemonSpecies.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpecies {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesCopyWith<PokemonSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesCopyWith<$Res> {
  factory $PokemonSpeciesCopyWith(
          PokemonSpecies value, $Res Function(PokemonSpecies) then) =
      _$PokemonSpeciesCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._value, this._then);

  final PokemonSpecies _value;
  // ignore: unused_field
  final $Res Function(PokemonSpecies) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonSpeciesCopyWith<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  factory _$$_PokemonSpeciesCopyWith(
          _$_PokemonSpecies value, $Res Function(_$_PokemonSpecies) then) =
      __$$_PokemonSpeciesCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PokemonSpeciesCopyWithImpl<$Res>
    extends _$PokemonSpeciesCopyWithImpl<$Res>
    implements _$$_PokemonSpeciesCopyWith<$Res> {
  __$$_PokemonSpeciesCopyWithImpl(
      _$_PokemonSpecies _value, $Res Function(_$_PokemonSpecies) _then)
      : super(_value, (v) => _then(v as _$_PokemonSpecies));

  @override
  _$_PokemonSpecies get _value => super._value as _$_PokemonSpecies;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonSpecies(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpecies implements _PokemonSpecies {
  const _$_PokemonSpecies({required this.name, required this.url});

  factory _$_PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpeciesFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonSpecies(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSpecies &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonSpeciesCopyWith<_$_PokemonSpecies> get copyWith =>
      __$$_PokemonSpeciesCopyWithImpl<_$_PokemonSpecies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpeciesToJson(
      this,
    );
  }
}

abstract class _PokemonSpecies implements PokemonSpecies {
  const factory _PokemonSpecies(
      {required final String name,
      required final String url}) = _$_PokemonSpecies;

  factory _PokemonSpecies.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpecies.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpeciesCopyWith<_$_PokemonSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) {
  return _PokemonSprites.fromJson(json);
}

/// @nodoc
mixin _$PokemonSprites {
  @JsonKey(name: 'back_default')
  String? get backDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_female')
  String? get backFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String? get backShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_female')
  String? get frontFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'other')
  PokemonOtherSprites? get others => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpritesCopyWith<PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesCopyWith<$Res> {
  factory $PokemonSpritesCopyWith(
          PokemonSprites value, $Res Function(PokemonSprites) then) =
      _$PokemonSpritesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'back_default') String? backDefault,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      @JsonKey(name: 'other') PokemonOtherSprites? others});

  $PokemonOtherSpritesCopyWith<$Res>? get others;
}

/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._value, this._then);

  final PokemonSprites _value;
  // ignore: unused_field
  final $Res Function(PokemonSprites) _then;

  @override
  $Res call({
    Object? backDefault = freezed,
    Object? backFemale = freezed,
    Object? backShiny = freezed,
    Object? frontDefault = freezed,
    Object? frontFemale = freezed,
    Object? frontShiny = freezed,
    Object? others = freezed,
  }) {
    return _then(_value.copyWith(
      backDefault: backDefault == freezed
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backFemale: backFemale == freezed
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: backShiny == freezed
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: frontFemale == freezed
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: frontShiny == freezed
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      others: others == freezed
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as PokemonOtherSprites?,
    ));
  }

  @override
  $PokemonOtherSpritesCopyWith<$Res>? get others {
    if (_value.others == null) {
      return null;
    }

    return $PokemonOtherSpritesCopyWith<$Res>(_value.others!, (value) {
      return _then(_value.copyWith(others: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonSpritesCopyWith<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  factory _$$_PokemonSpritesCopyWith(
          _$_PokemonSprites value, $Res Function(_$_PokemonSprites) then) =
      __$$_PokemonSpritesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'back_default') String? backDefault,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      @JsonKey(name: 'other') PokemonOtherSprites? others});

  @override
  $PokemonOtherSpritesCopyWith<$Res>? get others;
}

/// @nodoc
class __$$_PokemonSpritesCopyWithImpl<$Res>
    extends _$PokemonSpritesCopyWithImpl<$Res>
    implements _$$_PokemonSpritesCopyWith<$Res> {
  __$$_PokemonSpritesCopyWithImpl(
      _$_PokemonSprites _value, $Res Function(_$_PokemonSprites) _then)
      : super(_value, (v) => _then(v as _$_PokemonSprites));

  @override
  _$_PokemonSprites get _value => super._value as _$_PokemonSprites;

  @override
  $Res call({
    Object? backDefault = freezed,
    Object? backFemale = freezed,
    Object? backShiny = freezed,
    Object? frontDefault = freezed,
    Object? frontFemale = freezed,
    Object? frontShiny = freezed,
    Object? others = freezed,
  }) {
    return _then(_$_PokemonSprites(
      backDefault: backDefault == freezed
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backFemale: backFemale == freezed
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: backShiny == freezed
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: frontFemale == freezed
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: frontShiny == freezed
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      others: others == freezed
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as PokemonOtherSprites?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSprites implements _PokemonSprites {
  const _$_PokemonSprites(
      {@JsonKey(name: 'back_default') this.backDefault,
      @JsonKey(name: 'back_female') this.backFemale,
      @JsonKey(name: 'back_shiny') this.backShiny,
      @JsonKey(name: 'front_default') this.frontDefault,
      @JsonKey(name: 'front_female') this.frontFemale,
      @JsonKey(name: 'front_shiny') this.frontShiny,
      @JsonKey(name: 'other') this.others});

  factory _$_PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpritesFromJson(json);

  @override
  @JsonKey(name: 'back_default')
  final String? backDefault;
  @override
  @JsonKey(name: 'back_female')
  final String? backFemale;
  @override
  @JsonKey(name: 'back_shiny')
  final String? backShiny;
  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @override
  @JsonKey(name: 'front_female')
  final String? frontFemale;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @override
  @JsonKey(name: 'other')
  final PokemonOtherSprites? others;

  @override
  String toString() {
    return 'PokemonSprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, others: $others)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSprites &&
            const DeepCollectionEquality()
                .equals(other.backDefault, backDefault) &&
            const DeepCollectionEquality()
                .equals(other.backFemale, backFemale) &&
            const DeepCollectionEquality().equals(other.backShiny, backShiny) &&
            const DeepCollectionEquality()
                .equals(other.frontDefault, frontDefault) &&
            const DeepCollectionEquality()
                .equals(other.frontFemale, frontFemale) &&
            const DeepCollectionEquality()
                .equals(other.frontShiny, frontShiny) &&
            const DeepCollectionEquality().equals(other.others, others));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backDefault),
      const DeepCollectionEquality().hash(backFemale),
      const DeepCollectionEquality().hash(backShiny),
      const DeepCollectionEquality().hash(frontDefault),
      const DeepCollectionEquality().hash(frontFemale),
      const DeepCollectionEquality().hash(frontShiny),
      const DeepCollectionEquality().hash(others));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonSpritesCopyWith<_$_PokemonSprites> get copyWith =>
      __$$_PokemonSpritesCopyWithImpl<_$_PokemonSprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpritesToJson(
      this,
    );
  }
}

abstract class _PokemonSprites implements PokemonSprites {
  const factory _PokemonSprites(
          {@JsonKey(name: 'back_default') final String? backDefault,
          @JsonKey(name: 'back_female') final String? backFemale,
          @JsonKey(name: 'back_shiny') final String? backShiny,
          @JsonKey(name: 'front_default') final String? frontDefault,
          @JsonKey(name: 'front_female') final String? frontFemale,
          @JsonKey(name: 'front_shiny') final String? frontShiny,
          @JsonKey(name: 'other') final PokemonOtherSprites? others}) =
      _$_PokemonSprites;

  factory _PokemonSprites.fromJson(Map<String, dynamic> json) =
      _$_PokemonSprites.fromJson;

  @override
  @JsonKey(name: 'back_default')
  String? get backDefault;
  @override
  @JsonKey(name: 'back_female')
  String? get backFemale;
  @override
  @JsonKey(name: 'back_shiny')
  String? get backShiny;
  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(name: 'front_female')
  String? get frontFemale;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  @JsonKey(name: 'other')
  PokemonOtherSprites? get others;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpritesCopyWith<_$_PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonOtherSprites _$PokemonOtherSpritesFromJson(Map<String, dynamic> json) {
  return _PokemonOtherSprites.fromJson(json);
}

/// @nodoc
mixin _$PokemonOtherSprites {
  @JsonKey(name: 'dream_world')
  Sprites? get dreamWorld => throw _privateConstructorUsedError;
  Sprites? get home => throw _privateConstructorUsedError;
  @JsonKey(name: 'official-artwork')
  Sprites? get officialArtwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonOtherSpritesCopyWith<PokemonOtherSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonOtherSpritesCopyWith<$Res> {
  factory $PokemonOtherSpritesCopyWith(
          PokemonOtherSprites value, $Res Function(PokemonOtherSprites) then) =
      _$PokemonOtherSpritesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dream_world') Sprites? dreamWorld,
      Sprites? home,
      @JsonKey(name: 'official-artwork') Sprites? officialArtwork});

  $SpritesCopyWith<$Res>? get dreamWorld;
  $SpritesCopyWith<$Res>? get home;
  $SpritesCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class _$PokemonOtherSpritesCopyWithImpl<$Res>
    implements $PokemonOtherSpritesCopyWith<$Res> {
  _$PokemonOtherSpritesCopyWithImpl(this._value, this._then);

  final PokemonOtherSprites _value;
  // ignore: unused_field
  final $Res Function(PokemonOtherSprites) _then;

  @override
  $Res call({
    Object? dreamWorld = freezed,
    Object? home = freezed,
    Object? officialArtwork = freezed,
  }) {
    return _then(_value.copyWith(
      dreamWorld: dreamWorld == freezed
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      officialArtwork: officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as Sprites?,
    ));
  }

  @override
  $SpritesCopyWith<$Res>? get dreamWorld {
    if (_value.dreamWorld == null) {
      return null;
    }

    return $SpritesCopyWith<$Res>(_value.dreamWorld!, (value) {
      return _then(_value.copyWith(dreamWorld: value));
    });
  }

  @override
  $SpritesCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $SpritesCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value));
    });
  }

  @override
  $SpritesCopyWith<$Res>? get officialArtwork {
    if (_value.officialArtwork == null) {
      return null;
    }

    return $SpritesCopyWith<$Res>(_value.officialArtwork!, (value) {
      return _then(_value.copyWith(officialArtwork: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonOtherSpritesCopyWith<$Res>
    implements $PokemonOtherSpritesCopyWith<$Res> {
  factory _$$_PokemonOtherSpritesCopyWith(_$_PokemonOtherSprites value,
          $Res Function(_$_PokemonOtherSprites) then) =
      __$$_PokemonOtherSpritesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dream_world') Sprites? dreamWorld,
      Sprites? home,
      @JsonKey(name: 'official-artwork') Sprites? officialArtwork});

  @override
  $SpritesCopyWith<$Res>? get dreamWorld;
  @override
  $SpritesCopyWith<$Res>? get home;
  @override
  $SpritesCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class __$$_PokemonOtherSpritesCopyWithImpl<$Res>
    extends _$PokemonOtherSpritesCopyWithImpl<$Res>
    implements _$$_PokemonOtherSpritesCopyWith<$Res> {
  __$$_PokemonOtherSpritesCopyWithImpl(_$_PokemonOtherSprites _value,
      $Res Function(_$_PokemonOtherSprites) _then)
      : super(_value, (v) => _then(v as _$_PokemonOtherSprites));

  @override
  _$_PokemonOtherSprites get _value => super._value as _$_PokemonOtherSprites;

  @override
  $Res call({
    Object? dreamWorld = freezed,
    Object? home = freezed,
    Object? officialArtwork = freezed,
  }) {
    return _then(_$_PokemonOtherSprites(
      dreamWorld: dreamWorld == freezed
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      officialArtwork: officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as Sprites?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonOtherSprites implements _PokemonOtherSprites {
  const _$_PokemonOtherSprites(
      {@JsonKey(name: 'dream_world') this.dreamWorld,
      this.home,
      @JsonKey(name: 'official-artwork') this.officialArtwork});

  factory _$_PokemonOtherSprites.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonOtherSpritesFromJson(json);

  @override
  @JsonKey(name: 'dream_world')
  final Sprites? dreamWorld;
  @override
  final Sprites? home;
  @override
  @JsonKey(name: 'official-artwork')
  final Sprites? officialArtwork;

  @override
  String toString() {
    return 'PokemonOtherSprites(dreamWorld: $dreamWorld, home: $home, officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonOtherSprites &&
            const DeepCollectionEquality()
                .equals(other.dreamWorld, dreamWorld) &&
            const DeepCollectionEquality().equals(other.home, home) &&
            const DeepCollectionEquality()
                .equals(other.officialArtwork, officialArtwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dreamWorld),
      const DeepCollectionEquality().hash(home),
      const DeepCollectionEquality().hash(officialArtwork));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonOtherSpritesCopyWith<_$_PokemonOtherSprites> get copyWith =>
      __$$_PokemonOtherSpritesCopyWithImpl<_$_PokemonOtherSprites>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonOtherSpritesToJson(
      this,
    );
  }
}

abstract class _PokemonOtherSprites implements PokemonOtherSprites {
  const factory _PokemonOtherSprites(
          {@JsonKey(name: 'dream_world') final Sprites? dreamWorld,
          final Sprites? home,
          @JsonKey(name: 'official-artwork') final Sprites? officialArtwork}) =
      _$_PokemonOtherSprites;

  factory _PokemonOtherSprites.fromJson(Map<String, dynamic> json) =
      _$_PokemonOtherSprites.fromJson;

  @override
  @JsonKey(name: 'dream_world')
  Sprites? get dreamWorld;
  @override
  Sprites? get home;
  @override
  @JsonKey(name: 'official-artwork')
  Sprites? get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonOtherSpritesCopyWith<_$_PokemonOtherSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  @JsonKey(name: 'back_default')
  String? get backDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_female')
  String? get backFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String? get backShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_female')
  String? get frontFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'back_default') String? backDefault,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'front_shiny') String? frontShiny});
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res> implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  final Sprites _value;
  // ignore: unused_field
  final $Res Function(Sprites) _then;

  @override
  $Res call({
    Object? backDefault = freezed,
    Object? backFemale = freezed,
    Object? backShiny = freezed,
    Object? frontDefault = freezed,
    Object? frontFemale = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_value.copyWith(
      backDefault: backDefault == freezed
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backFemale: backFemale == freezed
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: backShiny == freezed
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: frontFemale == freezed
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: frontShiny == freezed
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SpritesCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$_SpritesCopyWith(
          _$_Sprites value, $Res Function(_$_Sprites) then) =
      __$$_SpritesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'back_default') String? backDefault,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'front_shiny') String? frontShiny});
}

/// @nodoc
class __$$_SpritesCopyWithImpl<$Res> extends _$SpritesCopyWithImpl<$Res>
    implements _$$_SpritesCopyWith<$Res> {
  __$$_SpritesCopyWithImpl(_$_Sprites _value, $Res Function(_$_Sprites) _then)
      : super(_value, (v) => _then(v as _$_Sprites));

  @override
  _$_Sprites get _value => super._value as _$_Sprites;

  @override
  $Res call({
    Object? backDefault = freezed,
    Object? backFemale = freezed,
    Object? backShiny = freezed,
    Object? frontDefault = freezed,
    Object? frontFemale = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_$_Sprites(
      backDefault: backDefault == freezed
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backFemale: backFemale == freezed
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: backShiny == freezed
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: frontFemale == freezed
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: frontShiny == freezed
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sprites extends _Sprites {
  const _$_Sprites(
      {@JsonKey(name: 'back_default') this.backDefault,
      @JsonKey(name: 'back_female') this.backFemale,
      @JsonKey(name: 'back_shiny') this.backShiny,
      @JsonKey(name: 'front_default') this.frontDefault,
      @JsonKey(name: 'front_female') this.frontFemale,
      @JsonKey(name: 'front_shiny') this.frontShiny})
      : super._();

  factory _$_Sprites.fromJson(Map<String, dynamic> json) =>
      _$$_SpritesFromJson(json);

  @override
  @JsonKey(name: 'back_default')
  final String? backDefault;
  @override
  @JsonKey(name: 'back_female')
  final String? backFemale;
  @override
  @JsonKey(name: 'back_shiny')
  final String? backShiny;
  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @override
  @JsonKey(name: 'front_female')
  final String? frontFemale;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;

  @override
  String toString() {
    return 'Sprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sprites &&
            const DeepCollectionEquality()
                .equals(other.backDefault, backDefault) &&
            const DeepCollectionEquality()
                .equals(other.backFemale, backFemale) &&
            const DeepCollectionEquality().equals(other.backShiny, backShiny) &&
            const DeepCollectionEquality()
                .equals(other.frontDefault, frontDefault) &&
            const DeepCollectionEquality()
                .equals(other.frontFemale, frontFemale) &&
            const DeepCollectionEquality()
                .equals(other.frontShiny, frontShiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backDefault),
      const DeepCollectionEquality().hash(backFemale),
      const DeepCollectionEquality().hash(backShiny),
      const DeepCollectionEquality().hash(frontDefault),
      const DeepCollectionEquality().hash(frontFemale),
      const DeepCollectionEquality().hash(frontShiny));

  @JsonKey(ignore: true)
  @override
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      __$$_SpritesCopyWithImpl<_$_Sprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpritesToJson(
      this,
    );
  }
}

abstract class _Sprites extends Sprites {
  const factory _Sprites(
      {@JsonKey(name: 'back_default') final String? backDefault,
      @JsonKey(name: 'back_female') final String? backFemale,
      @JsonKey(name: 'back_shiny') final String? backShiny,
      @JsonKey(name: 'front_default') final String? frontDefault,
      @JsonKey(name: 'front_female') final String? frontFemale,
      @JsonKey(name: 'front_shiny') final String? frontShiny}) = _$_Sprites;
  const _Sprites._() : super._();

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$_Sprites.fromJson;

  @override
  @JsonKey(name: 'back_default')
  String? get backDefault;
  @override
  @JsonKey(name: 'back_female')
  String? get backFemale;
  @override
  @JsonKey(name: 'back_shiny')
  String? get backShiny;
  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(name: 'front_female')
  String? get frontFemale;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  @JsonKey(ignore: true)
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
mixin _$PokemonType {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res> implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  final PokemonType _value;
  // ignore: unused_field
  final $Res Function(PokemonType) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonTypeCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$$_PokemonTypeCopyWith(
          _$_PokemonType value, $Res Function(_$_PokemonType) then) =
      __$$_PokemonTypeCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PokemonTypeCopyWithImpl<$Res> extends _$PokemonTypeCopyWithImpl<$Res>
    implements _$$_PokemonTypeCopyWith<$Res> {
  __$$_PokemonTypeCopyWithImpl(
      _$_PokemonType _value, $Res Function(_$_PokemonType) _then)
      : super(_value, (v) => _then(v as _$_PokemonType));

  @override
  _$_PokemonType get _value => super._value as _$_PokemonType;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonType(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonType implements _PokemonType {
  const _$_PokemonType({required this.name, required this.url});

  factory _$_PokemonType.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonType(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonType &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      __$$_PokemonTypeCopyWithImpl<_$_PokemonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeToJson(
      this,
    );
  }
}

abstract class _PokemonType implements PokemonType {
  const factory _PokemonType(
      {required final String name, required final String url}) = _$_PokemonType;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$_PokemonType.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeSlot _$PokemonTypeSlotFromJson(Map<String, dynamic> json) {
  return _PokemonTypeSlot.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeSlot {
  int get slot => throw _privateConstructorUsedError;
  PokemonType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeSlotCopyWith<PokemonTypeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeSlotCopyWith<$Res> {
  factory $PokemonTypeSlotCopyWith(
          PokemonTypeSlot value, $Res Function(PokemonTypeSlot) then) =
      _$PokemonTypeSlotCopyWithImpl<$Res>;
  $Res call({int slot, PokemonType type});

  $PokemonTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeSlotCopyWithImpl<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  _$PokemonTypeSlotCopyWithImpl(this._value, this._then);

  final PokemonTypeSlot _value;
  // ignore: unused_field
  final $Res Function(PokemonTypeSlot) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ));
  }

  @override
  $PokemonTypeCopyWith<$Res> get type {
    return $PokemonTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonTypeSlotCopyWith<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  factory _$$_PokemonTypeSlotCopyWith(
          _$_PokemonTypeSlot value, $Res Function(_$_PokemonTypeSlot) then) =
      __$$_PokemonTypeSlotCopyWithImpl<$Res>;
  @override
  $Res call({int slot, PokemonType type});

  @override
  $PokemonTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$_PokemonTypeSlotCopyWithImpl<$Res>
    extends _$PokemonTypeSlotCopyWithImpl<$Res>
    implements _$$_PokemonTypeSlotCopyWith<$Res> {
  __$$_PokemonTypeSlotCopyWithImpl(
      _$_PokemonTypeSlot _value, $Res Function(_$_PokemonTypeSlot) _then)
      : super(_value, (v) => _then(v as _$_PokemonTypeSlot));

  @override
  _$_PokemonTypeSlot get _value => super._value as _$_PokemonTypeSlot;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_PokemonTypeSlot(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypeSlot implements _PokemonTypeSlot {
  const _$_PokemonTypeSlot({required this.slot, required this.type});

  factory _$_PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeSlotFromJson(json);

  @override
  final int slot;
  @override
  final PokemonType type;

  @override
  String toString() {
    return 'PokemonTypeSlot(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTypeSlot &&
            const DeepCollectionEquality().equals(other.slot, slot) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(slot),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonTypeSlotCopyWith<_$_PokemonTypeSlot> get copyWith =>
      __$$_PokemonTypeSlotCopyWithImpl<_$_PokemonTypeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeSlotToJson(
      this,
    );
  }
}

abstract class _PokemonTypeSlot implements PokemonTypeSlot {
  const factory _PokemonTypeSlot(
      {required final int slot,
      required final PokemonType type}) = _$_PokemonTypeSlot;

  factory _PokemonTypeSlot.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeSlot.fromJson;

  @override
  int get slot;
  @override
  PokemonType get type;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeSlotCopyWith<_$_PokemonTypeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonStats _$PokemonStatsFromJson(Map<String, dynamic> json) {
  return _PokemonStats.fromJson(json);
}

/// @nodoc
mixin _$PokemonStats {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  Status get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatsCopyWith<PokemonStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatsCopyWith<$Res> {
  factory $PokemonStatsCopyWith(
          PokemonStats value, $Res Function(PokemonStats) then) =
      _$PokemonStatsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, int effort, Status stat});

  $StatusCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatsCopyWithImpl<$Res> implements $PokemonStatsCopyWith<$Res> {
  _$PokemonStatsCopyWithImpl(this._value, this._then);

  final PokemonStats _value;
  // ignore: unused_field
  final $Res Function(PokemonStats) _then;

  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? stat = freezed,
  }) {
    return _then(_value.copyWith(
      baseStat: baseStat == freezed
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: effort == freezed
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }

  @override
  $StatusCopyWith<$Res> get stat {
    return $StatusCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonStatsCopyWith<$Res>
    implements $PokemonStatsCopyWith<$Res> {
  factory _$$_PokemonStatsCopyWith(
          _$_PokemonStats value, $Res Function(_$_PokemonStats) then) =
      __$$_PokemonStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, int effort, Status stat});

  @override
  $StatusCopyWith<$Res> get stat;
}

/// @nodoc
class __$$_PokemonStatsCopyWithImpl<$Res>
    extends _$PokemonStatsCopyWithImpl<$Res>
    implements _$$_PokemonStatsCopyWith<$Res> {
  __$$_PokemonStatsCopyWithImpl(
      _$_PokemonStats _value, $Res Function(_$_PokemonStats) _then)
      : super(_value, (v) => _then(v as _$_PokemonStats));

  @override
  _$_PokemonStats get _value => super._value as _$_PokemonStats;

  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? stat = freezed,
  }) {
    return _then(_$_PokemonStats(
      baseStat: baseStat == freezed
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: effort == freezed
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonStats implements _PokemonStats {
  const _$_PokemonStats(
      {@JsonKey(name: 'base_stat') required this.baseStat,
      required this.effort,
      required this.stat});

  factory _$_PokemonStats.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonStatsFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final int effort;
  @override
  final Status stat;

  @override
  String toString() {
    return 'PokemonStats(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonStats &&
            const DeepCollectionEquality().equals(other.baseStat, baseStat) &&
            const DeepCollectionEquality().equals(other.effort, effort) &&
            const DeepCollectionEquality().equals(other.stat, stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(baseStat),
      const DeepCollectionEquality().hash(effort),
      const DeepCollectionEquality().hash(stat));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonStatsCopyWith<_$_PokemonStats> get copyWith =>
      __$$_PokemonStatsCopyWithImpl<_$_PokemonStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonStatsToJson(
      this,
    );
  }
}

abstract class _PokemonStats implements PokemonStats {
  const factory _PokemonStats(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final int effort,
      required final Status stat}) = _$_PokemonStats;

  factory _PokemonStats.fromJson(Map<String, dynamic> json) =
      _$_PokemonStats.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  int get effort;
  @override
  Status get stat;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonStatsCopyWith<_$_PokemonStats> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, (v) => _then(v as _$_Status));

  @override
  _$_Status get _value => super._value as _$_Status;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Status(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status({required this.name, required this.url});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Status(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required final String name, required final String url}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}
