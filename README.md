# agostontorok.github.io

This project is a personal website built with [Jekyll](https://jekyllrb.com/), a static site generator. Below are the steps to build and run the project locally on Windows 11.

---

## Prerequisites

- **Ruby** (preferably 3.x)
- **Bundler** (Ruby gem)
- **Node.js** (for some plugins, optional but recommended)
- **Git** (for version control)

### 1. Install Ruby
- Download and install Ruby from [rubyinstaller.org](https://rubyinstaller.org/).
- During installation, make sure to check the box to add Ruby to your PATH.

### 2. Install Bundler
Open a terminal (Command Prompt or PowerShell) and run:
```sh
 gem install bundler
```

### 3. Install Project Dependencies
Navigate to the project directory:
```sh
 cd path\to\agostontorok.github.io
```
Install dependencies:
```sh
 bundle install
```

### 4. Serve the Site Locally
Run the following command:
```sh
 bundle exec jekyll serve
```
This will build the site and start a local server (default: http://localhost:4000).

### 5. Open in Browser
Visit [http://localhost:4000](http://localhost:4000) to view the site.

---

## Troubleshooting
- If you encounter errors with missing gems, run `bundle install` again.
- For issues with native extensions, ensure you have a working DevKit (comes with RubyInstaller).
- For Windows-specific issues, refer to [Jekyll on Windows](https://jekyllrb.com/docs/installation/windows/).

---

## Useful Commands
- `bundle exec jekyll build` – Build the site without serving
- `bundle exec jekyll clean` – Remove generated files

---

## More Info
- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

---

## License
See `LICENSE` file if present.
