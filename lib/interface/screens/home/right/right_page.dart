import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/interface/painters/internal_pokedex.dart';
import 'package:pokedex/interface/screens/cape_screen.dart';
import 'package:pokedex/interface/screens/home/pokemon_controller.dart';
import 'package:pokedex/interface/widgets/spheric_button.dart';

class RighHome extends HookConsumerWidget {
  const RighHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemons = ref.watch(pokemonsProvider);
    return Transform.translate(
      offset: const Offset(-3, 0),
      child: SizedBox(
        height: double.maxFinite,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: 'inside',
              child: CustomPaint(
                painter: InternalPokedexPainter(),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CustomPaint(
                        painter: InternalPokedexPainter(
                          dark: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 45,
                          top: 10,
                          bottom: 10,
                          left: 10,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 85,
                            ),
                            const Expanded(
                              flex: 2,
                              child: StatsScreen(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Expanded(
                              child: ListPokemonButtons(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 25,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SphericButton(
                                    size: 20,
                                    color: Colors.orange,
                                    onTap: () {
                                      ref
                                          .read(currentOffsetProvider.notifier)
                                          .state = 1150;
                                    },
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  SphericButton(
                                    size: 20,
                                    color: Colors.green,
                                    onTap: () {
                                      ref
                                          .read(currentOffsetProvider.notifier)
                                          .state = 0;
                                    },
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            color: Colors.white24,
                                            width: 5,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        fixedSize: const Size(
                                          double.maxFinite,
                                          5,
                                        ),
                                        backgroundColor: Colors.green,
                                        elevation: 3,
                                      ),
                                      onPressed: () {
                                        ref
                                            .read(
                                                currentOffsetProvider.notifier)
                                            .state -= 50;
                                      },
                                      child: Container(),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            color: Colors.white24,
                                            width: 5,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        fixedSize: const Size(
                                          double.maxFinite,
                                          5,
                                        ),
                                        backgroundColor: Colors.orange,
                                        elevation: 3,
                                      ),
                                      onPressed: () {
                                        ref
                                            .read(
                                                currentOffsetProvider.notifier)
                                            .state += 50;
                                      },
                                      child: Container(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              child: Row(
                                children: [
                                  IconButton(
                                    style: IconButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300,
                                      elevation: 5,
                                      foregroundColor: Colors.red,
                                      shape: const RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      ref
                                          .read(currentOffsetProvider.notifier)
                                          .state -= 10;
                                    },
                                    iconSize: 50,
                                    icon: const Icon(
                                      Icons.arrow_left,
                                    ),
                                  ),
                                  IconButton(
                                    style: IconButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300,
                                      elevation: 5,
                                      foregroundColor: Colors.red,
                                      shape: const RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                    iconSize: 50,
                                    onPressed: () {
                                      ref
                                          .read(currentOffsetProvider.notifier)
                                          .state += 10;
                                    },
                                    icon: const Icon(
                                      Icons.arrow_right,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      GoRouter.of(context).pop();
                                      ref
                                          .read(pokeBallLockProvider.notifier)
                                          .state = false;
                                    },
                                    iconSize: 50,
                                    color: Colors.yellow,
                                    icon: const Icon(Icons.arrow_circle_left),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Container(
                                        height: double.maxFinite,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black26,
                                            width: 5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: ref
                                            .watch(evolutionsProvider)
                                            .when(
                                              data: (data) {
                                                if (data.isEmpty) return null;
                                                final pokemon = data.first;
                                                return Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    onTap: () {
                                                      ref
                                                          .read(
                                                              selectedPokemonProvider
                                                                  .notifier)
                                                          .state = pokemon;
                                                    },
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl: pokemon
                                                                .spriteInOrder()
                                                                .first,
                                                          ),
                                                        ),
                                                        Text(
                                                          pokemon.name
                                                              .toUpperCase(),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              error: (e, s) => Container(
                                                height: double.maxFinite,
                                                width: double.maxFinite,
                                                color: Colors.red,
                                              ),
                                              loading: () =>
                                                  const ShineContainer(),
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Container(
                                        height: double.maxFinite,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black26,
                                            width: 5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: ref
                                            .watch(evolutionsProvider)
                                            .when(
                                              data: (data) {
                                                if (data.length < 2) {
                                                  return null;
                                                }
                                                final pokemon = data[1];
                                                return InkWell(
                                                  onTap: () {
                                                    ref
                                                        .read(
                                                            selectedPokemonProvider
                                                                .notifier)
                                                        .state = pokemon;
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: pokemon
                                                              .spriteInOrder()
                                                              .first,
                                                        ),
                                                      ),
                                                      Text(
                                                        pokemon.name
                                                            .toUpperCase(),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              error: (e, s) => Container(
                                                height: double.maxFinite,
                                                width: double.maxFinite,
                                                color: Colors.red,
                                              ),
                                              loading: () =>
                                                  const ShineContainer(),
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatsScreen extends HookConsumerWidget {
  const StatsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final pokemon = ref.watch(selectedPokemonProvider);
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: pokemon == null
                  ? null
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: StatsBar(
                              label: 'Altura',
                              max: 75,
                              value: pokemon.height / 10,
                              valueLabel:
                                  '${(pokemon.height / 10).toStringAsFixed(2)}m',
                            ),
                          ),
                          Expanded(
                            child: StatsBar(
                              label: 'Peso',
                              max: 10000,
                              value: pokemon.weight / 1,
                              valueLabel:
                                  '${(pokemon.weight / 10).toStringAsFixed(1)}Kg',
                            ),
                          ),
                          ...pokemon.stats
                              .map(
                                (e) => Expanded(
                                  child: StatsBar(
                                    label: e.stat.name,
                                    max: 250,
                                    value: e.baseStat / 1,
                                    effort: e.effort,
                                    valueLabel: (e.baseStat).toStringAsFixed(0),
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                      ),
                    ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                (constraints.maxHeight / 1.5).ceil(),
                (index) => Container(
                  height: 1,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                    color: Colors.green.shade900.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                (constraints.maxWidth / 1.5).ceil(),
                (index) => Container(
                  height: constraints.maxHeight,
                  width: 1,
                  decoration: BoxDecoration(
                    color: Colors.green.shade900.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class StatsBar extends StatefulWidget {
  const StatsBar({
    Key? key,
    required this.label,
    required this.max,
    required this.value,
    required this.valueLabel,
    this.effort = 0,
  }) : super(key: key);

  final double max;
  final double value;
  final String label;
  final String valueLabel;
  final int effort;

  @override
  State<StatsBar> createState() => _StatsBarState();
}

class _StatsBarState extends State<StatsBar> {
  double value = 0;
  double max = 100;
  double effort = 0;

  @override
  void initState() {
    super.initState();
    value = widget.value;
    max = widget.max;
    effort = widget.effort / 1;
  }

  @override
  void didUpdateWidget(covariant StatsBar oldWidget) {
    if (oldWidget != widget) {
      setState(() {
        value = widget.value;
        max = widget.max;
        effort = widget.effort / 1;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 38,
            child: Center(
              child: Text(
                widget.label.toUpperCase().replaceAll('-', ' '),
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: LayoutBuilder(builder: (context, constraints) {
                return Row(
                  children: [
                    Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          width:
                              value * (constraints.maxWidth - 50) / widget.max,
                          height: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: effort * 10,
                            height: 5,
                            decoration: const BoxDecoration(
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 45,
                      child: Center(
                        child: Text(
                          widget.valueLabel,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class ListPokemonButtons extends HookConsumerWidget {
  const ListPokemonButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final pokemons = ref.watch(pokemonsProvider);
    return Column(
      children: List.generate(
        2,
        (row) => Expanded(
          child: Row(
            children: List.generate(
              5,
              (column) => Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(2),
                    elevation: 3,
                    side: const BorderSide(
                      color: Colors.black87,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: (row == 0 && column == 4)
                            ? const Radius.circular(15)
                            : const Radius.circular(0),
                        bottomRight: (row == 1 && column == 4)
                            ? const Radius.circular(15)
                            : const Radius.circular(0),
                        bottomLeft: (row == 1 && column == 0)
                            ? const Radius.circular(15)
                            : const Radius.circular(0),
                        topLeft: (row == 0 && column == 0)
                            ? const Radius.circular(15)
                            : const Radius.circular(0),
                      ),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  onPressed: pokemons.hasValue
                      ? () {
                          ref.read(selectedPokemonProvider.notifier).state =
                              pokemons.value![(column + (row == 1 ? 5 : 0))
                                  .clamp(0, pokemons.value!.length - 1)];
                        }
                      : null,
                  child: pokemons.when(
                    data: (data) {
                      if (data.isEmpty) return Container();
                      final pokemon = data[(column + (row == 1 ? 5 : 0))
                          .clamp(0, data.length - 1)];
                      return Column(
                        children: [
                          Expanded(
                            child: CachedNetworkImage(
                              imageUrl: pokemon.spriteInOrder().first,
                              fit: BoxFit.contain,
                              progressIndicatorBuilder:
                                  ((context, url, progress) {
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: progress.progress ?? 0,
                                    valueColor: const AlwaysStoppedAnimation(
                                      Colors.white10,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          Text(
                            pokemon.id.toString(),
                            style: const TextStyle(
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      );
                    },
                    error: (error, stack) => Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      color: Colors.red,
                    ),
                    loading: () => const ShineContainer(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShineContainer extends StatefulWidget {
  const ShineContainer({Key? key}) : super(key: key);

  @override
  State<ShineContainer> createState() => _ShineContainerState();
}

class _ShineContainerState extends State<ShineContainer> {
  bool shine = false;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      if (mounted) {
        setState(() {
          shine = !shine;
        });
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  late Timer timer;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: double.maxFinite,
      width: double.maxFinite,
      duration: const Duration(milliseconds: 150),
      color: shine ? Colors.white60 : Colors.transparent,
    );
  }
}
