import 'package:flutter/material.dart';
import 'package:instant_notes/view/widgets/others.dart';
import '../widgets/headings.dart';
import '../widgets/text_fields.dart';
import 'folders.dart';

class NewFolderPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  
  NewFolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFc3c3c3),
      appBar: const GeneralAppBar(),
      drawer: const GeneralDrawer(),
      body: Padding(padding: const EdgeInsets.all(30.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(children: [
              const Text("Nueva carpeta",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const VerticalSpace(height: 30),
              const GeneralTextField(text: "Nombre"),
              const VerticalSpace(height: 10),
              Row(children: [
                ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF676cc9),
                  ),
                  child: const Text("Cargar imagen"),),
              ],),
              const VerticalSpace(height: 10),
              const LargeTextField(text: "Descripción",numLines: 4,),
              const VerticalSpace(height: 35),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF676cc9),
                ),
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Carpeta creada"),
                      ),
                    );
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FoldersPage()));
                },
                child: const Text("Guardar"),
              ),
            ],),
          ), 
        ),
      ),
    );
  }
}