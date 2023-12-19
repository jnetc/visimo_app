import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/screens/world/world_map.dart';

class WorldScreen extends StatefulWidget {
  const WorldScreen({super.key});

  @override
  State<WorldScreen> createState() => _WorldScreenState();
}

class _WorldScreenState extends State<WorldScreen>
    with SingleTickerProviderStateMixin {
  final double mapHeight = 2500;
  final double mapWidth = 2500;
  final double islandHeight = 360;
  final double islandWidth = 360;
  final matrix = Matrix4.identity();
  // double initPointerPositionX = 0;
  // double initPointerPositionY = 0;
  // final int mapWidth = 2500;
  // double mediaWidth = 0;
  // double mediaHeight = 0;

  final double centerIslandYPos = 1070;
  final double centerIslandXPos = 1070;
  final double animationIslandYPos = 913;
  final double animationIslandXPos = 517;
  final double soundIslandYPos = 484;
  final double soundIslandXPos = 917;
  final double beautyIslandYPos = 1422;
  final double beautyIslandXPos = 599;
  final double designIslandYPos = 630;
  final double designIslandXPos = 1485;
  final double technologyIslandYPos = 1138;
  final double technologyIslandXPos = 1562;
  final double featherIslandYPos = 1549;
  final double featherIslandXPos = 1171;

  ValueNotifier mapLeftCenter = ValueNotifier(0);
  ValueNotifier mapTopCenter = ValueNotifier(0);

  final TransformationController _controller = TransformationController();
  late AnimationController _animationController;
  Animation<Matrix4>? _animation;

  @override
  void initState() {
    // Создаем контроллер анимации
    // Добавляем продолжительность анимации
    // Добавляем обработчик для переорпеделения значения трансформации из анимации
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        _controller.value = _animation!.value;
      });
    super.initState();
  }

  void goToHome(double x, double y) {
    // Создать новую матрицу (Matrix4) для каждого вызова функции
    // Иначе она будет суммироваться с другми (Matrix4)
    final matrix = Matrix4.identity();
    // Создаем анимацию возврата на центр
    // begin: изначальная позиция контроллера TransformationController
    // end: конечная точка для анимации делаем из новой матрицы чтоб вернуть на центр
    // Анимируем с плавным входом и выходом
    // И возвращаем это в _animationController
    _animation = Matrix4Tween(
      begin: _controller.value,
      end: matrix..translate(x, y),
    ).animate(
      CurveTween(curve: Curves.easeInOut).animate(_animationController),
    );
    // Запускаем анимацию с первого кадра
    _animationController.forward(from: 0);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final double mapYPos = (mapHeight / 2 * -1) + mediaHeight / 2;
    final double mapXPos = (mapWidth / 2 * -1) + mediaWidth / 2;

    _controller.value = matrix..translate(mapXPos, mapYPos);

    return Scaffold(
      // appBar: AppBar(),
      body: InteractiveViewer(
        constrained: false,
        minScale: 0.5,
        maxScale: 1.3,
        transformationController: _controller,
        child: Stack(
          children: [
            const WorldMap(),
            Positioned(
              top: centerIslandYPos,
              // top: 2500 / 2 - islandHeight / 2,
              left: centerIslandXPos,
              // left: 2500 / 2 - islandWidth / 2,
              child: Image.asset(
                'assets/islands/Island-taste.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
            Positioned(
              top: animationIslandYPos,
              left: animationIslandXPos,
              child: Image.asset(
                'assets/islands/Island-animation.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
            Positioned(
              top: soundIslandYPos,
              left: soundIslandXPos,
              child: Image.asset(
                'assets/islands/Island-sound.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
            Positioned(
              top: animationIslandYPos,
              left: animationIslandXPos,
              child: Image.asset(
                'assets/islands/Island-animation.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
            Positioned(
              top: beautyIslandYPos,
              left: beautyIslandXPos,
              child: Image.asset(
                'assets/islands/Island-beauty.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
            Positioned(
              top: designIslandYPos,
              left: designIslandXPos,
              child: Image.asset(
                'assets/islands/Island-design.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
            Positioned(
              top: technologyIslandYPos,
              left: technologyIslandXPos,
              child: Image.asset(
                'assets/islands/Island-technology.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
            Positioned(
              top: featherIslandYPos,
              left: featherIslandXPos,
              child: Image.asset(
                'assets/islands/Island-feather.webp',
                opacity: const AlwaysStoppedAnimation(.5),
                height: islandHeight,
                width: islandWidth,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          // print('TAB');
          goToHome(mapXPos, mapYPos);
        },
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        iconSize: 32,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.pink[200])),
        icon: const Icon(Icons.home),
      ),
    );
  }
}
