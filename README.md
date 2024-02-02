# My Portfolio

## Description
My Portfolio is a Flutter application designed to showcase your portfolio in a simple and minimalist way. The app generates a landing page highlighting your skills, projects, and contact details.

## Screenshots
<img width="987" alt="principal" src="https://github.com/JhonaCodes/my_portfolio/assets/53523825/cb708744-3ab7-492b-a251-cd02ca6a10ec">
<img width="964" alt="projects" src="https://github.com/JhonaCodes/my_portfolio/assets/53523825/de6dac35-c426-4f48-8424-77f6fb48b212">


## Features
- **Minimalist Design:** Clean and user-friendly interface.
- **Customized Portfolio:** Effectively showcase your skills and projects.
- **Contact Details:** Includes information for visitors to get in touch.

## Installation
1. Make sure you have Flutter installed on your machine.
2. Clone this repository: `git clone https://github.com/JhonaCodes/my_portfolio.git`
3. Navigate to the project directory: `cd my_portfolio`
4. Run the app: `flutter run`

## Profile Data
To customize your portfolio content, edit the JSON structure in `lib/src/infrastructure/api.dart` and use your json url with this structure [template](https://gist.githubusercontent.com/JhonaCodes/d25317d8cd702be00e24601efef83622/raw/profile_jhonacode.json).
```json
{
  "name": "Your Name",
  "title": "Your Title",
  "bio": "A brief bio about yourself.",
  "skills": ["Skill 1", "Skill 2", "Skill 3"],
  "projects": [
    {
      "name": "Project 1",
      "description": "Description of Project 1.",
      "url": "https://project1.com"
    },
    {
      "name": "Project 2",
      "description": "Description of Project 2.",
      "url": "https://project2.com"
    }
  ],
  "contact": {
    "email": "your.email@example.com",
    "linkedin": "https://linkedin.com/in/your-linkedin",
    "github": "https://github.com/your-github",
    "portfolio": "https://your-portfolio.com"
  }
}

```

## Usage
Customize the portfolio content in the `lib/data/portfolio_data.dart` file. Here, you can add information about your skills, projects, and contact details.

## Acknowledgements
Special thanks to [Bartosz Jarocki](https://github.com/BartoszJarocki) for outstanding design contributions. The visual appeal and user-friendly design were made possible by their creativity and experience.

## Contribution
Contributions are welcome! If you find any issues or have improvements, please create a Pull Request.

## License
This project is licensed under the [MIT License](LICENSE).

---

Made with ❤️ and Flutter.
