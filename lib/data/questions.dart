import 'package:quiz_app/models/quiz.dart';

const questions = [
  QuizQuestion('What are the main building block of flutter',
      ['Widget', 'Component', 'Blocks', 'Functions']),
  QuizQuestion('What IDE is good for building flutter application',
      ['All are good', 'Vscode', 'Android studio', 'Xcode']),
  QuizQuestion('How should you update data inside of statefulWidget', [
    'By calling setState()',
    'by calling updateData()',
    'By calling updateUI',
    'By calling updateState()'
  ]),
  QuizQuestion('what happen when you change data in StatelessWidget', [
    'The ui is not updated',
    'The ui is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefullWidget are updated'
  ]),
  QuizQuestion(
      'Which widget should you try to use more offen:Stateless or stateful', [
    'Both are equally good',
    'StatelessWidget',
    'StatefulWidget',
    'None of the above'
  ]),
  QuizQuestion('What is the purpose of statefull widget', [
    'Update ui as data change',
    'Update data as ui change',
    'Ignore data change',
    'Render ui that does not depend on data'
  ]),
  QuizQuestion('How are flutter ui build', [
    'By combining widgets in code',
    'By combining widget in vs code',
    'By using xCode for ios and Android Studio for android',
    'By defining widget in a config file'
  ]),
];
