import 'package:flutter/material.dart';
import '../widgets/headings.dart';
import '../widgets/buttons.dart';
import '../widgets/text_fields.dart';
import '../widgets/others.dart';

class RegistrationPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFc3c3c3),
      appBar: const GeneralAppBar(),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(children: [
                const VerticalSpace(height: 10),
                const Text("¡Regístrate!",
                  style: TextStyle(
                    fontSize: 32,
                ),),
                const VerticalSpace(height: 30),
                const GeneralTextField(text: "Nombres"),
                const VerticalSpace(height: 30),
                const GeneralTextField(text: "Apellidos"),
                const VerticalSpace(height: 30),
                const GeneralTextField(text: "Nombre de usuario"),
                const VerticalSpace(height: 30),
                const PasswordTextField(text: "Contraseña"),
                const VerticalSpace(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF676cc9),
                  ),
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      Navigator.pop(context);
                    }
                  },
                  child: const Text("Guardar"),
                ),
              ],),
            ),
          ),
        ),
      ),  
      floatingActionButton: const InfoButton(),
    );
  }
}