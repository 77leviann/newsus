<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />
<div align="center">
  <a href="https://github.com/77leviann/newsus">
    <img src="images/logo/image_logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">NewsUS</h3>

  <p align="center">
    Submission Belajar Membuat Aplikasi Flutter untuk Pemula <strong>Dicoding Academy</strong>. </p>
    <br />
    <a href="https://github.com/77leviann/newsus"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/77leviann/newsus">View Demo</a>
    ·
    <a href="https://github.com/77leviann/newsus/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/77leviann/newsus/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
    <br />
    <br />
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#screenshots">Screenshots</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

![Rating Project](images/screenshot/rating_project.png)

NewsUS is an application crafted to provide current news exclusively centered around the US region, sourced from the API provided by <a href="https://newsapi.org/"><strong>NEWS API</strong></a>, By utilizing this API, NewsUS ensures users stay updated about the latest events in the United States.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [![Dart][Dart]][Dart-url]
- [![Flutter][Flutter]][Flutter-url]

```yaml
dependencies:
  flutter:
    sdk: flutter
  flex_color_scheme: ^7.3.1 
  google_fonts: ^6.1.0
  flutter_dotenv: ^5.1.0 
  dio: ^5.4.3+1
  intl: ^0.19.0
  url_launcher: ^6.2.6
  sqflite: ^2.3.3+1
  path: ^1.9.0


dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

This guide will walk you through setting up your project locally. Follow these steps to get started.

### Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)

If you haven't installed Flutter yet, you can do so by following the instructions [here](https://flutter.dev/docs/get-started/install).

### Installation

1. Visit the website of the [News API](https://newsapi.org/) provider to obtain and activate a free API key for accessing news data.
2. Clone the repository:
   ```sh
   git clone https://github.com/77leviann/newsus.git
   ```
3. Navigate to the project directory:
   ```sh
   cd newsus
   ```
4. Create a file named .env in the root directory of your project. Use the .env.example file as a template for the required environment variables.
5. Run the following command in your terminal to get the necessary dependencies:
   ```sh
   flutter pub get
   ```
6. Run project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Screenshots

Below are some screenshots that demonstrate the usage of the project:

|                                                              |                                                              |                                                              |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
|                    **Splash Screen**                     |                     **Home Screen**                     |                    **Detail Screen**                    |
|    ![Splash Screen](images/feature/splash_screen.png)     |     ![Home Screen](images/feature/home_screen.png)      | ![Detail Screen](images/feature/detail_screen.png) |
|                    **Detail Screen 2**                    |                    **Bookmark Screen**                    |                    **Read More (inAppWebView)**                    |
| ![Detail Screen 2](images/feature/detail_screen_2.png) | ![Bookmark Screen](images/feature/bookmark_screen.png) | ![Read More (inAppWebView)](images/feature/read_more(inAppWebView).png) |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

- [ ] Splash
- [ ] Home
- [ ] Detail
- [ ] Bookmark

See the [open issues](https://github.com/77leviann/newsus/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are _greatly appreciated_.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/AmazingFeature)
3. Commit your Changes (git commit -m 'Add some AmazingFeature')
4. Push to the Branch (git push origin feature/AmazingFeature)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the MIT License. See LICENSE.txt for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

Levian Dandra - 77leviann@gmail.com

Project Link: [https://github.com/77leviann/newsus](https://github.com/77leviann/newsus)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

I would like to express my gratitude to the following individuals and organizations for their support and contributions to this project:

- **NewsAPI** - For providing a free API.
- **Open Source Libraries** - For the libraries and tools that made development easier and more efficient.
- **othneildrew** - For creating the [Best-README-Template](https://github.com/othneildrew/Best-README-Template), which inspired and assisted in the creation of this README.

Thank you all for your invaluable contributions!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[contributors-shield]: https://img.shields.io/github/contributors/77leviann/newsus.svg?style=for-the-badge
[contributors-url]: https://github.com/77leviann/newsus/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/77leviann/newsus.svg?style=for-the-badge
[forks-url]: https://github.com/77leviann/newsus/network/members
[stars-shield]: https://img.shields.io/github/stars/77leviann/newsus.svg?style=for-the-badge
[stars-url]: https://github.com/77leviann/newsus/stargazers
[issues-shield]: https://img.shields.io/github/issues/77leviann/newsus.svg?style=for-the-badge
[issues-url]: https://github.com/77leviann/newsus/issues
[license-shield]: https://img.shields.io/github/license/77leviann/newsus.svg?style=for-the-badge
[license-url]: https://github.com/77leviann/newsus/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/77leviann
[product-screenshot]: (images/screenshot/main_screenshot.png)
[Dart]: https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=61DAFB
[Dart-url]: https://dart.dev/
[Flutter]: https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white
[Flutter-url]: https://flutter.dev/
