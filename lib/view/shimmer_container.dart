import 'package:flutter/material.dart';

class ShimmerContainer extends StatefulWidget {
  const ShimmerContainer({super.key});

  @override
  State<ShimmerContainer> createState() => _ShimmerContainerState();
}

class _ShimmerContainerState extends State<ShimmerContainer>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2,
      ));

  @override
  void initState() {
    super.initState();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });

    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GradientPainter(
        animation: _controller,
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  _GradientPainter({
    required this.animation,
  }) : super(repaint: animation);

  final Animation animation;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);
    final gradient = LinearGradient(
      colors: [
        Colors.grey,
        Colors.blueGrey,
        Colors.grey,
        Colors.blueGrey,
      ],
      stops: [0.2, 0.4, 0.6, 0.8],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      tileMode: TileMode.repeated,
    );

    final shader = gradient.createShader(
        Offset(animation.value * size.height, animation.value * size.height) &
            size);

    canvas.drawPaint(Paint()..shader = shader);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
