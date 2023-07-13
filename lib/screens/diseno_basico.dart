import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80')),
          //Titulo
          const Tittle(),
          //Button Section
          const ButtonSection(),
          //Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
                'Eiusmod exercitation aliquip tempor qui officia exercitation commodo aute commodo. Consectetur consequat anim ea adipisicing exercitation mollit occaecat sunt occaecat in. Voluptate duis aute nulla pariatur ut consequat laborum dolore mollit pariatur.'),
          ),
        ],
      ),
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Adipisicing magna sun',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Canada, Ottawa'),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
              icon: Icons.phone, color: Colors.red, text: Text('Call')),
          CustomButton(icon: Icons.map, color: Colors.red, text: Text('Map')),
          CustomButton(
              icon: Icons.share, color: Colors.red, text: Text('Share')),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Text text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon, color: color), text],
    );
  }
}
