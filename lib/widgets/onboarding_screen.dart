class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}



List<OnboardingContent> contents = [
  OnboardingContent(
      title: "House & Space Hunting Made Easy", image: 'assets/images/human.png', description: '' ),
  OnboardingContent(title: "Connect With 100+ Real Estate Agents & Owners Online.", image: "assets/images/group.png",description: ''),
  OnboardingContent(title: "Seamlessly Check for spaces that suite your plan.", image: "assets/images/human1.png", description: ''),
  // OnboardingContent(title: "Recycle", image: "assets/images/rectangle4.jpg", description: 'Let’s make our world a cleaner, safer place, it’s the only one we’ve got. It’s not too late to start. '),
];