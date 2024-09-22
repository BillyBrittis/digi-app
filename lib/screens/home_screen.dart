import 'package:digi_app/controllers/api_controller.dart';
import 'package:digi_app/screens/components/gradient_text.dart';
import 'package:digi_app/screens/components/home_card_digimon_widget.dart';
import 'package:digi_app/screens/components/loading_component.dart';
import 'package:digi_app/utils/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiController apiController = ApiController();
  final ScrollController _scrollController = ScrollController();
  List digimonList = [];
  int currentPage = 0;
  bool isLoading = false;
  bool hasMoreData = true;

  @override
  void initState() {
    super.initState();
    _fetchDigimonData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent && !isLoading && hasMoreData) {
        _fetchDigimonData();
      }
    });
  }

  Future<void> _fetchDigimonData() async {
    setState(() {
      isLoading = true;
    });
    final newDigimonList = await apiController.getDigimonList(page: currentPage, pageSize: 80);
    if (newDigimonList.isEmpty) {
      setState(() {
        hasMoreData = false;
      });
    } else {
      setState(() {
        digimonList.addAll(newDigimonList);
        currentPage++;
      });
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          backgroundColor: blackColor,
          title: const GradientText(
            text: 'DigiApp',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                secondaryColor,
                primaryColor,
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: GradientIcon(
                icon: Icons.search,
                size: 40,
                gradient: LinearGradient(
                  colors: [
                    secondaryColor,
                    primaryColor,
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Stack(
            children: [
              GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: digimonList.length,
                itemBuilder: (context, index) {
                  return HomeCardDigimonWidget(
                    digimon: digimonList[index],
                  );
                },
              ),
              if (isLoading) const LoadingComponent()
            ],
          ),
        ),
      ),
    );
  }
}
