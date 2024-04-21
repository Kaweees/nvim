<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
<div align="left">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]

</div>

<a href="https://github.com/Kaweees/nvim">
  <img alt="Neovim Logo" src="static/vim.png" align="right" width="150">
</a>

<div align="left">
  <h1><em><a href="https://miguelvf.dev/blog/dotfiles/nvim">~nvim</a></em></h1>
</div>
<div></div>

<!-- ABOUT THE PROJECT -->

My personal website and blog. Peeking under the hood, it uses Hugo, a static site generator written in Go, and Continuous Integration/Continuous Deployment (CI/CD) via a GitHub Actions workflow I created for automatic builds and deployments upon commits.

### Built With

[![Hugo][Hugo-shield]][Hugo-url]
[![Go][Go-shield]][Go-url]
[![GitHub Actions][github-actions-shield]][github-actions-url]

<!-- PROJECT PREVIEW -->
## Preview
<p align="center">
  <img src="assets/img/screenshot.png"
  width = "80%"
  alt = "StartupTime"
  />
</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

Before attempting to build this project, make sure you have [Neovim installed](https://github.com/neovim/neovim/blob/master/INSTALL.md) on your machine.

### Installation

To get a local copy of the project up and running on your machine, follow these simple steps:

1. Clone the project repository
   ```sh
   git clone https://github.com/Kaweees/nvim.git
   cd nvim
   ```
2. Install the project dependencies
   ```sh
   :PackerSync
   ```
3. Create a symlink from the cloned folder to where neovim expects its configuration to be located. Personally, I use [ansible](https://github.com/Kaweees/ansible) to create symlinks for all of my [dotfiles](https://github.com/Kaweees/dotfiles). If you are not sure where to find it, run one of these commands:
   ```sh
   :echo stdpath('config')
   :h rtp
   ```


```sh
$XDG_CONFIG_HOME/nvim
```


To update the projects modules, run the following commands:

```sh
# Update the Hugo modules
hugo mod get -u
hugo mod tidy

# Update the NPM dependencies
hugo mod npm pack
npm install
```

## License

The source code for my website is distributed under the terms of the GNU General Public License v3.0, as I firmly believe that collaborating on free and open-source software fosters innovations that mutually and equitably beneficial to both collaborators and users alike. See [`LICENSE`](./LICENSE) for details and more information.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/Kaweees/nvim.svg?style=for-the-badge
[contributors-url]: https://github.com/Kaweees/nvim/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Kaweees/nvim.svg?style=for-the-badge
[forks-url]: https://github.com/Kaweees/nvim/network/members
[stars-shield]: https://img.shields.io/github/stars/Kaweees/nvim.svg?style=for-the-badge
[stars-url]: https://github.com/Kaweees/nvim/stargazers

<!-- MARKDOWN SHIELD BAGDES & LINKS -->
<!-- https://github.com/Ileriayo/markdown-badges -->
[Hugo-shield]: https://img.shields.io/badge/hugo-%23008080.svg?style=for-the-badge&logo=hugo&logoColor=ff4088&labelColor=222222&color=ff4088
[Hugo-url]: https://go.dev/
[Go-shield]: https://img.shields.io/badge/go-%23008080.svg?style=for-the-badge&logo=go&logoColor=00add8&labelColor=222222&color=00add8
[Go-url]: https://gohugo.io/
[github-actions-shield]: https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=2671E5&labelColor=222222&color=2671E5
[github-actions-url]: https://github.com/features/actions
