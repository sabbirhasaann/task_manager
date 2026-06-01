import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/features/home/presentation/pages/home_view.dart';

class MainWrapperView extends StatefulWidget {
  const MainWrapperView({super.key});

  @override
  State<MainWrapperView> createState() => _MainWrapperViewState();
}

class _MainWrapperViewState extends State<MainWrapperView> {
  final List<Widget> screens = [const HomeView()];
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 90,
              width: size.width,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: ElegantNavigationBarPainter(),
                  ),
                  Center(
                    heightFactor: 1,
                    child: SizedBox(
                      height: 64,
                      width: 64,
                      child: FloatingActionButton(
                        onPressed: () {},
                        elevation: 2.0,
                        shape: const CircleBorder(),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const HomeView();
                                },
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(AppIcons.home),
                          ),
                        ),

                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(AppIcons.calendar),
                          ),
                        ),

                        Container(width: size.width * 0.20),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset(AppIcons.documentText),
                        ),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset(AppIcons.profileUser),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 60);
    path.quadraticBezierTo(12, 12, 60, 20);
    path.lineTo(size.width * 0.4, 20);

    path.quadraticBezierTo(size.width * 0.45, 20, size.width * 0.45, 20);

    path.arcToPoint(
      Offset(size.width * 0.55, 20),
      radius: Radius.circular(5),
      clockwise: false,
    );

    path.quadraticBezierTo(size.width * 0.55, 0, size.width * 0.60, 0);
    path.lineTo(size.width - 20, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 20);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ElegantNavigationBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFF3E9FF)
      ..style = PaintingStyle.fill;

    final path = Path();

    const double cornerRadius = 30.0; // Smooth outer top corners
    const double notchRadius = 40.0; // Radius of the main center cutout
    const double entryRadius = 15.0; // The inverted rounding at the notch lip

    final double centerX = size.width / 2;
    // The bar itself doesn't need to take the full canvas height if you want padding
    final double barTopY = 20.0;
    final double barBottomY = size.height;

    // 1. Start on the left wall, just below the top-left corner curve
    path.moveTo(0, barTopY + cornerRadius);

    // 2. Top-left outer corner
    path.quadraticBezierTo(0, barTopY, cornerRadius, barTopY);

    // 3. Line to the start of the notch entry curve
    // We calculate exactly where the inverted curve must begin
    double notchEntryX = centerX - notchRadius - entryRadius;
    path.lineTo(notchEntryX, barTopY);

    // 4. Inverted entry curve (rounding smoothly DOWN into the notch)
    path.arcToPoint(
      Offset(centerX - notchRadius, barTopY + entryRadius),
      radius: const Radius.circular(entryRadius),
      clockwise: true, // Curves downward/inward
    );

    // 5. The main bottom scoop of the notch
    path.arcToPoint(
      Offset(centerX + notchRadius, barTopY + entryRadius),
      radius: const Radius.circular(notchRadius),
      clockwise: false, // Deep bottom curve
    );

    // 6. Inverted exit curve (rounding smoothly UP back to the top line)
    path.arcToPoint(
      Offset(centerX + notchRadius + entryRadius, barTopY),
      radius: const Radius.circular(entryRadius),
      clockwise: true,
    );

    // 7. Line to the top-right corner
    path.lineTo(size.width - cornerRadius, barTopY);

    // 8. Top-right outer corner
    path.quadraticBezierTo(
      size.width,
      barTopY,
      size.width,
      barTopY + cornerRadius,
    );

    // 9. Close the bottom rectangle structure
    path.lineTo(size.width, barBottomY);
    path.lineTo(0, barBottomY);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
