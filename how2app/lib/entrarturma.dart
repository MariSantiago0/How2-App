import 'package:flutter/material.dart';

class EntrarPag extends StatelessWidget {
  const EntrarPag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1B1B),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          Row(
            mainAxisSize:
                MainAxisSize.min, // Minimiza o espaço extra ao redor dos ícones
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 22,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Ação ao pressionar o ícone
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 22,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Ação ao pressionar o ícone
                },
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              Icon(
                Icons.design_services,
                size: 70.0,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(
                'Designer Gráfico',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Adicione ação do botão aqui
              print('Você está na Turma');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text(
              'Entrar na turma 04/30',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0x1F7E7B7B), // Corrigido o valor da cor
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Sobre',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            'O Designer Gráfico cria conceitos visuais e desenvolve projetos de comunicação para diversas mídias, como digitais e audiovisuais, utilizando elementos como cores, tipografia, imagens e layouts para transmitir mensagens de forma eficaz.',
            style: TextStyle(color: Colors.white),
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 15),
          Text(
            'Possíveis cargos na área:\n'
            '- Diretor de Arte\n'
            '- Ilustrador\n'
            '- Designer de Interface (UI Designer)\n',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0x1F7E7B7B), // Corrigido o valor da cor
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Com base nas suas pesquisas >',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 100.0,
            child: Center(
              // Centraliza o ListView horizontal
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.history_edu,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'História',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.checkroom,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'Moda',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.psychology,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'Psicologia',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.app_shortcut,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'Marketing', // Corrigido o texto
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.gavel,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'Advocacia', // Corrigido o texto
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
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
