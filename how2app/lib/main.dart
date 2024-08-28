import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How2?',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'How2?'),
       debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1B1B1B),
          leading: IconButton(
            icon: const Icon(Icons.view_headline, size: 30.0, color: Colors.white,),
            onPressed: () {
              // Ação ao pressionar o ícone
            },
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 40.0), // Espaçamento para mover para a direita
              child: Text(
                'How2?',
                style: TextStyle(fontSize: 23.0, color: Colors.white), // Tamanho da fonte aumentado para 23
              ),
            ),
          ],
          title: SizedBox(
            width: 350,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(top:3.0, bottom:3.0 ,left: 3.0, right: 3.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Pesquisar...',
                  hintStyle: const TextStyle(
                  color: Colors.white,
                   ),
                    alignLabelWithHint: true,
                    
                  prefixIcon: const Icon(Icons.search, color: Colors.white,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(width: 5.0, color: Color.fromARGB(255, 253, 253, 253)), // Largura e cor da linha da borda
                  ),
                ),
                 style: const TextStyle( fontSize: 16.0,
              color: Colors.white,),
              ),
            ),
          ),
          bottom: const TabBar(
              labelColor: Colors.white, // Cor do texto da aba selecionada
        unselectedLabelColor: Colors.grey, // Cor do texto das abas não selecionadas
        indicatorColor: Colors.white, // Cor da linha indicadora
            tabs: [
              Tab(text: 'Catálogo'),
              Tab(text: 'Minhas Turmas'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CatalogTab(),
            MyClassesTab(),
          ],
        ),
            backgroundColor: Color(0xFF1B1B1B),
      ),
    );
  }
}

class CatalogTab extends StatelessWidget {
  const CatalogTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0), // Adiciona padding ao redor da ListView
      children: <Widget>[
        const Text(
          'Catálogo',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white,),
        ),
        const SizedBox(height: 10.0),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '  Veja agora >',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 250.0, // Defina a altura do contêiner
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const SizedBox(width: 20.0),
              SizedBox(
                width: 430.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Defina o raio de arredondamento aqui
                    image: const DecorationImage(
                      image: AssetImage('assets/images/testeVoc.png'),
                      fit: BoxFit.cover, // Ajusta a imagem para cobrir o container
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              SizedBox(
                width: 430.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Defina o raio de arredondamento aqui
                    image: const DecorationImage(
                      image: AssetImage('assets/images/infoProf.png'),
                      fit: BoxFit.cover, // Ajusta a imagem para cobrir o container
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              SizedBox(
                width: 430.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Defina o raio de arredondamento aqui
                    image: const DecorationImage(
                      image: AssetImage('assets/images/noticiasAcademic.png'),
                      fit: BoxFit.cover, // Ajusta a imagem para cobrir o container
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
          const SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(41, 56, 53, 56),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
        
        const SizedBox(height: 20.0),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '  Humanas >',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        
 const SizedBox(height: 20.0),
      // HUMANAS

      Container(
  height: 80.0, // Defina a altura desejada para o Container
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      // Primeiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.theater_comedy,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Antropologia Cultural', style: TextStyle( color: Colors.white),),
                        Text('+2 profissionais', style: TextStyle( color: Colors.white),),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Segundo bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.auto_stories,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Filosófo', style: TextStyle( color: Colors.white),),
                        Text('+20 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Terceiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.pets,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Medicina Veterinária', style: TextStyle( color: Colors.white),),
                        Text('+3 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

Container(
  height: 70.0, // Defina a altura desejada para o Container
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      // Primeiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.psychology,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Ciência Política', style: TextStyle( color: Colors.white),),
                        Text('+4 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Segundo bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.history_edu,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Historiador da Arte', style: TextStyle( color: Colors.white),),
                        Text('+5 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Terceiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.psychology,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Psicólogo', style: TextStyle(color: Colors.white),),
                        Text('+5 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),
const SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(41, 56, 53, 56),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),

     
        const SizedBox(height: 10.0),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '  Sugestões',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 150.0, // Defina a altura do contêiner
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const SizedBox(width: 20.0),
              SizedBox(
                width: 250.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Defina o raio de arredondamento aqui
                    image: const DecorationImage(
                      image: AssetImage('assets/images/treinoEntrevista.png'),
                      fit: BoxFit.cover,
                      // Ajusta a imagem para cobrir o container
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              SizedBox(
                width: 250.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Defina o raio de arredondamento aqui
                    image: const DecorationImage(
                      image: AssetImage('assets/images/portifolio.png'),
                      fit: BoxFit.cover,
                      // Ajusta a imagem para cobrir o container
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

const SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(41, 56, 53, 56),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
        
        const SizedBox(height: 20.0),


       const SizedBox(height: 20.0),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '  Exatas >',
            style: TextStyle(
              fontSize: 18.0,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
      // EXATAS

      Container(
  height: 80.0, // Defina a altura desejada para o Container
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      // Primeiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.calculate,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Matemática', style: TextStyle( color: Colors.white),),
                        Text('+4 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Segundo bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.auto_stories,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Física', style: TextStyle( color: Colors.white),),
                        Text('+2 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Terceiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.engineering,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Engenharia Civil', style: TextStyle( color: Colors.white),),
                        Text('+3 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),


Container(
  height: 70.0, // Defina a altura desejada para o Container
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      // Primeiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.auto_awesome,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Astronomia', style: TextStyle( color: Colors.white),),
                        Text('+4 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Segundo bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.leaderboard,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Estatística', style: TextStyle( color: Colors.white),),
                        Text('+5 profissionais', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Terceiro bloco
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: SizedBox(
          width: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.science,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Ação ao pressionar o ícone
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Química', style: TextStyle( color: Colors.white),),
                        Text('+2 profissionais', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),
const SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(41, 56, 53, 56),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
      ],
    );
  }
}

class MyClassesTab extends StatelessWidget {
  const MyClassesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 5.0, left: 30.0, top: 10.0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.sort_by_alpha, size: 22, color: Colors.white,),
                  onPressed: () {
                    // Ação ao pressionar o ícone
                  },
                ),
                const SizedBox(width: 2.0),
                IconButton(
                  icon: const Icon(Icons.search, size: 22, color: Colors.white,),
                  onPressed: () {
                    // Ação ao pressionar o ícone
                  },
                ),
                const SizedBox(width: 2.0),
                IconButton(
                  icon: const Icon(Icons.more_vert, size: 22, color: Colors.white,),
                  onPressed: () {
                    // Ação ao pressionar o ícone
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
            child: SizedBox(
              width: 250.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.design_services,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Ação ao pressionar o ícone
                        },
                      ),
                      const SizedBox(width: 8.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Designer Gráfico', style: TextStyle(color: Colors.white),),
                            Text('4/8 mentorias feitas', style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(41, 56, 53, 56),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
            child: SizedBox(
              width: 250.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.visibility,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Ação ao pressionar o ícone
                        },
                      ),
                      const SizedBox(width: 8.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Oftamologista', style: TextStyle( color: Colors.white),),
                            Text('2/8 mentorias feitas', style: TextStyle( color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(41, 56, 53, 56),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
            child: SizedBox(
              width: 250.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.volunteer_activism,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Ação ao pressionar o ícone
                        },
                      ),
                      const SizedBox(width: 8.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cardiologista', style: TextStyle(color: Colors.white),),
                            Text('1/8 mentorias feitas', style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(41, 56, 53, 56),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

