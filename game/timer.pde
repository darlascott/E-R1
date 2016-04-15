class Timer {
  int savedTime;
  int totalTime;

  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  void setTime(int t) {
    totalTime = t;
  }
  void start() {
    savedTime = millis();
  }
  boolean isFinished() {
    int passedTime = millis()- savedTime;
    if (passedTime>totalTime) {
      return true;
    } else {
      return false;
    }
  }
}