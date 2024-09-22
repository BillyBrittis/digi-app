import 'package:digi_app/domain/models/digimon_model.dart';
import 'package:digi_app/routes/routes.dart';
import 'package:digi_app/screens/components/gradient_text.dart';
import 'package:digi_app/utils/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeCardDigimonWidget extends StatelessWidget {
  final DigimonModel digimon;
  const HomeCardDigimonWidget({super.key, required this.digimon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        InkWell(
          onTap: () {
            context.pushNamed(AppRoute.digimonInfo.name, pathParameters: {'id': digimon.id.toString()});
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox.fromSize(
              size: Size.fromRadius(size.height * .12),
              child: Stack(
                children: [
                  Image.network(
                    digimon.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        color: Colors.black.withOpacity(0.6),
                        child: Center(
                          child: GradientText(
                            text: digimon.name,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                secondaryColor,
                                primaryColor,
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
