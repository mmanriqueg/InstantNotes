import 'package:flutter/material.dart';
import '../widgets/headings.dart';
import '../widgets/buttons.dart';
import '../widgets/others.dart';
import 'notes.dart';

class FoldersPage extends StatelessWidget {
  const FoldersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lista = _listFolders();

    return Scaffold(
      backgroundColor: const Color(0xFFc3c3c3),
      appBar: const GeneralAppBar(),
      drawer: const GeneralDrawer(),
      body: Padding(padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const VerticalSpace(height: 20),
            Row(children: const [
              Text("Carpetas",
                style:TextStyle(
                  fontSize: 24,
                ),
              ),
            ],),
            const VerticalSpace(height: 35),
            Expanded(child: 
              ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: Image.asset("assets/images/folders.jpg"),
                    title: Text(lista[index]),
                    subtitle: const Text("Descripción"),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: () {
                      },),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NotesPage()));
                    },
                  );
                },
              ),
            ),
        ],),
      ),
      floatingActionButton: const AddButton(textToAdd: "Nueva carpeta", route: '/new_folder',),
    );
  }

  List<String> _listFolders(){
    return List<String>.generate(10, (index) => "Carpeta ${index + 1}",);
  }
}