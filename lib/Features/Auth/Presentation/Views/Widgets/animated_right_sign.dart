








import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

class AnimatedRightSign extends StatefulWidget {
  const AnimatedRightSign({Key? key}) : super(key: key);

  @override
  State<AnimatedRightSign> createState() => _AnimatedRightSignState();
}

class _AnimatedRightSignState extends State<AnimatedRightSign>with TickerProviderStateMixin {
  late AnimationController scaleController = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
  late Animation<double> scaleAnimation = CurvedAnimation(parent: scaleController, curve: Curves.elasticOut);
  late AnimationController checkController = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
  late Animation<double> checkAnimation = CurvedAnimation(parent: checkController, curve: Curves.linear);
  @override
  void initState() {
    super.initState();
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        checkController.forward();
      }
    });
    scaleController.forward();
    setState(() {});

  }

  @override
  void dispose() {
    scaleController.dispose();
    checkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  ScaleTransition(
      scale: scaleAnimation,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: ColorsApp.mainColor,
          shape: BoxShape.circle,
        ),
        child: SizeTransition(
            sizeFactor: checkAnimation,
            axis: Axis.horizontal,
            axisAlignment: -1,
            child: Center(
                child: Icon(Icons.check, color: Colors.white, size: 70)
            )
        ),
      ),
    );
  }
}
