import 'package:flutter/material.dart';
import 'package:app_vacantes/texts/legal_text.dart';

class LegalScreen extends StatefulWidget {
  const LegalScreen({Key? key}) : super(key: key);

  @override
  _LegalScreenState createState() => _LegalScreenState();
}

class _LegalScreenState extends State<LegalScreen> {
  @override
  void initState() {
    super.initState();
    //_closeScreenAfterDelay();
  }

  /*void _closeScreenAfterDelay() async {
    await Future.delayed(const Duration(seconds: 10));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(225, 245, 255, 1.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.0),
                      child: Text('Aviso Legal',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Museo Moderno',
                              color: Color.fromRGBO(1, 99, 148, 1)),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  CloseButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      color: Colors.red,
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll<Color>(Colors.white))),
                ]),

                const SizedBox(height: 20),

                Center(
                  child: Text(
                    legalText,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.01,
                      height: 1.5,
                    ),
                  ),
                ),
                //const SizedBox(height: 1),

                Container(
                  width: screenWidth * 0.3,
                  height: screenWidth * 0.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
