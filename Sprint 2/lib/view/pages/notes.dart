import 'package:flutter/material.dart';
import '../widgets/others.dart';
import 'contents.dart';
import '../widgets/headings.dart';
import '../widgets/buttons.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lista = _listNotes();

    return Scaffold(
      backgroundColor: const Color(0xFFc3c3c3),
      appBar: const GeneralAppBar(),
      drawer: const GeneralDrawer(),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(children: [
            SizedBox(
              height: 60,
              child: Image.asset("assets/images/folders.jpg"),),
            const HorizontalSpace(width: 30),
            const Text("Ejemplo",
              style: TextStyle(
                fontSize: 24,),),
          ],),
          const VerticalSpace(height: 30),
          const StandardDivider(height: 10, thickness: 5,),
          const StandardDivider(height: 10, thickness: 5,),
          const VerticalSpace(height: 30),
          Expanded(
              child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index) => 
                  ListTile(
                    leading: Image.asset("assets/images/notes.jpg"),
                    title: Text(lista[index]),
                    subtitle: const Text("Descripción"),
                    trailing: IconButton(icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {},),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ContentsPage()));
                    },
                  ),
              ),
          ),
        ]),
      ),
      floatingActionButton: const AddButton(textToAdd: "Agregar nota", route: '/new_note',),
    );
  }

  List <String> _listNotes(){
    return List<String>.generate(10, (index) => "Nota ${index + 1}",);
  }
}