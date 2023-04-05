//this code just as an example and never used

class Athlete {
  double _height = 170;
  double _weight = 60;

  // set height(double height) {
  //   if (height < 15) {
  //     _height = height * 34;
  //   }
  //   _height = height;
  //   print('hello world');
  // }

//imagine this method works in background with internet
  void _refreshInfo() {
    // _height = jsonFromInternet.height; // this is dummy property jsonFromInternet
  }

  double get height {
    // some validations
    // if we have Unit of measure stored
    return _height;
  }

  Athlete({required double height}) {
    _height = height;
  }
}

class HighSchool {
  void updateAthletePhysics() {
    Athlete athleteVictor = Athlete(height: 186);
    print(athleteVictor.height);
    // athleteVictor.height = 200;
  }
}
