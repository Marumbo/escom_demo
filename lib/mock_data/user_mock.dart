class User {
  String username;
  String password;
  String name;
  int meterNumber;

  User(this.username, this.password, this.name, this.meterNumber);
}

List<User> users = [marumbo, testUser];

User marumbo =
    User("marumbok@gmail.com", "password", "Marumbo Sichinga", 10012345);

User testUser = User("test@escom.com", "password", "Test User", 12345);
