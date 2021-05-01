<p align="center">
  <img src=".github/logo.png" width="300" height="250" alt="">
</p>

<h1 align="center">Website-Joana</h1>

## About

[Bootstrap](https://getbootstrap.com/) is the most popular CSS Framework for developing responsive and mobile-first websites.

This GitHub template holds all the code and dependencies that were used to build a simple **fully containerized** Bootstrap 4 website.

## Introduction

This project has been designed by taking advantage of the following main technologies:
- **HTML5**
- **CSS**
- **JavaScript**
- **Docker**
- **PHP**
- **Helm 3**

## Prerequisites

- Nodejs 15
- Docker
- Helm 3

## Project structure

- Single HTML page (`index.html`) where is included all Bootstrap templating.
- Bootstrap source files are being included through npm.
- npm scripts (`package.json`) for compiling and autoprefixing Sass, listen for changes and starting a basic local server for testing and debugging.
- A stylesheet (`starter.scss`) highlighting two ways to include and customize Bootstrap.
- A JavaScript file (`assets/js/starter.js`) that imports all from Bootstrap.

## Running locally

```shell
# Clone the repo:
git clone https://github.com/joaoss35/website-joana.git
cd website-joana

# Install dependencies:
npm install

# Compile Sass:
npm run css-compile

# Watch Sass for changes (uses nodemon):
npm run watch

# Starts a local server and Saas listens for changes:
npm start
```

The local server will be **listening** on **port 4000**. As such, please refer to **<http://localhost:4000>** in your local browser to watch the project in action.

**Note**: Usually, if Node has not been properly configured, you might face issues compiling Saas. To prevent such problems you may need to **rebuild** all Saas by running the following command:

`npm rebuild node-sass`

## Running in a cluster

```shell
# Clone the repo:
git clone https://github.com/joaoss35/website-joana.git
cd website-joana/.helm

# Templating helm:
helm template website-joana . -f values.yaml --set base.image.tag=foobar

# Installing helm:
helm install website-joana . -f values.yaml --kube-context <your_context>-n <your_namespace>

# Upgrading helm:
helm upgrade website-joana . -f values.yaml --kube-context <your_context>-n <your_namespace>
````

## Actions CI

To be added.

### Stylelint

Stylelint has ben included as is Bootstrap's default Stylelint config, [stylelint-config-twbs-bootstrap](https://github.com/twbs/stylelint-config-twbs-bootstrap).

## Special Mentions

- @mdo for such an amazing sandbox [project](https://github.com/twbs/bootstrap-npm-starter).
