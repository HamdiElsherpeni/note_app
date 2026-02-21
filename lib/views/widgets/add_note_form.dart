import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/color_list_view.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_failed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titel, subTitel;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 5),
          CustomTextFailed(
            hint: 'Titel',
            onSaved: (value) {
              titel = value;
            },
          ),
          const SizedBox(height: 15),
          CustomTextFailed(
            maxLines: 8,
            hint: 'Contant',
            onSaved: (value) {
              subTitel = value;
            },
          ),
        const  ColorListView(),
          const SizedBox(height: 15),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    String formattedDate = DateFormat(
                      'dd MMM yyyy',
                    ).format(DateTime.now());
                    var noteModel = NoteModel(
                      titel: titel!,
                      subTitel: subTitel!,
                      date: formattedDate,
                      color: Colors.yellow.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNotes(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

