class Project {
  final String? title, description, link, tools;
  final bool onPlayStore, onAppleStore;

  Project({
    this.title,
    this.description,
    this.link,
    this.tools,
    this.onAppleStore = false,
    this.onPlayStore = true,
  });
}
// Wallety, OnTime, Chat, SocialMedia, Quotes, Movies, GoldPrice, Personality,

// ignore: non_constant_identifier_names
List<Project> projects = [
  Project(
    title: "Wallety",
    description: "Mobile app to watch your daily expenses",
    link:
        "https://play.google.com/store/apps/details?id=com.abdullah.wallety&hl=ar&gl=US",
    tools:
        "- Totally local storage using SQLite \n- Expenses charts \n- Available on PlayStore",
  ),
  Project(
    title: "Movies X",
    link: "https://github.com/abodamin/iMovieApp",
    description:
        "Movies gallery app allowing users to pick movies based on their mood.",
    tools:
        "- Responsive design\n- 3rd Party API\n- Search Delegate and a lot more...",
  ),
  Project(
    title: "Gold Alert",
    tools: "- Android Java \n- 3rd party API \n- JobScheduler.",
    description:
        "Mobile app that calculates gold prices in local market per gram, and notify users if price is above/below certain number.",
  ),
  Project(
    title: "Quotes",
    link: "https://github.com/abodamin/QuotesApp",
    tools: "- 3rd party API \n- Works offline",
    description:
        "Mobile application that shows random inspiring quotes from famous people.",
  ),
  Project(
    title: "Personality",
    link: "",
    tools: "- 3rd party API \n- Payment gateway",
    description:
        "Mobile App with beautiful design for discovering user's personality type, using MBTI test.",
  ),
  // Project(
  //   title: "Less is More",
  //   link: "",
  //   tools: "",
  //   description:
  //   "There is a lot more, feel free to reach me out.",
  // ),
];
