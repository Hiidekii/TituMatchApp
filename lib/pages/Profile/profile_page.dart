import 'package:flutter/material.dart';
import 'package:titumatch/components/mainappbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: CustomAppBar(
        logoImagePath:
            'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png', // Ruta de tu imagen del logo
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Alexandra Díaz',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Carrera de Arquitectura',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '9no ciclo',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'correo@ejemplo.com',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'lib/images/depositphotos_137014128-stock-illustration-user-profile-icon.jpg'), // Coloca la imagen de perfil aquí
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Expanded(
              child: ListView(
                children: [
                  _buildListItem('Descripción', Icons.edit),
                  const SizedBox(height: 20),
                  _buildListItem('Experiencia', Icons.edit),
                  const SizedBox(height: 20),
                  _buildListItem('Intereses', Icons.edit),
                  const SizedBox(height: 20),
                  _buildListItem('Conocimientos', Icons.edit),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String title, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        icon,
        color: Colors.white,
      ),
      onTap: () {
        // Lógica cuando se toca el elemento de la lista
      },
    );
  }
}
