import 'package:flutter/material.dart';
import '../controllers/bmi_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = BmiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text('Calculator BMI'),
            ),
            Column(
              children: [
                SizedBox(
                  child: Row(
                    children: [InkWell(child: Container()), Container()],
                  ),
                  height: 100,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextField(
                      onChanged: controller.setAltura,
                      decoration: const InputDecoration(label: Text('Altura'))),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextField(
                    onChanged: controller.setPeso,
                    decoration: const InputDecoration(label: Text('Peso')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.calculateBmi();
                        });
                      },
                      child: const Text('Calculate')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(controller.result),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
