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
    Item(
        header: 'Does this app provide real time flight tracking?',
        body: loremIpsum),
    Item(
        header: 'Can I get ticket availability information?', body: loremIpsum),
    Item(header: 'Can I get flight status?', body: loremIpsum),
    Item(header: 'Who is this app for?', body: loremIpsum),
    Item(
        header: 'Is the API available to consumers on subscription?',
        body: loremIpsum),
    Item(header: 'Does this app work offline?', body: loremIpsum),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('FAQs'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
            bottom: 50,
          ),
          child: ExpansionPanelList.radio(
            animationDuration: const Duration(milliseconds: 700),
            dividerColor: Colors.blue.shade100,
            elevation: 4,
            children: items
                .map(
                  (item) => ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: item.header,
                    headerBuilder: (context, isExpanded) => Container(
                      padding: const EdgeInsets.only(
                          left: 0, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTitle(
                        title: Text(
                          item.header,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    body: Container(
                      margin: const EdgeInsets.only(
                          bottom: 20, left: 20, right: 20),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 30, top: 30),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(245, 253, 242, 242),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTitle(
                        title: Text(
                          item.body,
                          style: const TextStyle(fontSize: 18),
                          textAlign: TextAlign.justify,
                        ),
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
