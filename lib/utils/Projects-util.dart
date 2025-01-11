class ProjectsUtils {
  final String image;
  final String title;
  final String subtitle;

  ProjectsUtils({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
//work
List<ProjectsUtils> workProjectUtils = [
  ProjectsUtils(
      image: 'assets/Projects/Counterapp.png',
      title: 'CounterApp',
      subtitle: 'App that count the number of inputs'),
  ProjectsUtils(
      image: 'assets/Projects/Goldapp.png',
      title: 'Goldapp',
      subtitle: 'An app that build for gold shop to tell the total price and price per item'),
  ProjectsUtils(
      image: 'assets/Projects/Todoapp.png',
      title: 'Todo App',
      subtitle: 'An app that takes user input about what to do today and descrition'),
  ProjectsUtils(
      image: 'assets/Projects/whatsapp.png',
      title: 'Whatsapp Clone',
      subtitle:'Has the layout of whatsapp updates calls and chats secions'),
  ProjectsUtils(
      image: 'assets/Projects/Facebook.png',
      title:'Facbook clone app',
      subtitle: 'has the ui of facebook')
];