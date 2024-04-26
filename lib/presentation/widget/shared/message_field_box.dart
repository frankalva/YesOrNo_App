import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget {
  final ValueChanged onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  State<MessageFieldBox> createState() => _MessageFieldBoxState();
}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  late FocusNode myfocusNode;
  late TextEditingController textFromFieldController;
  @override
    void initState() {
    super.initState();
    textFromFieldController = TextEditingController();
    myfocusNode = FocusNode();
  }

  @override
  void dispose() {
    textFromFieldController.dispose();
    // Clean up the focus node when the Form is disposed.
    myfocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    
    
    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(30));

    final inputDecoration = InputDecoration(
        hintText: "Text your message",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final text = textFromFieldController.value.text;
            textFromFieldController.clear();
            widget.onValue(text);
          },
        ));

    return TextFormField(
      focusNode: myfocusNode,
      controller: textFromFieldController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textFromFieldController.clear();
        widget.onValue(value);
      }
    );
  }
}
