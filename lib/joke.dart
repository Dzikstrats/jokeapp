import 'package:meta/meta.dart';

class Joke {
  Joke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });

  late final int id;
  late final String type;
  late final String setup;
  late final String punchline;
}

final List<Joke> listjokes = <Joke>[
  Joke(id: 1,
      type: 'dewasa',
      setup: 'I just got my doctor’s test results and I’m really upset about it. Turns out, I’m not gonna be a doctor.',
      punchline: 'sial'),
  Joke(id: 2,
      type: 'dewasa',
      setup: 'My grief counselor died. He was so good, I don’t even care.',
      punchline: 'sial'),
  Joke(id: 3,
      type: 'dewasa',
      setup: 'Today, I asked my phone “Siri, why am I still single?” and it activated the front camera.',
      punchline: 'sial'),
  Joke(id: 4,
      type: 'dewasa',
      setup: 'A man wakes from a coma. His wife changes out of her black clothes and, irritated, remarks, “I really cannot depend on you in anything, can I!”',
      punchline: 'sial'),
  Joke(type: 'dewasa',
      id: 5,
      setup: 'As I get older, I remember all the people I lost along the way. Maybe my budding career as a tour guide was not the right choice.',
      punchline: 'sial'),
];
