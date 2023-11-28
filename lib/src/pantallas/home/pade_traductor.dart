import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class TraductorScreen extends StatefulWidget {
  @override
  _TraductorScreenState createState() => _TraductorScreenState();
}

class _TraductorScreenState extends State<TraductorScreen> {
  SpeechToText speechToText = SpeechToText();
  var text = "Presiona el microfono para traducir";
  var isListening = false;
  var textoReconocido = "";

  Image? obtenerImagenPorLetra(String letra) {
    Map<String, String> rutasImagenes = {
      'a': 'imagenes/abecedario/a.jpg',
      'b': 'imagenes/abecedario/b.jpg',
      'c': 'imagenes/abecedario/c.jpg',
      'd': 'imagenes/abecedario/d.jpg',
      'e': 'imagenes/abecedario/e.jpg',
      'f': 'imagenes/abecedario/f.jpg',
      'g': 'imagenes/abecedario/g.jpg',
      'h': 'imagenes/abecedario/h.jpg',
      'i': 'imagenes/abecedario/i.jpg',
      'j': 'imagenes/abecedario/j.png',
      'k': 'imagenes/abecedario/k.jpg',
      'l': 'imagenes/abecedario/l.jpg',
      'm': 'imagenes/abecedario/m.jpg',
      'n': 'imagenes/abecedario/n.jpg',
      'o': 'imagenes/abecedario/o.jpg',
      'p': 'imagenes/abecedario/p.jpg',
      'q': 'imagenes/abecedario/q.jpg',
      'r': 'imagenes/abecedario/r.jpg',
      's': 'imagenes/abecedario/s.jpg',
      't': 'imagenes/abecedario/t.jpg',
      'u': 'imagenes/abecedario/u.jpg',
      'v': 'imagenes/abecedario/v.jpg',
      'w': 'imagenes/abecedario/w.jpg',
      'x': 'imagenes/abecedario/x.jpg',
      'y': 'imagenes/abecedario/y.jpg',
      'z': 'imagenes/abecedario/z.jpg',
      ' ': 'imagenes/abecedario/guion.png',
      // Agrega el resto de las letras y sus rutas de imagen
    };

    String? rutaImagen = rutasImagenes[letra.toLowerCase()];

    if (rutaImagen != null) {
      return Image.asset(rutaImagen, width: 80, height: 80);
    } else {
      return null;
    }
  }

  Widget construirCuadroDeTexto() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      margin: const EdgeInsets.only(bottom: 20),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget construirCuadroDeImagenes() {
    List<Widget> imagenesPorLetra = [];
    for (var letra in textoReconocido.split('')) {
      Image? imagen = obtenerImagenPorLetra(letra);
      if (imagen != null) {
        imagenesPorLetra.add(imagen);
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        width: 600,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 2.0),
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8.0,
          children: imagenesPorLetra,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ejemplo Cuadros y Botón',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              construirCuadroDeTexto(),
              construirCuadroDeImagenes(),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GestureDetector(
          onTapDown: (details) async {
            if (!isListening) {
              var available = await speechToText.initialize();
              if (available) {
                setState(() {
                  isListening = true;
                  speechToText.listen(
                    onResult: (result) {
                      setState(() {
                        text = result.recognizedWords;
                        textoReconocido = text;
                      });
                    },
                  );
                });
              }
            }
          },
          onTapUp: (details) {
            setState(() {
              isListening = false;
            });
            speechToText.stop();
          },
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 35,
            child: Icon(
              isListening ? Icons.mic : Icons.mic_none,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
