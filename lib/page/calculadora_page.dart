import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_select.dart';
import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

//stf
class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            //usamos placeholder para ajudar a visualizar o tamanho do conteudo: child: Placeholder()
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: GenderSelect(
                      icon: Icons.male,
                      gender: 'Masculino',
                    )),
                ),
                Expanded(
                  child: CustomCard(
                    child: GenderSelect(
                      icon: Icons.female,
                      gender: 'Feminino',
                    )),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(),
                ),
                Expanded(
                  child: CustomCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
