import 'dart:html';
import 'dart:async';

final output = querySelector('#output');
final pre = PreElement();

Future printDailyNewsDigest() async {
  try {
    final news = await gatherNewsReports();
    pre.appendText(news);
  } catch (e) {
    pre.appendText('Something went wrong: $e');
  }
}

void main(List<String> args) {
  output?.append(pre);

  printDailyNewsDigest();
  printWinningLotteryNumbers();
  printWeatherForecast();
  printBaseballScore();
}

void printWinningLotteryNumbers() {
  pre.appendText('Winning lotto numbers: [23, 63, 87, 26, 2]\n');
}

void printWeatherForecast() {
  pre.appendText('Tomorrow\'s forecast: 70F, sunny.\n');
}

void printBaseballScore() {
  pre.appendText('Baseball score: Red Sox 10, Yankees 0\n');
}

// Imagine that this function is more complex and slow. :)
Future gatherNewsReports() async {
  final path = 'https://dart.dev/f/dailyNewsDigest.txt';
  final content = await HttpRequest.getString(path);
  return content;
}