import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/interface/painters/external_pokedex.dart';
import 'package:pokedex/interface/painters/internal_pokedex.dart';
import 'package:pokedex/interface/widgets/pokeball_button.dart';
import 'package:pokedex/interface/widgets/spheric_button.dart';
import 'package:pokedex/interface/widgets/vent_widget.dart';

final pokeBallLockProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

class CapeScreen extends HookConsumerWidget {
  const CapeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locked = ref.watch(pokeBallLockProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          alignment: Alignment.center,
          child: Center(
            child: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag: 'front',
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CustomPaint(
                          painter: ExternalPokedexPainter(),
                        ),
                        const Positioned(
                          top: 10,
                          left: 10,
                          child: SphericButton(
                            size: 60,
                            color: Colors.blueAccent,
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
                      ],
                    ),
                  ),
                  Hero(
                    tag: 'inside',
                    child: CustomPaint(
                      painter: InternalPokedexPainter(),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(right: 33),
                      height: 10,
                      width: double.maxFinite,
                      color: Colors.black87,
                    ),
                  ),
                  Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: AnimatedRotation(
                            duration: const Duration(milliseconds: 750),
                            turns: locked ? 0 : 2,
                            onEnd: () {
                              if (locked) GoRouter.of(context).push('/home');
                            },
                            child: PokeBallButton(
                              size: constraints.maxWidth / 2,
                              onTap: () {
                                ref.read(pokeBallLockProvider.notifier).state =
                                    true;
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Positioned(
                    bottom: 50,
                    left: 100,
                    right: 135,
                    child: VentWidget(
                      heigh: 10,
                      width: double.maxFinite,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
