import 'models/driver.dart';
import 'models/statistics.dart';
import 'models/team.dart';

class MockData {

  Team get team => Team(
      name: "Mercedes",
      description: "",
      position: 1,
      drivers: drivers
  );

  Team get team2 => Team(
      name: "Mercedes",
      description: "",
      position: 1,
      drivers: drivers
  );

  Driver get driver => Driver(
    position: 1,
    name: "Lewis",
    lastName: "Hamilton",
    countryImageUrl: "assets/images/countries/uk.png",
    statistics: Statistics(),
    team: team,
  );

  List<Driver> get drivers => [
    driver,
    driver
  ];

  List<Team> get teams => [
    team,
    team2,
  ];
}