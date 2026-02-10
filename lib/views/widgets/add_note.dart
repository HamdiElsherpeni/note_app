import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_failed.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26.0, right: 10, left: 10),
      child: Container(
        child: const Column(
          children: [CustomTextFailed(hint: 'Titel',), SizedBox(height: 15,),CustomTextFailed(maxLines: 10, hint: 'SubTitel',)],
        ),
      ),
    );
  }
}
