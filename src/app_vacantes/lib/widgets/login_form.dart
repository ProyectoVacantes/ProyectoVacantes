import 'package:flutter/material.dart';
import 'package:app_vacantes/auth/utils/validator_utils.dart';

class LoginForm extends StatelessWidget {
LoginForm({Key? key}) : super(key: key);

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    FormValidator formValidator = FormValidator();
    return Form(
      key: _formKey,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: TextFormField(
                validator: formValidator.isValidEmail,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Escribe tu email",
                  prefixIcon: Icon(Icons.email),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}