import 'package:flutter/material.dart';
import '../widgets/headings.dart';
import '../widgets/buttons.dart';
import '../widgets/text_fields.dart';
import '../widgets/others.dart';
import 'folders.dart';
import 'registration.dart';

class StartPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFc3c3c3),
      appBar: const GeneralAppBar(),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Expanded(child: 
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(children: [
                const VerticalSpace(height: 30),
                const Text("Inicio de sesión",
                  style: TextStyle(
                    fontSize: 28,
                ),),
                const VerticalSpace(height: 30),
                const GeneralTextField(text: "Nombre de usuario"),
                const VerticalSpace(height: 16),
                const PasswordTextField(text: "Contraseña"),
                const VerticalSpace(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF676cc9),
                  ),
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FoldersPage()));
                    }
                  },
                  child: const Text("Ingresar",
                  style: TextStyle(
                    fontSize: 15,
                  )),),
                const VerticalSpace(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                  },
                  child: const Text("¿No tienes una cuenta? Regístrate",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    color: Colors.black,
                  ),),
                ),
                const VerticalSpace(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF676cc9),
                  ),
                  onPressed: () {},
                  child: const Text("Acceder con cuenta de Google",
                  style: TextStyle(
                    fontSize: 15,
                  )),
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