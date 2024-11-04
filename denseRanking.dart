import 'dart:io';

void denseRanking(players, scores, games, gits) {
  List<int> listRankGits = [];
  List<int> mergedList = [...scores, ...gits];
  mergedList.sort((a, b) => b.compareTo(a));
  Map<int, int> mapList = {};
  int rank = 1;
  for (int i = 0; i < mergedList.length; i++) {
    if (i > 0 && mergedList[i] != mergedList[i - 1]) {
      rank++;
    }
    mapList[mergedList[i]] = rank;
  }
  for (int i = 0; i < gits.length; i++) {
    listRankGits.add(mapList[gits[i]]!);
  }
  print('Ranking GITS: $listRankGits');
}

void main() {
  stdout.write('Input jumlah pemain: ');
  int? players = int.parse(stdin.readLineSync()!);
  List<int> scores = [];
  for (int i = 0; i < players; i++) {
    stdout.write('Input skor pemain ke-${i + 1}: ');
    int? score = int.parse(stdin.readLineSync()!);
    scores.add(score);
  }
  stdout.write('Input jumlah permainan oleh GITS: ');
  int? games = int.parse(stdin.readLineSync()!);
  List<int> gits = [];
  for (int i = 0; i < games; i++) {
    stdout.write('Input skor permainan ke-${i + 1}: ');
    int? score = int.parse(stdin.readLineSync()!);
    gits.add(score);
  }
  denseRanking(players, scores, games, gits);
}
