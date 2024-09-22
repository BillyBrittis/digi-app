import 'package:digi_app/controllers/api_controller.dart';
import 'package:digi_app/domain/models/digimon_complete.dart';
import 'package:digi_app/screens/components/gradient_text.dart';
import 'package:digi_app/screens/components/loading_component.dart';
import 'package:digi_app/utils/consts/colors.dart';
import 'package:digi_app/utils/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_icon/gradient_icon.dart';

class DigimonInfoScreen extends StatefulWidget {
  final int id;
  const DigimonInfoScreen({super.key, required this.id});

  @override
  State<DigimonInfoScreen> createState() => _DigimonInfoScreenState();
}

class _DigimonInfoScreenState extends State<DigimonInfoScreen> {
  ApiController apiController = ApiController();
  DigimonComplete? digimonInfo;
  bool isLoading = true;

  @override
  void initState() {
    loadDigimonInfo();
    super.initState();
  }

  loadDigimonInfo() async {
    digimonInfo = await apiController.getDigimonById(id: widget.id);
    setState(() {
      isLoading = false;
    });
  }

  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return isLoading
        ? const LoadingComponent()
        : SafeArea(
            child: Scaffold(
              backgroundColor: blackColor,
              appBar: AppBar(
                leading: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: GradientIcon(
                      icon: Icons.arrow_back,
                      size: 40,
                      gradient: LinearGradient(
                        colors: [
                          secondaryColor,
                          primaryColor,
                        ],
                      ),
                    ),
                  ),
                ),
                backgroundColor: blackColor,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: GradientText(
                          text: digimonInfo!.name,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              secondaryColor,
                              primaryColor,
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * .04),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            digiviceImage,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isTapped = !isTapped;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                              height: isTapped ? size.height * .43 : size.height * .16,
                              width: isTapped ? size.height * .43 : size.height * .16,
                              decoration: BoxDecoration(
                                borderRadius: isTapped ? BorderRadius.circular(10) : BorderRadius.circular(100),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 10.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(digimonInfo!.images[0].href),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * .04),
                      if (digimonInfo!.descriptions.isNotEmpty)
                        GradientText(
                          text: digimonInfo!.descriptions.length > 1
                              ? digimonInfo!.descriptions[1].description
                              : digimonInfo!.descriptions[0].description,
                          style: const TextStyle(fontSize: 18),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              secondaryColor,
                              primaryColor,
                            ],
                          ),
                        ),
                      SizedBox(height: size.height * .04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var level in digimonInfo!.levels)
                                GradientText(
                                  text: 'Level: ${level.level}',
                                  style: const TextStyle(fontSize: 18),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      secondaryColor,
                                      primaryColor,
                                    ],
                                  ),
                                ),
                              for (var type in digimonInfo!.attributes)
                                GradientText(
                                  text: 'Attribute: ${type.attribute}',
                                  style: const TextStyle(fontSize: 18),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      secondaryColor,
                                      primaryColor,
                                    ],
                                  ),
                                ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var type in digimonInfo!.types)
                                GradientText(
                                  text: 'Type: ${type.type}',
                                  style: const TextStyle(fontSize: 18),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      secondaryColor,
                                      primaryColor,
                                    ],
                                  ),
                                ),
                              GradientText(
                                text: 'Release: ${digimonInfo!.releaseDate}',
                                style: const TextStyle(fontSize: 18),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    secondaryColor,
                                    primaryColor,
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
