class unboardingContent{
  String image;
  String title;
  String description;
  unboardingContent({required this.description, required this.image, required this.title});
}

List<unboardingContent> contents = [
  unboardingContent(description: 'Select Your Dream Furniture from One Place\n            More than 35000+ Customers', image: "assets/images/screen1.png",
      title: 'Select from our\n    Best Menu'),
  unboardingContent(description: 'You Can Cash on Delivery or Card Payment \n                           Available', image: "assets/images/screen2.png", title: 'Easy and Online Payment'),
  unboardingContent(description: "Deliver you furniture at your Doorstep", image: "assets/images/screen3.png", title: 'Quick delivery at your Doorstep')
];