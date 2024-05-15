<!-- Project Title -->
<div align="center" style="display: flex; align-items: center; justify-content: center;">
  <img src="readmeimages/logo.jpeg" alt="QR Logo" width="300" height="300">
</div>


<h1 align="center">QR Scanner and Generator App</h1>

## 🔰 Project Overview
This application provides a simple and efficient solution for scanning QR codes and generating QR codes from any input. With an intuitive interface, users can effortlessly scan QR codes using their device's camera and generate QR codes for various purposes. Additionally, users can easily view the content of scanned QR codes directly within the app.

---
### 🎥 Simple demo

---
## ➤ Key Features

- **QR Code Scanning:** Utilize the device's camera to quickly scan QR codes and access their embedded information.

- **QR Code Generation:** Generate QR codes for any text input, URLs, contact information, or other data types.

- **View Scanned QR Codes:** After scanning, easily view the content of scanned QR codes within the app.

- **Efficient and User-Friendly Interface:** The app offers a straightforward and user-friendly interface, making QR code scanning and generation accessible to all users.

- **Multi-platform Support:** Available on multiple platforms, ensuring compatibility with a wide range of devices.

- **Offline Functionality:** Scan and generate QR codes even without an active internet connection, ensuring functionality in any environment.


---
## 🛠 Technologies and Frameworks Used
- <img src="https://user-images.githubusercontent.com/25181517/186150365-da1eccce-6201-487c-8649-45e9e99435fd.png" alt="Flutter" width="20" height="20"> **Flutter Framework** (Dart language)
- <img src="https://upload.wikimedia.org/wikipedia/commons/3/33/Figma-logo.svg" alt="Figma" width="20" height="20">**User Interface Design:** Crafting an intuitive user interface designed for easy navigation and an enjoyable user experience.

## ⚡Usage/Examples

```javascript
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

//MyApp
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// Send prompt to API and get the response
final String apiKey='ddc4f1e089f508e004ae72d6eb9';
  final String readAccessToken='eyJhbGciOiJIUzI1NiJ9.eyJhdWQiCJ2ZXJzaW9uIjoxfQ.Gw0EtDta7KDYAI7BKeRxMCd1a94B2u8gAfdLxYlbjcc';

  loadMovies() async{
    TMDB tMDBWithCustomLogs=TMDB(
                                ApiKeys(apiKey,readAccessToken),
                                logConfig: ConfigLogger(showLogs: true,showErrorLogs: true));
    Map trendingResults=await tMDBWithCustomLogs.v3.trending.getTrending();
    Map topRatedMoviesResults=await tMDBWithCustomLogs.v3.movies.getTopRated();
    Map tvShowsResults=await tMDBWithCustomLogs.v3.tv.getPopular();
}
```

## 🚀 Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/sahilpotdukhe/QR-Scanner-and-Generator.git
2. **Navigate to the project directory:**
    ```bash
    cd echat
3. **Install dependencies:**
    ```bash
    flutter pub get
4. **Run the app:**
    ```bash
    flutter run

## 📋 Requirements

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- TMDB API: [Usage](https://developer.themoviedb.org/reference/intro/getting-started)

## <img src="https://upload.wikimedia.org/wikipedia/commons/3/33/Figma-logo.svg" alt="Figma" width="20" height="20"> App Design

<div align="center">
  <table style="border-collapse: collapse;">
    <tr>
      <td style="padding-right: 0px; border: none;">
        <img src="readmeimages/1.png" alt="Screen 1" width="250">
        <p align="center">Home Screen</p>
      </td>
      <td style="padding-right: 0px; border: none;">
        <img src="readmeimages/2.png" alt="Screen 2" width="250">
        <p align="center">QRScanner Screen</p>
      </td>
      <td style="border: none;">
        <img src="readmeimages/3.png" alt="Screen 3" width="250">
        <p align="center">QRDecode Screen </p>
      </td>
    </tr>
  </table>
</div>
<div align="center">
  <table style="border-collapse: collapse;">
    <tr>
      <td style="padding-right: 0px; border: none;">
        <img src="readmeimages/4.png" alt="Screen 1" width="250">
        <p align="center">QRGenerate Screen</p>
      </td>
      <td style="padding-right: 0px; border: none;">
        <img src="readmeimages/5.png" alt="Screen 2" width="250">
        <p align="center">Splash Screen</p>
      </td>
    </tr>
  </table>
</div>

---
## 🤝 Contributing
Contributions are always welcome!
If you have a suggestion that would make this better, please fork the repo and create a pull request. Don't forget to give the project a star! Thanks again!
- Fork the Project
- Create your Feature Branch (```bash git checkout -b feature/AmazingFeature```)
- Commit your Changes (```bash git commit -m 'Add some AmazingFeature'```)
- Push to the Branch (```bash git push origin feature/AmazingFeature```)
- Open a Pull Request 


---
## ➤ Contact
You can reach out to me via the following methods:

- **Email:**  <img src="https://github.com/SatYu26/SatYu26/blob/master/Assets/Gmail.svg" alt="Gmail" width="20" height="20">&nbsp;&nbsp;<a href="mailto:sahilpotdukhe.ssp@gmail.com">sahilpotdukhe.ssp@gmail.com
- **Social Media:**
   - <img src="https://github.com/SatYu26/SatYu26/blob/master/Assets/Linkedin.svg" alt="Linkedin" width="20" height="20">&nbsp;&nbsp;[LinkedIn](https://www.linkedin.com/in/sahil-potdukhe/)
   - <img src="https://w7.pngwing.com/pngs/914/758/png-transparent-github-social-media-computer-icons-logo-android-github-logo-computer-wallpaper-banner-thumbnail.png" alt="Github" width="20" height="20">&nbsp;&nbsp;[GitHub](https://github.com/sahilpotdukhe)
   - <img src="https://github.com/SatYu26/SatYu26/blob/master/Assets/Instagram.svg" alt="Instagram" width="20" height="20">&nbsp;&nbsp;[Instagram](https://www.instagram.com/sahilpotdukhe11/)
   - <img src="https://github.com/SatYu26/SatYu26/blob/master/Assets/Twitter.svg" alt="Twitter" width="20" height="20">&nbsp;&nbsp;[Twitter](https://twitter.com/SahilPotdukhe)
  ---
