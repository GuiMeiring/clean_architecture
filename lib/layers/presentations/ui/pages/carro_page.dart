import 'package:clean_architecture/layers/presentations/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  //criar instacia do carro controller

  // CarroController controller = CarroController(
  //   GetCarrosPorCorUseCaseImp(
  //     GetCarrosCorRepositoryImp(
  //         GetCarrosPorCorDataSourceImp()
  //     )
  //   ),
  //   SalvarCarroFavoritoUseCaseImp(
  //     SalvarCarroFavoritoRepositoryImp()
  //   ),
  // );

  var controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
