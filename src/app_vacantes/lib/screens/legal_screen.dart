import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/home_screen.dart';

class LegalScreen extends StatefulWidget {
  const LegalScreen({Key? key}) : super(key: key);

  @override
  _LegalScreenState createState() => _LegalScreenState();
}

class _LegalScreenState extends State<LegalScreen> {
  @override
  void initState() {
    super.initState();
    _closeScreenAfterDelay(); //Para cerrar la pantalla después de 10 segundos
  }
  void _closeScreenAfterDelay() async {
    await Future.delayed(const Duration(seconds: 20));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aviso Legal'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF49BB88)),
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Center(
            child: Text(
              'Cupcake ipsum dolor sit amet sweet roll toffee gingerbread lollipop. '
              'Bonbon candy cake pudding cake bear claw cake sesame snaps gingerbread. '
              'Chocolate bar tiramisu chocolate cake chocolate bar bear claw candy canes marzipan cookie bear claw. '
              'Shortbread jelly pudding bonbon candy pudding cheesecake. Sesame snaps chocolate bar toffee brownie halvah. '
              'Candy canes cookie candy canes halvah ice cream. Biscuit chocolate danish gummies ice cream dragée caramels lemon drops cookie. '
              'Marzipan candy shortbread pastry caramels chocolate bar. Jelly-o chupa chups oat cake marzipan candy canes tootsie roll lemon drops jelly beans. '
              'Candy cake candy canes gummies bear claw danish tart apple pie carrot cake. Gummi bears pie icing powder soufflé jujubes donut pastry. '
              'Marzipan shortbread halvah dessert pastry carrot cake wafer pie. Gingerbread shortbread lollipop fruitcake caramels gummi bears apple pie gummi bears wafer. '
              'Tart candy cheesecake sesame snaps halvah cupcake jelly-o. Topping carrot cake oat cake bonbon dragée tart halvah pie. '
              'Toffee marshmallow gingerbread gingerbread topping cupcake dessert chocolate. Caramels shortbread dragée jelly beans marshmallow donut. '
              'Sweet roll marshmallow cake powder gingerbread. Cake shortbread jelly beans bear claw sweet roll sesame snaps topping soufflé. '
              'Shortbread tiramisu pie gummies icing cotton candy soufflé pudding. Donut oat cake gingerbread bear claw jelly-o chocolate cake apple pie pastry. '
              'Marzipan shortbread cake cookie fruitcake cheesecake lollipop cotton candy. Toffee brownie cupcake powder chupa chups gingerbread. '
              'Shortbread bear claw sugar plum jelly-o shortbread cookie tootsie roll tootsie roll. Lemon drops gummi bears brownie topping muffin chocolate bar cupcake soufflé. '
              'Apple pie jelly beans chocolate cake lollipop ice cream jelly pudding sugar plum. Muffin tiramisu cupcake ice cream croissant bonbon muffin sweet roll. '
              'Tart tiramisu brownie croissant cheesecake sesame snaps sesame snaps soufflé. Tart dragée carrot cake jelly-o muffin. Jelly-o jelly-o sweet roll pie chocolate cake. '
              'Cookie gummies ice cream chocolate bar lollipop ice cream. Sugar plum lollipop soufflé marshmallow cake gummies marshmallow. '
              'Tart cookie croissant muffin lemon drops tiramisu tart cupcake gingerbread. Marshmallow chocolate cake cake tart marshmallow pie ice cream. '
              'Sweet tiramisu topping croissant apple pie powder macaroon gummi bears. Chocolate chocolate bar ice cream brownie dessert danish marzipan. '
              'Tiramisu jelly beans cookie ice cream topping. Gingerbread muffin cake gingerbread sugar plum soufflé biscuit soufflé. '
              'Oat cake jelly oat cake bonbon toffee candy muffin cheesecake sugar plum. Biscuit fruitcake chocolate cake shortbread lemon drops. '
              'Marshmallow powder dragée toffee candy caramels sesame snaps pastry. Icing sesame snaps brownie bear claw biscuit. '
              'Sesame snaps wafer halvah candy canes toffee toffee tart jelly beans. Chocolate cake sweet roll candy cotton candy topping. '
              'Cake soufflé cupcake liquorice chupa chups cupcake topping pie toffee. Bonbon tart muffin cake candy canes soufflé dragée tootsie roll lemon drops. '
              'Caramels sugar plum fruitcake candy canes cupcake jelly. Gummies gummies halvah jelly beans jujubes cheesecake danish dessert chupa chups. '
              'Candy canes apple pie cookie chocolate halvah cake cheesecake. Shortbread croissant croissant jelly-o chupa chups cheesecake. '
              'Tart pudding jelly jelly macaroon pie cake. Sesame snaps jelly-o danish sweet jelly pie dragée. '
              'Cheesecake caramels donut icing tootsie roll pastry candy. Jujubes jelly biscuit topping marzipan pudding bear claw biscuit. '
              'Sesame snaps jelly-o dessert icing bear claw. Chupa chups sweet roll dragée muffin cookie sugar plum. '
              'Cake chupa chups bonbon lollipop powder sugar plum jelly beans sugar plum. Cake cotton candy bear claw cake ice cream lollipop. '
              'Jelly bear claw sesame snaps cupcake pudding jelly jelly-o candy. Soufflé carrot cake tart topping tart liquorice lollipop. '
              'Toffee wafer bear claw ice cream brownie caramels. Gummies croissant apple pie gingerbread fruitcake donut caramels. '
              'Cupcake candy apple pie cookie sweet icing toffee jelly-o gummi bears. Apple pie liquorice brownie cake dragée tiramisu. '
              'Chocolate bar donut macaroon bonbon cheesecake shortbread lollipop pastry jelly beans.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: screenWidth * 0.015,
                height: 1.5,
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
