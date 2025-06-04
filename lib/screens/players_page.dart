import 'package:flutter/material.dart';
import '../models/player.dart';

class PlayersPage extends StatefulWidget {
  const PlayersPage({super.key});

  @override
  State<PlayersPage> createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage> {
  final List<Player> players = [
    Player(
      id: '1',
      name: 'Lionel Messi',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt68e2d01a63826a80/60db38bcd9a5243b669adc7a/28587733bf577f983fbc38d2078c2dab388bf63a.jpg',
      description: 'El mejor jugador de todos los tiempos. Ganador de 8 Balones de Oro y campeón del mundo con Argentina.',
      team: 'Inter Miami',
      position: 'Delantero',
      goals: 800,
    ),
    Player(
      id: '2',
      name: 'Erling Haaland',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt0a8be8ab544b2b45/6437a3f4c9d85c49e1f4e2cc/Erling_Haaland_Manchester_City_2022-23.jpg',
      description: 'Delantero noruego conocido por su potencia y definición. Estrella del Manchester City.',
      team: 'Manchester City',
      position: 'Delantero',
      goals: 200,
    ),
    Player(
      id: '3',
      name: 'Jude Bellingham',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltdd4c9b8cafb702c7/656f10720305df040a31c76f/Jude_Bellingham_Real_Madrid_2023-24_(7).jpg',
      description: 'Nueva estrella del Real Madrid. Centrocampista inglés con gran proyección.',
      team: 'Real Madrid',
      position: 'Centrocampista',
      goals: 50,
    ),
    Player(
      id: '4',
      name: 'Vinicius Jr',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt2a1bf0718ea0b453/6563755540f4e36537be5acb/Vinicius_Junior_Real_Madrid_2023-24_(5).jpg',
      description: 'Extremo brasileño del Real Madrid. Conocido por su velocidad y regate.',
      team: 'Real Madrid',
      position: 'Extremo',
      goals: 100,
    ),
    Player(
  id: '5',
  name: 'Kylian Mbappé',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Kylian_Mbapp%C3%A9_2019.jpg/640px-Kylian_Mbapp%C3%A9_2019.jpg',
  description: 'Delantero explosivo y campeón del mundo con Francia en 2018.',
  team: 'Paris Saint-Germain',
  position: 'Delantero',
  goals: 300,
),
Player(
  id: '6',
  name: 'Cristiano Ronaldo',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg',
  description: 'Máquina goleadora portuguesa. Ganador de 5 Balones de Oro.',
  team: 'Al-Nassr',
  position: 'Delantero',
  goals: 850,
),
Player(
  id: '7',
  name: 'Kevin De Bruyne',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Kevin_De_Bruyne_201807091.jpg/640px-Kevin_De_Bruyne_201807091.jpg',
  description: 'Mediocampista belga con una visión y pase excepcionales.',
  team: 'Manchester City',
  position: 'Centrocampista',
  goals: 120,
),
Player(
  id: '8',
  name: 'Neymar Jr',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Neymar_2018.jpg/640px-Neymar_2018.jpg',
  description: 'Estrella brasileña con una técnica inigualable.',
  team: 'Al-Hilal',
  position: 'Delantero',
  goals: 450,
),
Player(
  id: '9',
  name: 'Mohamed Salah',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Mohamed_Salah_in_2022.jpg/640px-Mohamed_Salah_in_2022.jpg',
  description: 'Goleador egipcio del Liverpool, veloz y preciso.',
  team: 'Liverpool',
  position: 'Delantero',
  goals: 250,
),
Player(
  id: '10',
  name: 'Robert Lewandowski',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Robert_Lewandowski_2020.jpg/640px-Robert_Lewandowski_2020.jpg',
  description: 'Letal en el área. Máximo goleador del Bayern y ahora en el Barça.',
  team: 'Barcelona',
  position: 'Delantero',
  goals: 600,
),
Player(
  id: '11',
  name: 'Luka Modric',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Luka_Modri%C4%87_2018.jpg/640px-Luka_Modri%C4%87_2018.jpg',
  description: 'Maestro del mediocampo croata. Ganador del Balón de Oro 2018.',
  team: 'Real Madrid',
  position: 'Centrocampista',
  goals: 80,
),
Player(
  id: '12',
  name: 'Harry Kane',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Harry_Kane_in_2020.jpg/640px-Harry_Kane_in_2020.jpg',
  description: 'Goleador inglés letal dentro del área.',
  team: 'Bayern Múnich',
  position: 'Delantero',
  goals: 350,
),
Player(
  id: '13',
  name: 'Antoine Griezmann',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Antoine_Griezmann_2018.jpg/640px-Antoine_Griezmann_2018.jpg',
  description: 'Versátil atacante francés y campeón del mundo.',
  team: 'Atlético de Madrid',
  position: 'Delantero',
  goals: 250,
),
Player(
  id: '14',
  name: 'Pedri',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Pedri_2022.jpg/640px-Pedri_2022.jpg',
  description: 'Joven talento español del Barça con gran inteligencia táctica.',
  team: 'Barcelona',
  position: 'Centrocampista',
  goals: 25,
),
Player(
  id: '15',
  name: 'Toni Kroos',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/1d/Toni_Kroos_2018.jpg',
  description: 'Centrocampista alemán, referente del Real Madrid por su precisión en el pase.',
  team: 'Real Madrid',
  position: 'Centrocampista',
  goals: 90,
),
Player(
  id: '16',
  name: 'Karim Benzema',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Karim_Benzema_2022.jpg',
  description: 'Delantero francés con gran clase y definición, Balón de Oro 2022.',
  team: 'Al-Ittihad',
  position: 'Delantero',
  goals: 450,
),
Player(
  id: '17',
  name: 'Rodri',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Rodri_in_2022.jpg',
  description: 'Pivote del Manchester City, clave en la recuperación y salida limpia.',
  team: 'Manchester City',
  position: 'Centrocampista',
  goals: 40,
),
Player(
  id: '18',
  name: 'Phil Foden',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/57/Phil_Foden_2022.jpg',
  description: 'Joven talento inglés del City, desequilibrante y técnico.',
  team: 'Manchester City',
  position: 'Centrocampista',
  goals: 60,
),
Player(
  id: '19',
  name: 'João Félix',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Jo%C3%A3o_F%C3%A9lix_2020.jpg',
  description: 'Portugués habilidoso y creativo, con experiencia en varios clubes top.',
  team: 'Barcelona',
  position: 'Delantero',
  goals: 70,
),
Player(
  id: '20',
  name: 'Bukayo Saka',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Bukayo_Saka_2020.jpg',
  description: 'Extremo inglés del Arsenal, rápido y decisivo.',
  team: 'Arsenal',
  position: 'Extremo',
  goals: 55,
),
Player(
  id: '21',
  name: 'Achraf Hakimi',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Achraf_Hakimi_2021.jpg',
  description: 'Lateral derecho marroquí, veloz y ofensivo.',
  team: 'Paris Saint-Germain',
  position: 'Defensa',
  goals: 35,
),
Player(
  id: '22',
  name: 'Riyad Mahrez',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/71/Riyad_Mahrez_2019.jpg',
  description: 'Extremo argelino con gran técnica y regate.',
  team: 'Al-Ahli',
  position: 'Extremo',
  goals: 160,
),
Player(
  id: '23',
  name: 'Bruno Fernandes',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/e2/Bruno_Fernandes_2021.jpg',
  description: 'Centrocampista ofensivo portugués del Manchester United.',
  team: 'Manchester United',
  position: 'Centrocampista',
  goals: 130,
),
Player(
  id: '24',
  name: 'Victor Osimhen',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/fb/Victor_Osimhen_2021.jpg',
  description: 'Delantero nigeriano del Napoli, potente y goleador.',
  team: 'Napoli',
  position: 'Delantero',
  goals: 90,
),
  ];

  Player? selectedPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.grey[100],
            child: ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(players[index].imageUrl),
                    ),
                    title: Text(
                      players[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('${players[index].team} - ${players[index].position}'),
                    onTap: () => setState(() => selectedPlayer = players[index]),
                  ),
                );
              },
            ),
          ),
        ),
        if (selectedPlayer != null)
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Card(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                      child: Image.network(
                        selectedPlayer!.imageUrl,
                        height: 300,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedPlayer!.name,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildInfoRow(Icons.sports_soccer, 'Equipo:', selectedPlayer!.team),
                          _buildInfoRow(Icons.person, 'Posición:', selectedPlayer!.position),
                          _buildInfoRow(Icons.sports_score, 'Goles:', selectedPlayer!.goals.toString()),
                          const SizedBox(height: 16),
                          const Text(
                            'Descripción:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            selectedPlayer!.description,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 4),
          Text(value),
        ],
      ),
    );
  }
}
