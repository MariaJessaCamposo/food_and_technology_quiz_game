import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quiz_app/games/trivia/easy/score_screen_easyTrivia/score_screen_easy_trivia.dart';
import 'package:quiz_app/models/questions.dart';

// We use get package for our state management

class QuestionControllerTrivia extends GetxController
    with SingleGetTickerProviderMixin {
  // Lets animated our progress bar

  late AnimationController _animationController;
  late Animation _animation;

  // so that we can access our animation outside
  Animation get animation => _animation;

  late PageController _pageController;

  PageController get pageController => _pageController;

  //new question widget
  final List<Question> _easyTriviaQuestions = easyTrivia_questions
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();

  List<Question> get easyTriviaQuestions => _easyTriviaQuestions;

  bool _isAnswered = false;

  bool get isAnswered => _isAnswered;

  late int _correctAns;

  int get correctAns => _correctAns;

  late int _selectedAns;

  int get selectedAns => _selectedAns;

  // for more about obs please check documentation
  final RxInt _questionNumber = 1.obs;

  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;

  int get numOfCorrectAns => _numOfCorrectAns;

  // called immediately after the widget is allocated memory
  @override
  // void onInit() {
  //   // Our animation duration is 60 s
  //   // so our plan is to fill the progress bar within 60s
  //   _animationController =
  //       AnimationController(duration: const Duration(seconds: 10), vsync: this);
  //   _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
  //     ..addListener(() {
  //       // update like setState
  //       update();
  //     });
  //
  //   // start our animation
  //   // Once 60s is completed go to the next qn
  //   _animationController.forward().whenComplete(nextQuestion);
  //   _pageController = PageController();
  //   super.onInit();
  // }

  void onInit() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    // Once 60s is completed go to the next qn
    _animationController.forward().whenComplete(nextTrivia);
    _pageController = PageController();
    super.onInit();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  // void checkAns(Question question, int selectedIndex) {
  //   // because once user press any option then it will run
  //   _isAnswered = true;
  //   _correctAns = question.answer;
  //   _selectedAns = selectedIndex;
  //
  //   if (_correctAns == _selectedAns) _numOfCorrectAns++;
  //
  //   // It will stop the counter
  //   _animationController.stop();
  //   update();
  //
  //   // Once user select an ans after 3s it will go to the next qn
  //   Future.delayed(const Duration(seconds: 3), () {
  //     nextQuestion();
  //   });
  // }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(const Duration(seconds: 3), () {
      nextTrivia();
    });
  }

  // void nextQuestion() {
  //   if (_questionNumber.value != _questions.length) {
  //     _isAnswered = false;
  //     _pageController.nextPage(
  //         duration: const Duration(milliseconds: 250), curve: Curves.ease);
  //
  //     // Reset the counter
  //     _animationController.reset();
  //
  //     // Then start it again
  //     // Once timer is finish go to the next qn
  //     _animationController.forward().whenComplete(nextQuestion);
  //   } else {
  //     // Get package provide us simple way to naviigate another page
  //     Get.to(const ScoreScreen());
  //   }
  // }

  void nextTrivia() {
    if (_questionNumber.value != _easyTriviaQuestions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextTrivia);
    } else {
      // Get package provide us simple way to naviigate another page
      Get.to(const ScoreScreenEasyTrivia());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}