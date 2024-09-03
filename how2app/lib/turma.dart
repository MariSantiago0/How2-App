import 'package:flutter/material.dart';

class TurmaPag extends StatelessWidget {
  const TurmaPag({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1B1B),
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        iconTheme: IconThemeData(
          color: Color(0xffffffff), //change your color here
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.design_services,
                size: 30.0,
                color: Colors.white,
              ),
              const SizedBox(width: 10.0),
              const Text('Designer Gráfico',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              const SizedBox(width: 120.0),
            ],
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 35.0, left: 10, right: 10),
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 15, top: 10, right: 0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.account_circle,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Ação ao pressionar o ícone
                          },
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 3, top: 18),
                            child: Text(
                              'ROBERTA DAMASCO (Designer)',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 3),
                            child: Text(
                              'Hoje às 08h30',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 18, top: 75, right: 25),
                    child: Text(
                      'Boa noite gente, estão preparados para primeira reunião amanhã?',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 165, bottom: 2, left: 18),
                        child: Text(
                          'Responder',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 160),
                            child: IconButton(
                              icon: const Icon(
                                Icons.chat,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // Ação ao pressionar o ícone
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 160, bottom: 10),
                        height: 3,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35.0, left: 10, right: 10),
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 15, top: 10, right: 0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.account_circle,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Ação ao pressionar o ícone
                          },
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 3, top: 18),
                            child: Text(
                              'ROBERTA DAMASCO (Designer)',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 3),
                            child: Text(
                              'Hoje às 08h30',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 165, bottom: 2, left: 18),
                        child: Text(
                          'Responder',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 160),
                            child: IconButton(
                              icon: const Icon(
                                Icons.chat,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // Ação ao pressionar o ícone
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 160),
                        height: 3,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 85.0, left: 25, right: 25, bottom: 30),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF8907BB),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 30, top: 90, right: 0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.event,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Ação ao pressionar o ícone
                          },
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 3, top: 105),
                            child: Text(
                              'Reunião agendada para 19h00',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 60, bottom: 10, right: 25, left: 25),
              height: 30, // Ajuste conforme necessário
              child: Stack(
                children: [
                  // Linha vermelha
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 3, // Altura da linha
                        color: Color(0xFFFF3D3D), // Cor da linha
                      ),
                    ),
                  ),
                  // Texto sobre a linha
                  Center(
                    child: Text(
                      'Novas mensagens',
                      style: TextStyle(color: Color(0xFFFF3D3D), fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 2.0, left: 25, right: 25, bottom: 100),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF8907BB),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                // Centraliza tudo dentro do Container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centraliza o Row horizontalmente
                  crossAxisAlignment: CrossAxisAlignment
                      .center, // Centraliza o conteúdo verticalmente
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.video_call,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Ação ao pressionar o ícone
                      },
                    ),
                    SizedBox(width: 10), // Espaçamento entre o ícone e o texto
                    Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza verticalmente o texto
                      children: [
                        Text(
                          'Reunião iniciada',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Espaçamento entre o texto e o botão
                    Container(
                      height: 20,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        // Centraliza o texto dentro do botão
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF8907BB)), // Define a cor do texto
                          ),
                          onPressed: () {},
                          child: Center(
                            // Centraliza o texto no botão
                            child: Text(
                              'ENTRAR',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
