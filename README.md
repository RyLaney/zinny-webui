# Zinny Web UI: A Simple Interface to Rate Films
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](LICENSE)

## What's the skinny on the ciné?
Zinny Web UI provides a straightforward browser-based interface for rating films using surveys from [zinny-surveys](https://github.com/RyLaney/zinny-surveys). It connects to the Zinny API to manage surveys, ratings, and more.

<img src="https://raw.githubusercontent.com/RyLaney/zinny-webui/main/resources/zinny-webui-start_screen-opt.png" alt="Screenshot of Zinny App" width="320"/>

## Quickstart
1. Clone the repository.
2. Install the dependencies (see [SETUP.md](https://github.com/RyLaney/zinny-webui/blob/main/SETUP.md)).
3. Start the server:
   `python zinny-webui.py`
4. Access the interface at:
   `http://127.0.0.1:7219`


## Installation Details

see [SETUP.md](SETUP.md)

## Reference Material: Original Spreadsheet
This repository includes the spreadsheet that inspired the design and goals of the zinny-survey specifications, zinny-api, and this user interface.

About the Spreadsheet:
Originally a standalone tool for evaluating and scoring, the spreadsheet served as a prototype for the Zinny.
While the current specification builds upon and extends the spreadsheet's functionality, the original spreadsheet remains useful for those who prefer a traditional tabular interface.
Where to Find It:
The Excel version spreadsheet can be found in the reference/ directory of this repository, and there is a Google Sheets version available for copying and editing.
- [Title Scoring VFX by Criteria - Example - Rev 2.1.xlsx](https://raw.githubusercontent.com/RyLaney/zinny-webui/main/reference/Title_Scoring_VFX_by_Criteria_-_Example_-_Rev_2.1.xlsx)
- [Title Scoring VFX by Criteria - Example - Rev 2.1 (copy it)](https://docs.google.com/spreadsheets/d/1ts7XaVp_SuuMwpedFab30OoniZPI2b3wDEfh9uaoJJQ/copy?usp=sharing)
- [Title Scoring VFX by Criteria - Example - Rev 2.1 (view only)](https://docs.google.com/spreadsheets/d/1ts7XaVp_SuuMwpedFab30OoniZPI2b3wDEfh9uaoJJQ/view?usp=sharing)


## Contributing
We welcome contributions! If you'd like to report an issue, suggest a feature, or contribute code, please check the [CONTRIBUTING.md](https://github.com/RyLaney/zinny-webui/blob/main/CONTRIBUTING.md) file for guidelines.


## Acknowledgements
- [Flask](https://flask.palletsprojects.com/en/1.1.x/) for the API framework.
- [Bootstrap](https://getbootstrap.com/) for the front-end styling.
- [PyInstaller](https://www.pyinstaller.org/) for building executables.
- [Platypus](https://github.com/sveinbjornt/Platypus) for creating macOS app bundles.
- Special thanks to [IMDb](https://www.imdb.com) for being the standard reference for movie and TV data. While no IMDb data is used directly, title information may coincide with their dataset.
- Development sponsored by [Teus Media](https://teus.media).
