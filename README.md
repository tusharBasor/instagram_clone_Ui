# instagram_clone_Ui
A Flutter-based Instagram Profile & Stories UI clone, built for learning and UI practice.
This project focuses on recreating Instagram’s profile screen, story view, and interactions using Flutter widgets like SliverAppBar, CustomScrollView, and animations.

⚠️ This is a UI-only project. No backend or real authentication is implemented.


✨ Features

📱 Instagram-style Profile Screen

🧭 SliverAppBar with smooth scrolling behavior

📸 Stories View

Auto progress bar
Auto close after a few seconds
Swipe down to dismiss

👤 Follow / Following button logic

📂 Highlights section (horizontal list)

🧱 Posts grid layout

🔽 Bottom sheet for Unfollow option

📌 Bottom Navigation Bar


🎨 Design & Assets Credit

This project uses UI inspiration and assets from a Figma Community design:

🔗 Figma Design Link
https://www.figma.com/design/aSc9nOJZopi9mzSGOml84E/Instagram-Profile-and-Stories-Mockup--2024---Community-

📌 Design and assets are used only for learning and practice purposes.
All credits go to the original designer(s) from the Figma Community.


🗂️ Project Structure
lib/
│
├── main.dart               # App entry point
├── app.dart                # App theme, colors, MaterialApp
│
├── Screens/
│   ├── my_account.dart     # Profile screen (Sliver based UI)
│   └── my_story.dart       # Story view screen
│
├── data/
│   └── assets.dart         # Dummy data (posts, highlights)
│
assets/
│
├── images/
│   ├── bottom_nav_bar/     # Bottom navigation icons
│   ├── tabs/               # Profile tab icons
│   ├── posts/              # Post grid images
│   ├── stories/            # Story images
│   ├── profile/            # Profile images
│   │   ├── story_seen.png
│   │   ├── story_not_seen.png
│   │   └── profile_image.png
│   └── misc/               # Other UI images
│
└── pubspec.yaml


🚀 Getting Started
Prerequisites

Flutter SDK installed

Android Studio or VS Code

Emulator or physical device

Run the project
flutter pub get
flutter run


🛠️ Tech Stack

Flutter
Dart
Material Design widgets
Custom animations & gestures

📌 Project Status

✅ UI completed
🔧 Backend: Not implemented
📚 Purpose: Learning Flutter UI & layouts

📄 Disclaimer

This project is not affiliated with Instagram or Meta.
It is created only for educational purposes.
