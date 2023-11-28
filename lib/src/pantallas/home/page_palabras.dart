import 'package:flutter/material.dart';

class PagePalabras extends StatefulWidget {
  const PagePalabras({Key? key}) : super(key: key);

  @override
  _PagePalabrasState createState() => _PagePalabrasState();
}

class _PagePalabrasState extends State<PagePalabras> {
  List<Map<String, String>> _palabras = [
      // Saludos y Despedidas
      {'id': 'gracias', 'url':'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/GRACIAS.jpg?alt=media&token=dd91d49f-8bc0-4396-8a6c-a71cdd7fe41e', 'categoria': 'Saludos y Despedidas'},
      {'id': 'nos vemos','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/NOS%20VEMOS.jpg?alt=media&token=26fec34a-9df2-4ff7-8070-c2b48b47c8ad', 'categoria': 'Saludos y Despedidas'},
      {'id': 'de nada','url':'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/DE%20NADA.jpg?alt=media&token=e78d6679-5641-4cee-aa61-29f40075342e', 'categoria': 'Saludos y Despedidas'},
      {'id': 'hola','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/HOLA.jpg?alt=media&token=e892d86f-ec98-4c0e-9c11-99a7cb14cfa6', 'categoria': 'Saludos y Despedidas'},
      {'id': 'ayuda','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/AYUDA.jpg?alt=media&token=3daabde4-d3d9-4c31-a91d-c59f20951229', 'categoria': 'Saludos y Despedidas'},
      {'id': 'porfavor','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/PORFAVOR.jpg?alt=media&token=2e4f03df-f2d4-43f1-9b7a-1572cf740270', 'categoria': 'Saludos y Despedidas'},
      // Agrega más elementos con sus identificadores
      // Materias
        // Materias
      {'id': 'biologia','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/biologia.jpg?alt=media&token=96739db2-ad7b-4715-92f2-3bf1829c0321', 'categoria': 'Materias'},
      {'id': 'fisica','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/fisica.jpg?alt=media&token=a9f57018-044f-4a34-a6bb-f404d177d093', 'categoria': 'Materias'},
      {'id': 'quimica','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/quimica.jpg?alt=media&token=b17c4df7-45eb-42d0-a7b3-9dc1d60b14b8', 'categoria': 'Materias'},
      {'id': 'musica','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/musica.jpg?alt=media&token=90b2e3c8-15d9-420a-9873-5c3705816c1e', 'categoria': 'Materias'},
      {'id': 'artes','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/artes.jpg?alt=media&token=ade2e7ca-b196-4fa3-99da-b4dac6f58de8', 'categoria': 'Materias'},
      {'id': 'matematicas','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/matematicas.jpg?alt=media&token=50f161a3-6f32-4c25-b5ae-975f6dcc8085', 'categoria': 'Materias'},
      
      // Estados de Ánimo
          // Estados de Ánimo
      {'id': 'contento','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/contento.jpg?alt=media&token=243d20cb-bb81-41df-ab5b-9112a35689f7', 'categoria': 'Estados de animo'},
      {'id': 'asustado','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/asustado.jpg?alt=media&token=0e7bd613-3ab0-42cc-9b8e-e902c93c6f92', 'categoria': 'Estados de animo'},
      {'id': 'preocupado','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/preocupado.jpg?alt=media&token=150a191e-03e6-4004-a79c-13a1f1c6965f', 'categoria': 'Estados de animo'},
      {'id': 'enojado','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/enojado.jpg?alt=media&token=337ecd73-0d06-4197-8a67-1e066c8c17d1', 'categoria': 'Estados de animo'},
      {'id': 'aburrido','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/aburrido.jpg?alt=media&token=e8dd3bf4-227d-489b-9ac8-9047a179b452', 'categoria': 'Estados de animo'},
      {'id': 'triste','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/triste.jpg?alt=media&token=97cf7aa5-3f6a-4e85-9f53-6f0183ecde21', 'categoria': 'Estados de animo'},

      // Cosas u Objetos
    {'id': 'cuaderno','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/cuaderno.jpg?alt=media&token=d7ce3af9-977e-482b-8df7-ea42837b99fb', 'categoria': 'Cosas u Objetos'},
    {'id': 'regla','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/regla.jpg?alt=media&token=bbc59a33-0fc3-468b-a657-ebe05da0913c', 'categoria': 'Cosas u Objetos'},
    {'id': 'mochila','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/mochila.jpg?alt=media&token=6d259ab8-0e6b-44bb-aa78-616e7bc9b98c', 'categoria': 'Cosas u Objetos'},
    {'id': 'mesa','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/mesa.jpg?alt=media&token=ace8cb23-2879-4ca0-874a-86ca408c7bdc', 'categoria': 'Cosas u Objetos'},

      // Colores
    {'id': 'negro','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/NEGRO.jpg?alt=media&token=554f982b-cf11-46c6-aa55-fd8b25bfef33', 'categoria': 'Colores'},
    {'id': 'blanco','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/BLANCO.jpg?alt=media&token=85fbb037-79f8-4a7b-a284-970a3e6128b3', 'categoria': 'Colores'},
    {'id': 'verde','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/VERDE.jpg?alt=media&token=5678bedf-4e27-4748-9b49-f945eefbc9ee', 'categoria': 'Colores'},
    {'id': 'azul','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/AZUL.jpg?alt=media&token=ba4f8e5a-f0a6-4cec-84a0-669fd200e863', 'categoria': 'Colores'},
    {'id': 'morado','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/MORADO.jpg?alt=media&token=f707794e-bdab-4f66-a1a9-5b84adc98cac', 'categoria': 'Colores'},
    {'id': 'rosado','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/ROSADO.jpg?alt=media&token=357197ff-a021-498b-947b-6de42b64fea1', 'categoria': 'Colores'},
    {'id': 'oro','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/DORADO.jpg?alt=media&token=d227bf2d-e034-4de6-8650-2a9969c4a0c5', 'categoria': 'Colores'},
    //dias de la semana
    {'id': 'lunes','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/LUNES.jpg?alt=media&token=37682071-48ac-4267-844d-29ae46dbe037', 'categoria': 'Dias de la semana'},
    {'id': 'martes','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/MARTES.jpg?alt=media&token=5ebf99e8-9673-4d37-b8a6-99249cdb0a34', 'categoria': 'Dias de la semana'},
    {'id': 'miercoles','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/MIERCOLES.jpg?alt=media&token=f9e7fc19-388d-41b4-a916-1fa3d02e1046', 'categoria': 'Dias de la semana'},
    {'id': 'jueves','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/JUEVES.jpg?alt=media&token=c5cea48b-a392-4806-b48d-1b2ab76db6c0', 'categoria': 'Dias de la semana'},
    {'id': 'viernes','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/VIERNES.jpg?alt=media&token=b1a569ac-0dda-49f4-b097-453d4c24cd8d', 'categoria': 'Dias de la semana'},
    {'id': 'sabado','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/SABADO.jpg?alt=media&token=b8fe488f-36d3-489d-850e-589b27eb5b0e', 'categoria': 'Dias de la semana'},
    {'id': 'domingo','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/DOMINGO.jpg?alt=media&token=7724f447-912c-4b42-8164-8eff4bc6dc75', 'categoria': 'Dias de la semana'},
    
    // Meses 
    {'id': 'enero','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/enero.jpg?alt=media&token=265a7a71-d80e-4281-848b-02b323ccf9d2', 'categoria': 'Meses'},
    {'id': 'febrero','url':'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/febrero.jpg?alt=media&token=b7cc4e8d-55b6-43ab-b3d7-2252fdd25513', 'categoria': 'Meses'},
    {'id': 'marzo','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/marzo.jpg?alt=media&token=30fc2d15-9f90-4814-93cf-e51c233029d2', 'categoria': 'Meses'},
    {'id': 'abril','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/abril.jpg?alt=media&token=9d2b5048-17aa-40f9-abfb-ba3283bd774a', 'categoria': 'Meses'},
    {'id': 'mayo','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/mayo.jpg?alt=media&token=292bc9b8-36a7-4442-9589-b09729169ba7', 'categoria': 'Meses'},
    {'id': 'junio','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/junio.jpg?alt=media&token=c97a8971-c6e9-44ec-b282-41342496f118', 'categoria': 'Meses'},
    {'id': 'julio','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/julio.jpg?alt=media&token=bc6cb682-7649-4e29-8964-ac1f245c5898', 'categoria': 'Meses'},
    {'id': 'agosto','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/agosto.jpg?alt=media&token=725ec99d-1842-437b-81b9-1ee6d3d9d3c5', 'categoria': 'Meses'},
    {'id': 'septiembre','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/septiembre.jpg?alt=media&token=766e1600-8ec4-4769-808a-83f09ba1a311', 'categoria': 'Meses'},
    {'id': 'octubre','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/octubre.jpg?alt=media&token=730b977c-26a0-4c92-bca4-306fd629de10', 'categoria': 'Meses'},
    {'id': 'noviembre','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/noviembre.jpg?alt=media&token=935510f8-6f4c-44c8-8297-34176c62352e', 'categoria': 'Meses'},
    {'id': 'diciembre','url': 'https://firebasestorage.googleapis.com/v0/b/lenguajedesenas-f1e6d.appspot.com/o/diciembre.jpg?alt=media&token=bdeab4fd-49c7-4064-af4d-3865558643a7', 'categoria': 'Meses'},

    ];

  TextEditingController _searchController = TextEditingController();
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CATÁLOGO DE PALABRAS'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Agrega aquí la lógica para abrir el menú
            },
          ),
        ],
      ),
      drawer: _buildCategoryMenu(),
      body: Column(
        children: [
          _buildSearchBar(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _filteredPalabras().length,
              itemBuilder: (context, index) {
                return _buildPalabraCard(_filteredPalabras()[index]['url']!);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {});
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Buscar',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _searchController.clear();
                    });
                  },
                ),
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showAddDialog();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            child: Text(
              'Añadir',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryMenu() {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Categorías'),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.green,
          ),
          _buildCategoryButton('Saludos y Despedidas'),
          _buildCategoryButton('Materias'),
          _buildCategoryButton('Estados de animo'),
          _buildCategoryButton('Cosas u Objetos'),
          _buildCategoryButton('Colores'),
          _buildCategoryButton('Dias de la semana'),
          _buildCategoryButton('Meses'),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    return ListTile(
      title: Text(category),
      onTap: () {
        setState(() {
          _selectedCategory = category;
        });
        Navigator.pop(context);
      },
    );
  }

  List<Map<String, String>> _filteredPalabras() {
    String searchText = _searchController.text.toLowerCase();
    return _palabras
        .where((palabra) =>
            palabra['categoria']!.toLowerCase().contains(_selectedCategory.toLowerCase()) &&
            (searchText.isEmpty || palabra['id']!.toLowerCase().contains(searchText)))
        .toList();
  }

  Widget _buildPalabraCard(String imageLink) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Image.network(
          imageLink,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  void _showAddDialog() {
    TextEditingController idController = TextEditingController();
    TextEditingController urlController = TextEditingController();
    TextEditingController categoryController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Añadir Palabra'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: idController,
                decoration: InputDecoration(labelText: 'ID'),
              ),
              TextField(
                controller: urlController,
                decoration: InputDecoration(labelText: 'URL'),
              ),
              TextField(
                controller: categoryController,
                decoration: InputDecoration(labelText: 'Categoría'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                _addPalabra(idController.text, urlController.text, categoryController.text);
                Navigator.of(context).pop();
              },
              child: Text('Añadir'),
            ),
          ],
        );
      },
    );
  }

  void _addPalabra(String id, String url, String category) {
    setState(() {
      _palabras.add({
        'id': id,
        'url': url,
        'categoria': category,
      });
    });
  }
}