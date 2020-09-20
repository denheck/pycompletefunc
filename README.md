[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<br />
<p align="center">
  <a href="https://github.com/denheck/pycompletefunc">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Pycompletefunc</h3>

  <p align="center">
    A Python code completion function for use with VIM's builtin user completion option
    <br />
    <a href="https://github.com/github_username/repo_name"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/github_username/repo_name">View Demo</a>
    ·
    <a href="https://github.com/github_username/repo_name/issues">Report Bug</a>
    ·
    <a href="https://github.com/github_username/repo_name/issues">Request Feature</a>
  </p>
</p>


## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)


## About The Project

[Product Name Screen Shot][product-screenshot]

This is a lightweight and fast VIM plugin to handle Python code completion. It provides one function named `pycompletefunc#CompleteFunc` and uses it to set the `completefunc` VIM option for Python files.

Plugin goals
* *Stay focused:* Provide a Python completion function to override `completefunc` exclusively. 
* *Stay fast:* Speed is important and typing should never be blocked until completion options arrive.
* *Defer to VIM:* VIM already has keybindings `Ctrl-X Ctrl-U` with a popup for displaying completion options. This plugin should work with those existing features and won't create new keybindings or custom popups.
* *Manage dependencies:* Install and manage completion dependencies like Jedi for plugin users


### Built With

* [jedi](https://github.com/davidhalter/jedi)


## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Make sure VIM is installed with the python 3 extension. You can verify this by running `vim --version` at a bash prompt and looking for `+python3` in the output. 

### Installation

You can install this package using a VIM package manager like [vim-plug](https://github.com/junegunn/vim-plug) or using VIM 8's native package loading

Example .vimrc update to install using vim-plug:
```
Plug 'denheck/pycompletefunc'
```


## Usage

Once installed the builtin VIM command for executing a user defined completion (`CTRL-X CTRL-U`) will open the options dropdown.  Options can be cycled through using `CTRL-N` and `CTRL-P`. For more information on user defined completion in VIM the documentation has you covered. See `:help ins-completion` or `:help compl-function`


## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## License

Distributed under the MIT License. See `LICENSE` for more information.


## Acknowledgements

Thanks to the following exemplary projects for inspiration. If this plugin doesn't suit your needs you should definitely use one of the following 

* [jedi-vim](https://github.com/davidhalter/jedi-vim)
* [completor.vim](https://github.com/maralla/completor.vim)
* [coc.nvim](https://github.com/neoclide/coc.nvim)


[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo.svg?style=flat-square
[contributors-url]: https://github.com/github_username/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo.svg?style=flat-square
[forks-url]: https://github.com/github_username/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo.svg?style=flat-square
[stars-url]: https://github.com/github_username/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo.svg?style=flat-square
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo.svg?style=flat-square
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
[product-screenshot]: images/screenshot.png

