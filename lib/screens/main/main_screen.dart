import 'package:flutter/material.dart';
import '../../widgets/flutter_widgets/custom_bottom_navigator_bar.dart';
import 'home_page.dart';
import 'account.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomePage(),
            Account(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigatorBar(
        pageController: _pageController!,
      ),
    );
  }
}
