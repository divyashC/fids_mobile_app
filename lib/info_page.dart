import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  static const loremIpsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel sem quis massa sollicitudin ultrices. Aenean turpis felis, gravida aliquam quam ac, venenatis pellentesque dolor. Aliquam quis massa euismod, pulvinar elit sit amet, sollicitudin est. Sed nunc purus, egestas quis rhoncus vitae, egestas consectetur libero. Etiam at ornare purus.';
  final List<Item> items = [
    Item(header: 'Can I book tickets with the app?', body: loremIpsum),
    Item(header: 'Can I set multiple reminders?', body: loremIpsum),
    Item(header: 'How frequently are the details updated?', body: loremIpsum),
    Item(header: 'Are the flight route accurate?', body: loremIpsum),
    Item(header: 'How far can I rely on this app?', body: loremIpsum),
    Item(header: 'Is there any helpline contact details? ', body: loremIpsum),
    Item(header: 'How will this app benefit us?', body: loremIpsum),
    Item(header: 'Will I get infos on flight cancellation?', body: loremIpsum),
    Item(header: 'Is this app paid or free?', body: loremIpsum),
    Item(header: 'Can I use this app on other OS or web?', body: loremIpsum),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('FAQs'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList.radio(
            children: items
                .map(
                  (item) => ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: item.header,
                    headerBuilder: (context, isExpanded) => ListTitle(
                      title: Text(
                        item.header,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    body: ListTitle(
                      title: Text(
                        item.body,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );
}

class ListTitle extends StatelessWidget {
  const ListTitle({super.key, required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) => ListTile(
        title: title,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      );
}

class Item {
  final String header;
  final String body;

  Item({
    required this.header,
    required this.body,
  });
}
