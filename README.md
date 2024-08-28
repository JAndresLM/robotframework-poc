# Robot Framework Project
## Overview
This project utilizes Robot Framework to automate and test web applications. It includes a set of test cases and keywords designed to validate various functionalities of the application under test.

## Prerequisites
Before running the tests, ensure that you have the following installed:

**Python** (version 3.6 or above)
**Robot Framework:** Install using ```pip install robotframework```
**SeleniumLibrary:** Install using ```pip install robotframework-seleniumlibrary```
**WebDriver:** Ensure you have the appropriate WebDriver installed for your browser (e.g., ChromeDriver for Google Chrome).

## Installation
1. Clone the Repository

```bash
git clone https://github.com/JAndresLM/robotframework-poc
cd robotframework-poc
```

2. Install Dependencies
```
pip install -r requirements.txt
```

3. Download WebDriver

- For Chrome: Download from ChromeDriver
- For Firefox: Download from GeckoDriver
- Ensure the WebDriver executable is in your system's PATH.


## Project Structure
```
your-repo-name/
│
├── tests/
│   ├── sample_test.robot
│
├── pages/
│   ├── sample-page.resource/
│
├── requirements.txt
├── README.md
└── .gitignore
```
- tests/: Contains Robot Framework test cases.
- resources/: Contains reusable keywords, variables, and other resources.
- requirements.txt: Lists Python dependencies for the project.

## Running Tests
To execute the test cases, run the following command from the project root directory:

```
robot tests/sample_test.robot
```

To run all tests in the tests/ directory:

```
robot tests/
```

## Reporting
After tests are executed, Robot Framework generates reports and logs in the reports/ directory. You can view the results in the report.html and log.html files.

## License
This project is licensed under the MIT License.