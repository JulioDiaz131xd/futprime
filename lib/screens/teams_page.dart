import 'package:flutter/material.dart';
import '../models/team.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({super.key});

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  final List<Team> teams = [
Team(
  id: '1',
  name: 'Real Madrid',
  imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt241875e0c3bbc38a/641a0d8f384af24c906006c3/Real_Madrid_Badge.png',
  description: 'El club más laureado de la historia del fútbol europeo.',
  country: 'España',
  founded: 1902,
  trophies: ['35 La Liga', '14 Champions League', '20 Copa del Rey'],
  squad: [
    {'name': 'Thibaut Courtois', 'number': '1', 'position': 'Portero', 'nationality': 'Bélgica'},
    {'name': 'Dani Carvajal', 'number': '2', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Éder Militão', 'number': '3', 'position': 'Defensa', 'nationality': 'Brasil'},
    {'name': 'Antonio Rüdiger', 'number': '22', 'position': 'Defensa', 'nationality': 'Alemania'},
    {'name': 'Jude Bellingham', 'number': '5', 'position': 'Centrocampista', 'nationality': 'Inglaterra'},
    {'name': 'Luka Modrić', 'number': '10', 'position': 'Centrocampista', 'nationality': 'Croacia'},
    {'name': 'Aurélien Tchouaméni', 'number': '14', 'position': 'Centrocampista', 'nationality': 'Francia'},
    {'name': 'Federico Valverde', 'number': '15', 'position': 'Centrocampista', 'nationality': 'Uruguay'},
    {'name': 'Vinicius Jr', 'number': '7', 'position': 'Extremo', 'nationality': 'Brasil'},
    {'name': 'Rodrygo', 'number': '21', 'position': 'Extremo', 'nationality': 'Brasil'},
    {'name': 'Karim Benzema', 'number': '9', 'position': 'Delantero', 'nationality': 'Francia'},
  ],
  stadium: 'Santiago Bernabéu',
  manager: 'Carlo Ancelotti',
  website: 'https://www.realmadrid.com',
  socialMedia: {
    'twitter': '@realmadrid',
    'instagram': '@realmadrid',
    'facebook': 'Real Madrid CF'
  },
  league: 'La Liga',
  rivals: ['FC Barcelona', 'Atlético Madrid'],
),

Team(
  id: '2',
  name: 'FC Barcelona',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/4/47/FC_Barcelona_%28crest%29.svg',
  description: 'Uno de los clubes más exitosos de Europa, conocido por su estilo de juego ofensivo y su cantera prolífica.',
  country: 'España',
  founded: 1899,
  trophies: ['27 La Liga', '5 Champions League', '31 Copa del Rey'],
  squad: [
    {'name': 'Marc-André ter Stegen', 'number': '1', 'position': 'Portero', 'nationality': 'Alemania'},
    {'name': 'Ronald Araújo', 'number': '4', 'position': 'Defensa', 'nationality': 'Uruguay'},
    {'name': 'Jules Koundé', 'number': '23', 'position': 'Defensa', 'nationality': 'Francia'},
    {'name': 'Andreas Christensen', 'number': '15', 'position': 'Defensa', 'nationality': 'Dinamarca'},
    {'name': 'Sergio Busquets', 'number': '5', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Pedri', 'number': '8', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Frenkie de Jong', 'number': '21', 'position': 'Centrocampista', 'nationality': 'Países Bajos'},
    {'name': 'Gavi', 'number': '6', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Robert Lewandowski', 'number': '9', 'position': 'Delantero', 'nationality': 'Polonia'},
    {'name': 'Ousmane Dembélé', 'number': '7', 'position': 'Extremo', 'nationality': 'Francia'},
    {'name': 'Raphinha', 'number': '22', 'position': 'Extremo', 'nationality': 'Brasil'},
  ],
  stadium: 'Estadi Olímpic Lluís Companys',
  manager: 'Hansi Flick',
  website: 'https://www.fcbarcelona.com',
  socialMedia: {
    'twitter': '@FCBarcelona',
    'instagram': '@fcbarcelona',
    'facebook': 'FC Barcelona'
  },
  league: 'La Liga',
  rivals: ['Real Madrid', 'Espanyol'],
),

Team(
  id: '3',
  name: 'Atlético de Madrid',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/f/f4/Atletico_Madrid_2017_logo.svg',
  description: 'Conocido por su defensa sólida y espíritu de lucha, es uno de los clubes más competitivos de España.',
  country: 'España',
  founded: 1903,
  trophies: ['11 La Liga', '3 Europa League', '10 Copa del Rey'],
  squad: [
    {'name': 'Jan Oblak', 'number': '13', 'position': 'Portero', 'nationality': 'Eslovenia'},
    {'name': 'Nahuel Molina', 'number': '17', 'position': 'Defensa', 'nationality': 'Argentina'},
    {'name': 'Stefan Savić', 'number': '15', 'position': 'Defensa', 'nationality': 'Montenegro'},
    {'name': 'José María Giménez', 'number': '2', 'position': 'Defensa', 'nationality': 'Uruguay'},
    {'name': 'Kieran Trippier', 'number': '23', 'position': 'Defensa', 'nationality': 'Inglaterra'},
    {'name': 'Koke', 'number': '6', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Rodrigo De Paul', 'number': '5', 'position': 'Centrocampista', 'nationality': 'Argentina'},
    {'name': 'Marcos Llorente', 'number': '14', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Ángel Correa', 'number': '10', 'position': 'Delantero', 'nationality': 'Argentina'},
    {'name': 'Antoine Griezmann', 'number': '7', 'position': 'Delantero', 'nationality': 'Francia'},
    {'name': 'Matheus Cunha', 'number': '9', 'position': 'Delantero', 'nationality': 'Brasil'},
  ],
  stadium: 'Cívitas Metropolitano',
  manager: 'Diego Simeone',
  website: 'https://www.atleticodemadrid.com',
  socialMedia: {
    'twitter': '@Atleti',
    'instagram': '@atleticodemadrid',
    'facebook': 'Atlético de Madrid'
  },
  league: 'La Liga',
  rivals: ['Real Madrid', 'Sevilla FC'],
),

Team(
  id: '4',
  name: 'Sevilla FC',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/8/86/Sevilla_CF_logo.svg',
  description: 'Club andaluz con una destacada trayectoria en competiciones europeas, especialmente en la Europa League.',
  country: 'España',
  founded: 1890,
  trophies: ['1 La Liga', '6 Europa League', '5 Copa del Rey'],
  squad: [
    {'name': 'Yassine Bounou', 'number': '1', 'position': 'Portero', 'nationality': 'Marruecos'},
    {'name': 'Jesús Navas', 'number': '16', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Jules Koundé', 'number': '12', 'position': 'Defensa', 'nationality': 'Francia'},
    {'name': 'Gonzalo Montiel', 'number': '2', 'position': 'Defensa', 'nationality': 'Argentina'},
    {'name': 'Diego Carlos', 'number': '3', 'position': 'Defensa', 'nationality': 'Brasil'},
    {'name': 'Fernando', 'number': '25', 'position': 'Centrocampista', 'nationality': 'Brasil'},
    {'name': 'Ivan Rakitić', 'number': '10', 'position': 'Centrocampista', 'nationality': 'Croacia'},
    {'name': 'Joan Jordán', 'number': '21', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Youssef En-Nesyri', 'number': '15', 'position': 'Delantero', 'nationality': 'Marruecos'},
    {'name': 'Rafa Mir', 'number': '9', 'position': 'Delantero', 'nationality': 'España'},
    {'name': 'Lucas Ocampos', 'number': '17', 'position': 'Extremo', 'nationality': 'Argentina'},
  ],
  stadium: 'Ramón Sánchez-Pizjuán',
  manager: 'José Luis Mendilibar',
  website: 'https://www.sevillafc.es',
  socialMedia: {
    'twitter': '@SevillaFC',
    'instagram': '@sevillafc',
    'facebook': 'Sevilla FC'
  },
  league: 'La Liga',
  rivals: ['Real Betis'],
),

Team(
  id: '5',
  name: 'Real Betis',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/9/9e/Real_Betis_logo.svg',
  description: 'Club sevillano conocido por su afición apasionada y su estilo de juego ofensivo.',
  country: 'España',
  founded: 1907,
  trophies: ['1 La Liga', '3 Copa del Rey'],
  squad: [
    {'name': 'Claudio Bravo', 'number': '1', 'position': 'Portero', 'nationality': 'Chile'},
    {'name': 'Marc Bartra', 'number': '5', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Álex Moreno', 'number': '17', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Germán Pezzella', 'number': '15', 'position': 'Defensa', 'nationality': 'Argentina'},
    {'name': 'Guido Rodríguez', 'number': '14', 'position': 'Centrocampista', 'nationality': 'Argentina'},
    {'name': 'Nabil Fekir', 'number': '8', 'position': 'Centrocampista', 'nationality': 'Francia'},
    {'name': 'Sergio Canales', 'number': '10', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Juanmi', 'number': '7', 'position': 'Delantero', 'nationality': 'España'},
    {'name': 'Borja Iglesias', 'number': '9', 'position': 'Delantero', 'nationality': 'España'},
    {'name': 'Willian José', 'number': '19', 'position': 'Delantero', 'nationality': 'Brasil'},
    {'name': 'Emerson', 'number': '12', 'position': 'Defensa', 'nationality': 'Brasil'},
  ],
  stadium: 'Benito Villamarín',
  manager: 'Manuel Pellegrini',
  website: 'https://www.realbetisbalompie.es',
  socialMedia: {
    'twitter': '@RealBetis',
    'instagram': '@realbetisbalompie',
    'facebook': 'Real Betis Balompié'
  },
  league: 'La Liga',
  rivals: ['Sevilla FC'],
),

Team(
  id: '6',
  name: 'Real Sociedad',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/f/f1/Real_Sociedad_logo.svg',
  description: 'Equipo vasco con una rica historia y una cantera que ha producido talentos destacados.',
  country: 'España',
  founded: 1909,
  trophies: ['2 La Liga', '3 Copa del Rey'],
  squad: [
    {'name': 'Álex Remiro', 'number': '1', 'position': 'Portero', 'nationality': 'España'},
    {'name': 'Joséba Zaldua', 'number': '2', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Robin Le Normand', 'number': '3', 'position': 'Defensa', 'nationality': 'Francia'},
    {'name': 'Aihen Muñoz', 'number': '5', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Mikel Merino', 'number': '8', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'David Silva', 'number': '21', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Mikel Oyarzabal', 'number': '10', 'position': 'Delantero', 'nationality': 'España'},
    {'name': 'Alexander Isak', 'number': '14', 'position': 'Delantero', 'nationality': 'Suecia'},
    {'name': 'Takefusa Kubo', 'number': '7', 'position': 'Extremo', 'nationality': 'Japón'},
    {'name': 'Jon Pacheco', 'number': '6', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Ander Barrenetxea', 'number': '19', 'position': 'Extremo', 'nationality': 'España'},
  ],
  stadium: 'Reale Arena',
  manager: 'Imanol Alguacil',
  website: 'https://www.realsociedad.eus',
  socialMedia: {
    'twitter': '@RealSociedad',
    'instagram': '@realsociedad',
    'facebook': 'Real Sociedad de Fútbol'
  },
  league: 'La Liga',
  rivals: ['Athletic Club'],
),

Team(
  id: '7',
  name: 'Athletic Club',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/9/98/Club_Athletic_Bilbao_logo.svg',
  description: 'Conocido por su política de solo contar con jugadores vascos, es uno de los clubes más tradicionales de España.',
  country: 'España',
  founded: 1898,
  trophies: ['8 La Liga', '23 Copa del Rey'],
  squad: [
    {'name': 'Unai Simón', 'number': '1', 'position': 'Portero', 'nationality': 'España'},
    {'name': 'Óscar De Marcos', 'number': '2', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Iñigo Martínez', 'number': '4', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Yeray Álvarez', 'number': '5', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Iker Muniain', 'number': '10', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Mikel Vesga', 'number': '6', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Nico Williams', 'number': '22', 'position': 'Extremo', 'nationality': 'España'},
    {'name': 'Raúl García', 'number': '7', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Alex Berenguer', 'number': '17', 'position': 'Extremo', 'nationality': 'España'},
    {'name': 'Asier Villalibre', 'number': '9', 'position': 'Delantero', 'nationality': 'España'},
    {'name': 'Iñaki Williams', 'number': '11', 'position': 'Delantero', 'nationality': 'España'},
  ],
  stadium: 'San Mamés',
  manager: 'Ernesto Valverde',
  website: 'https://www.athletic-club.eus',
  socialMedia: {
    'twitter': '@AthleticClub',
    'instagram': '@athleticclub',
    'facebook': 'Athletic Club'
  },
  league: 'La Liga',
  rivals: ['Real Sociedad'],
),

Team(
  id: '8',
  name: 'Valencia CF',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/c/ce/Valencia_CF_logo.svg',
  description: 'Club con una rica historia en competiciones nacionales e internacionales.',
  country: 'España',
  founded: 1919,
  trophies: ['6 La Liga', '8 Copa del Rey', '1 UEFA Cup'],
  squad: [
    {'name': 'Jaume Doménech', 'number': '13', 'position': 'Portero', 'nationality': 'España'},
    {'name': 'José Gayà', 'number': '14', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Gabriel Paulista', 'number': '4', 'position': 'Defensa', 'nationality': 'Brasil'},
    {'name': 'Hugo Guillamón', 'number': '3', 'position': 'Defensa', 'nationality': 'España'},
    {'name': 'Daniel Wass', 'number': '2', 'position': 'Defensa', 'nationality': 'Dinamarca'},
    {'name': 'Carlos Soler', 'number': '8', 'position': 'Centrocampista', 'nationality': 'España'},
    {'name': 'Uros Racic', 'number': '18', 'position': 'Centrocampista', 'nationality': 'Serbia'},
    {'name': 'Samuel Lino', 'number': '7', 'position': 'Extremo', 'nationality': 'Brasil'},
    {'name': 'Gonçalo Guedes', 'number': '10', 'position': 'Delantero', 'nationality': 'Portugal'},
    {'name': 'Álvaro Núñez', 'number': '17', 'position': 'Delantero', 'nationality': 'España'},
    {'name': 'Hugo Duro', 'number': '9', 'position': 'Delantero', 'nationality': 'España'},
  ],
  stadium: 'Mestalla',
  manager: 'Rubén Baraja',
  website: 'https://www.valenciacf.com',
  socialMedia: {
    'twitter': '@valenciacf',
    'instagram': '@valenciacf',
    'facebook': 'Valencia CF'
  },
  league: 'La Liga',
  rivals: ['Villarreal CF', 'Levante UD'],
),

Team(
  id: '9',
  name: 'Villarreal CF',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/7/70/Villarreal_CF_logo.svg',
  description: 'Conocido como el "Submarino Amarillo", ha tenido un ascenso notable en el fútbol español y europeo.',
  country: 'España',
  founded: 1923,
  trophies: ['1 Europa League'],
  squad: [
    {
      'name': 'Gerard Moreno',
      'number': '7',
      'position': 'Delantero',
      'nationality': 'España'
    },
    {
      'name': 'Pau Torres',
      'number': '4',
      'position': 'Defensa',
      'nationality': 'España'
    },
    {
      'name': 'Álex Baena',
      'number': '16',
      'position': 'Centrocampista',
      'nationality': 'España'
    },
    {
      'name': 'José Luis Morales',
      'number': '22',
      'position': 'Delantero',
      'nationality': 'España'
    },
    {
      'name': 'Raúl Albiol',
      'number': '3',
      'position': 'Defensa',
      'nationality': 'España'
    },
    {
      'name': 'Etienne Capoue',
      'number': '6',
      'position': 'Centrocampista',
      'nationality': 'Francia'
    },
    {
      'name': 'Yeremy Pino',
      'number': '21',
      'position': 'Extremo',
      'nationality': 'España'
    },
    {
      'name': 'Dani Parejo',
      'number': '10',
      'position': 'Centrocampista',
      'nationality': 'España'
    },
    {
      'name': 'Alfonso Pedraza',
      'number': '24',
      'position': 'Defensa',
      'nationality': 'España'
    },
    {
      'name': 'Filip Jörgensen',
      'number': '13',
      'position': 'Portero',
      'nationality': 'Suecia'
    },
    {
      'name': 'Juan Foyth',
      'number': '8',
      'position': 'Defensa',
      'nationality': 'Argentina'
    },
  ],
  stadium: 'Estadio de la Cerámica',
  manager: 'Quique Setién',
  website: 'https://www.villarrealcf.es',
  socialMedia: {
    'twitter': '@VillarrealCF',
    'instagram': '@villarrealcf',
    'facebook': 'Villarreal CF'
  },
  league: 'La Liga',
  rivals: ['Valencia CF'],
),

  ];

  Team? selectedTeam;
  bool showSquad = false;
  final List<String> favoriteTeams = [];
  late Function(String) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.grey[100],
            child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (context, index) {
                return _buildTeamCard(teams[index]);
              },
            ),
          ),
        ),
        if (selectedTeam != null)
          Expanded(
            flex: 2,
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: const [
                      Tab(text: 'Información'),
                      Tab(text: 'Plantilla'),
                    ],
                    onTap: (index) => setState(() => showSquad = index == 1),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildTeamInfo(),
                        _buildSquadList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildTeamCard(Team team) {
    final isFavorite = favoriteTeams.contains(team.id);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(team.imageUrl),
        ),
        title: Text(
          team.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(team.league),
        trailing: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : null,
          ),
          onPressed: () {
            setState(() {
              if (isFavorite) {
                favoriteTeams.remove(team.id);
              } else {
                favoriteTeams.add(team.id);
              }
            });
          },
        ),
        onTap: () => setState(() {
          selectedTeam = team;
          showSquad = false;
        }),
      ),
    );
  }

  Widget _buildTeamInfo() {
    return SingleChildScrollView(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              selectedTeam!.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedTeam!.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow(Icons.location_on, 'País:', selectedTeam!.country),
                  _buildInfoRow(Icons.calendar_today, 'Fundado:', selectedTeam!.founded.toString()),
                  _buildInfoRow(Icons.stadium, 'Estadio:', selectedTeam!.stadium),
                  _buildInfoRow(Icons.person, 'Entrenador:', selectedTeam!.manager),
                  _buildInfoRow(Icons.web, 'Sitio web:', selectedTeam!.website),
                  const SizedBox(height: 16),
                  const Text('Trofeos:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ...selectedTeam!.trophies.map((trophy) => Text('• $trophy')),
                  const SizedBox(height: 16),
                  const Text('Rivales:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ...selectedTeam!.rivals.map((rival) => Text('• $rival')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquadList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: selectedTeam!.squad.length,
      itemBuilder: (context, index) {
        final player = selectedTeam!.squad[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(child: Text(player['number'])),
            title: Text(player['name']),
            subtitle: Text('${player['position']} - ${player['nationality']}'),
          ),
        );
      },
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 4),
          Text(value),
        ],
      ),
    );
  }
}
