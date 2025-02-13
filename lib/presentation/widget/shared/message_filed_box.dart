import 'package:flutter/material.dart';

class MessageFiledBox extends StatelessWidget {
  const MessageFiledBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController =
        TextEditingController(); //Controlador del campo de texto.
    final focusNode = FocusNode(); //Nodo de foco del campo de texto.

    final outLineInputBorder = UnderlineInputBorder(
      //Borde del campo de texto.
      borderSide:
          const BorderSide(color: Colors.transparent), //Color del borde.
      borderRadius: BorderRadius.circular(10), //Borde redondeado.
    );

    final inputDecoration = InputDecoration(
        //Decoración del campo de texto.
        hintText: 'End your message with a "#"', //Texto de ayuda (Placeholder).
        enabledBorder: outLineInputBorder, //Borde del campo de texto.
        focusedBorder:
            outLineInputBorder, //Borde del campo de texto cuando está seleccionado.
        filled: true, //Relleno del campo de texto.
        suffixIcon: IconButton(
          //Botón de envío.
          icon: Icon(Icons.send_outlined), //Icono del botón de envío.
          onPressed: () {
            //Cuando se presiona el botón de envío.
            final textValue =
                textController.text; //Obtiene el texto del campo de texto.
            print('Button: $textValue');
            textController.clear(); // Limpia el campo de texto.
          },
        ));

    return TextFormField(
      //Campo de texto.
      onTapOutside: (event) => focusNode
          .unfocus(), //Cierra el teclado al tocar fuera del campo de texto.
      focusNode: focusNode,
      controller: textController, //Controlador del campo de texto.
      decoration: inputDecoration, //Decoración del campo de texto.
      onFieldSubmitted: (value) {
        //Cuando se envía el texto.
        print('Submit value $value');
        textController.clear(); //Limpia el campo de texto.
        focusNode
            .requestFocus(); //Mantiene el foco en el campo de texto (Mantiene el teclado abierto).
      },
    );
  }
}
