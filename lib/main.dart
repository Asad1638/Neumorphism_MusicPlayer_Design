import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NeumorphismMusicPlayer(),
    );
  }
}

class NeumorphismMusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: Text('Neumorphism Music Player'),
        backgroundColor: Color(0xFFF0F0F0),
        elevation: 0,centerTitle:  true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const SizedBox(height: 20),
          NeumorphicAlbumArt(),
         const SizedBox(height: 20),
        const  Text(
            'Song Title',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
       const   SizedBox(height: 10),
       const   Text(
            'Artist Name',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          NeumorphicControls(),
          SizedBox(height: 20),
          Text(
            'Playlist',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: NeumorphicPlaylist(),
          ),
        ],
      ),
    );
  }
}

class NeumorphicAlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD1D9E6),
            offset: Offset(8, 8),
            blurRadius: 12,
          ),
          BoxShadow(
            color: Color(0xFFFFFFFF),
            offset: Offset(-8, -8),
            blurRadius: 12,
          ),
        ],
      ),
      child: Center(
        child: Icon(
          Icons.music_note,
          size: 80,
          color: Color(0xFFE0E0E0),
        ),
      ),
    );
  }
}

class NeumorphicControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNeumorphicButton(Icons.skip_previous),
          SizedBox(width: 16),
          _buildNeumorphicButton(Icons.play_arrow),
          SizedBox(width: 16),
          _buildNeumorphicButton(Icons.skip_next),
        ],
      ),
    );
  }

  Widget _buildNeumorphicButton(IconData iconData) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF0F0F0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD1D9E6),
            offset: Offset(6, 6),
            blurRadius: 12,
            spreadRadius: 7,
          ),
          BoxShadow(
            color: Color(0xFFFFFFFF),
            offset: Offset(-6, -6),
            blurRadius: 12,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(
          iconData,
          color: Color(0xFFA0A8B6),
          size: 24,
        ),
        onPressed: () {},
      ),
    );
  }
}

class NeumorphicPlaylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return NeumorphicListItem(
            title: 'Song $index', artist: 'Artist $index');
      },
    );
  }
}

class NeumorphicListItem extends StatelessWidget {
  final String title;
  final String artist;

  const NeumorphicListItem({required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 181, 182, 185),
            offset: Offset(8, 8),
            blurRadius: 12,
          ),
          BoxShadow(
            color: Color(0xFFFFFFFF),
            offset: Offset(-8, -8),
            blurRadius: 12,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(artist),
        trailing: NeumorphicIconButton(icon: Icons.play_arrow),
      ),
    );
  }
}

class NeumorphicIconButton extends StatelessWidget {
  final IconData icon;

  const NeumorphicIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF0F0F0),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 164, 167, 173),
            offset: Offset(6, 6),
            blurRadius: 12,
          ),
          BoxShadow(
            color: Color(0xFFFFFFFF),
            offset: Offset(-6, -6),
            blurRadius: 12,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Color(0xFFA0A8B6),
          size: 24,
        ),
        onPressed: () {},
      ),
    );
  }
}
