import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/interface/painters/external_pokedex.dart';
import 'package:pokedex/interface/screens/home/pokemon_controller.dart';
import 'package:pokedex/interface/widgets/direction_widget.dart';
import 'package:pokedex/interface/widgets/spheric_button.dart';
import 'package:pokedex/interface/widgets/track_pad.dart';
import 'package:pokedex/interface/widgets/vent_widget.dart';

class LeftHome extends HookConsumerWidget {
  const LeftHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: double.maxFinite,
      child: Hero(
        tag: 'front',
        child: LayoutBuilder(builder: (context, constratins) {
          return Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              CustomPaint(
                painter: ExternalPokedexPainter(),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: SphericButton(
                  size: 60,
                  color: Colors.blueAccent,
                  loading: ref.watch(pokemonsProvider).isLoading,
                ),
              ),
              Positioned(
                top: 10,
                left: 120,
                child: Row(
                  children: const [
                    SphericButton(
                      size: 15,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SphericButton(
                      size: 15,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SphericButton(
                      size: 15,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                right: 45,
                left: 10,
                bottom: 10,
                child: SizedBox(
                  width: constratins.maxWidth - 20,
                  height: constratins.maxHeight - 80,
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: MainScreen(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              children: [
                                Expanded(
                                  child: ColorButtonsRow(
                                    onBlueClick: () {
                                      final value = ref.read(isBackProvider);
                                      ref.read(isBackProvider.notifier).state =
                                          !value;
                                    },
                                    onGreenClick: () {
                                      ref
                                          .read(currentSpriteProvider.notifier)
                                          .back();
                                    },
                                    onYellowClick: () {
                                      ref
                                          .read(currentSpriteProvider.notifier)
                                          .advance();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: TrackPad(
                                            onPan: (position) {},
                                            onPanEnd: () {},
                                          ),
                                        ),
                                        Expanded(
                                          child: DirectionalWidget(
                                            onDownClick: () {
                                              ref
                                                  .read(currentSpriteProvider
                                                      .notifier)
                                                  .back();
                                            },
                                            onLeftClick: () {
                                              final value =
                                                  ref.read(isBackProvider);
                                              ref
                                                  .read(isBackProvider.notifier)
                                                  .state = !value;
                                            },
                                            onMidClick: () {
                                              final value =
                                                  ref.read(isBackProvider);
                                              ref
                                                  .read(isBackProvider.notifier)
                                                  .state = !value;
                                            },
                                            onRightClick: () {
                                              final value =
                                                  ref.read(isBackProvider);
                                              ref
                                                  .read(isBackProvider.notifier)
                                                  .state = !value;
                                            },
                                            onUpClick: () {
                                              ref
                                                  .read(currentSpriteProvider
                                                      .notifier)
                                                  .back();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class ColorButtonsRow extends StatelessWidget {
  const ColorButtonsRow({
    Key? key,
    required this.onBlueClick,
    required this.onGreenClick,
    required this.onYellowClick,
  }) : super(key: key);

  final void Function() onBlueClick;
  final void Function() onGreenClick;
  final void Function() onYellowClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(
                side: BorderSide(
                  color: Colors.white24,
                  width: 5,
                ),
              ),
              backgroundColor: Colors.blue,
              elevation: 3,
            ),
            onPressed: onBlueClick,
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
              backgroundColor: Colors.green,
              elevation: 3,
            ),
            onPressed: onGreenClick,
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
            onPressed: onYellowClick,
            child: Container(),
          ),
        ),
      ],
    );
  }
}

class MainScreen extends HookConsumerWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final selectedPokemon = ref.watch(selectedPokemonProvider);
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        color: Colors.grey.shade400,
        boxShadow: kElevationToShadow[3],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(90),
          bottomRight: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SphericButton(
                  size: 13,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 15,
                ),
                SphericButton(
                  size: 13,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: selectedPokemon != null
                      ? Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              selectedPokemon.name.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '# ${selectedPokemon.id}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Expanded(
                              child: CachedNetworkImage(
                                imageUrl: ref.watch(currentSpriteProvider),
                                progressIndicatorBuilder:
                                    (context, url, progress) {
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value: progress.progress,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Text(
                                'Tipo${(selectedPokemon.types.length > 1) ? 's' : ''}:'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: selectedPokemon.types
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      child: Text(
                                        e.type.name.toUpperCase(),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        )
                      : null,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 40,
                ),
                SphericButton(
                  size: 50,
                  color: Colors.red,
                  onTap: () {
                    ref.invalidate(pokemonsProvider);
                  },
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    VentWidget(
                      heigh: 5,
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    VentWidget(
                      heigh: 5,
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    VentWidget(
                      heigh: 5,
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    VentWidget(
                      heigh: 5,
                      width: 80,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
