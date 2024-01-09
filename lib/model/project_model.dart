class Projects {
  final String projectTitle;
  final String imgUrl;
  final String description;
  final String projectImg;

  Projects(
      {required this.projectTitle,
      required this.imgUrl,
      required this.projectImg,
      required this.description});
}

List<Projects> projectList = [
  Projects(
      projectTitle: 'Academic Reminder',
      imgUrl: 'assets/project/ecommerce.png',
      description:
          'A comprehensive application designed to help students manage their academic schedules efficiently. This app provides timely reminders for assignments, exams, and other academic commitments, ensuring students stay organized and focused on their studies.',
      projectImg: 'assets/project/gadgetapp.png'),
  Projects(
      projectTitle: 'Home Service Provider App',
      imgUrl: 'assets/project/service.png',
      description:
          'This app simplifies the process of finding and hiring home service professionals such as plumbers, electricians, cleaners, and more. Offering a user-friendly interface, it connects users with reliable service providers, making home maintenance hassle-free.',
      projectImg: 'assets/project/serviceprapp.png'),
  Projects(
      projectTitle: 'Doctor-Patient Appointment App',
      imgUrl: 'assets/project/dpapp.png',
      description:
          'A user-centric application facilitating seamless appointments between doctors and patients. It allows patients to schedule appointments, view doctor availability, receive reminders, and access medical information, streamlining the healthcare experience.',
      projectImg: 'assets/project/docpasc.png'),
  Projects(
      projectTitle: 'ToDo App',
      imgUrl: 'assets/project/gadget.png',
      description:
          'A productivity-focused application designed to help users organize their tasks efficiently. The app allows users to create, manage, and prioritize tasks, set deadlines, add descriptions, and categorize tasks into different lists or categories. With features like notifications, it ensures users stay on top of their commitments, boosting productivity and time management.',
      projectImg: 'assets/project/shoeapp.png'),
  Projects(
      projectTitle: 'Electronics App',
      imgUrl: 'assets/project/gadget.png',
      description:
          'A productivity-focused application designed to help users organize their tasks efficiently. The app allows users to create, manage, and prioritize tasks, set deadlines, add descriptions, and categorize tasks into different lists or categories. With features like notifications, it ensures users stay on top of their commitments, boosting productivity and time management.',
      projectImg: 'assets/project/shoeapp.png')
];
