import 'package:flutter/material.dart';
import '../models/stadium.dart';

class StadiumsPage extends StatefulWidget {
  const StadiumsPage({super.key});

  @override
  State<StadiumsPage> createState() => _StadiumsPageState();
}

class _StadiumsPageState extends State<StadiumsPage> {
  final List<Stadium> stadiums = [
    Stadium(
      id: '1',
      name: 'Santiago Bernabéu',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt31a6cc3b7f7c5751/63454df46246ed3fa565fb69/Santiago_Bernabeu.jpg',
      description: 'Estadio histórico del Real Madrid, recientemente remodelado con tecnología de última generación. Cuenta con un sistema de césped retráctil y techo móvil.',
      location: 'Madrid, España',
      capacity: 81044,
      yearBuilt: 1947,
    ),
    Stadium(
      id: '2',
      name: 'Camp Nou',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltde1d57b7a4f5b1b5/6426b7e6fd2c613bb8cf7e85/Camp_Nou.jpg',
      description: 'El estadio más grande de Europa y casa del FC Barcelona. En proceso de renovación para convertirse en el Spotify Camp Nou.',
      location: 'Barcelona, España',
      capacity: 99354,
      yearBuilt: 1957,
    ),
    Stadium(
      id: '3',
      name: 'Allianz Arena',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltb2f8c0a845aa0be2/639cb99c23f2b94f9614f300/Allianz_Arena_Bayern_Munich.jpg',
      description: 'Estadio moderno del Bayern Munich conocido por su iluminación exterior única que puede cambiar de color.',
      location: 'Munich, Alemania',
      capacity: 75024,
      yearBuilt: 2005,
    ),
    Stadium(
      id: '4',
      name: 'Old Trafford',
      imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt37d90952a752b366/63454df46246ed3fa565fb6d/Old_Trafford.jpg',
      description: 'Conocido como el "Teatro de los Sueños", es el hogar del Manchester United y uno de los estadios más icónicos del mundo.',
      location: 'Manchester, Inglaterra',
      capacity: 74140,
      yearBuilt: 1910,
    ),
    Stadium(
  id: '5',
  name: 'Wembley',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Wembley_Stadium_close_up.jpg',
  description: 'Estadio nacional de Inglaterra, famoso por albergar finales históricas y eventos internacionales.',
  location: 'Londres, Inglaterra',
  capacity: 90000,
  yearBuilt: 2007,
),
Stadium(
  id: '6',
  name: 'San Siro',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/a/a4/San_Siro_Stadium_-_panoramio.jpg',
  description: 'Casa compartida por el AC Milan y el Inter de Milán. Uno de los estadios más emblemáticos de Italia.',
  location: 'Milán, Italia',
  capacity: 80018,
  yearBuilt: 1926,
),
Stadium(
  id: '7',
  name: 'Signal Iduna Park',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/da/SIGNAL_IDUNA_PARK_Dortmund_-_Westfalenstadion_02.jpg',
  description: 'Hogar del Borussia Dortmund, famoso por su “Muro Amarillo”, la mayor tribuna de pie de Europa.',
  location: 'Dortmund, Alemania',
  capacity: 81365,
  yearBuilt: 1974,
),
Stadium(
  id: '8',
  name: 'Parc des Princes',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/42/Paris_Parc_des_Princes.jpg',
  description: 'Estadio del Paris Saint-Germain, conocido por su diseño ovalado y gran ambiente.',
  location: 'París, Francia',
  capacity: 47929,
  yearBuilt: 1972,
),
Stadium(
  id: '9',
  name: 'Stamford Bridge',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Stamford_Bridge.jpg',
  description: 'Histórico estadio del Chelsea FC en pleno corazón de Londres.',
  location: 'Londres, Inglaterra',
  capacity: 40343,
  yearBuilt: 1877,
),
Stadium(
  id: '10',
  name: 'Metropolitano',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/2/27/Wanda_Metropolitano_2017.jpg',
  description: 'Moderno estadio del Atlético de Madrid, sede de la final de la Champions League 2019.',
  location: 'Madrid, España',
  capacity: 68456,
  yearBuilt: 2017,
),
Stadium(
  id: '11',
  name: 'Maracaná',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/45/Maracan%C3%A3_Stadium_2022.jpg',
  description: 'Icono del fútbol brasileño y mundial. Sede de dos finales de Copa del Mundo.',
  location: 'Río de Janeiro, Brasil',
  capacity: 78838,
  yearBuilt: 1950,
),
Stadium(
  id: '12',
  name: 'Estadio Azteca',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Estadio_Azteca_2022.jpg',
  description: 'Único estadio que ha albergado dos finales de Copa del Mundo. Casa del Club América y de la selección mexicana.',
  location: 'Ciudad de México, México',
  capacity: 87000,
  yearBuilt: 1966,
),
Stadium(
  id: '13',
  name: 'Anfield',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Anfield_Stadium_2022.jpg',
  description: 'Estadio del Liverpool FC, célebre por su ambiente y el famoso "You’ll Never Walk Alone".',
  location: 'Liverpool, Inglaterra',
  capacity: 54074,
  yearBuilt: 1884,
),
Stadium(
  id: '14',
  name: 'Etihad Stadium',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/59/Etihad_Stadium_2020.jpg',
  description: 'Estadio del Manchester City, moderno y con gran tecnología e instalaciones de primer nivel.',
  location: 'Manchester, Inglaterra',
  capacity: 53400,
  yearBuilt: 2003,
),

  ];

  Stadium? selectedStadium;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.grey[100],
            child: ListView.builder(
              itemCount: stadiums.length,
              itemBuilder: (context, index) {
                return _buildStadiumCard(stadiums[index]);
              },
            ),
          ),
        ),
        if (selectedStadium != null)
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
                        selectedStadium!.imageUrl,
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
                            selectedStadium!.name,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildInfoRow(Icons.location_on, 'Ubicación:', selectedStadium!.location),
                          _buildInfoRow(Icons.people, 'Capacidad:', '${selectedStadium!.capacity} espectadores'),
                          _buildInfoRow(Icons.calendar_today, 'Año de construcción:', selectedStadium!.yearBuilt.toString()),
                          const SizedBox(height: 16),
                          const Text(
                            'Descripción:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            selectedStadium!.description,
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

  Widget _buildStadiumCard(Stadium stadium) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(stadium.imageUrl),
        ),
        title: Text(
          stadium.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(stadium.location),
        onTap: () => setState(() => selectedStadium = stadium),
      ),
    );
  }
}
