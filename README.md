# Callum Jack

Uses the [Hugo](https://gohugo.io/) static site generator with the [Hugo Gallery](https://github.com/nicokaiser/hugo-theme-gallery/) theme.


# Local Development

To build and run locally, you will need to install [Docker Compose](https://docs.docker.com/compose/) first.
Instructions to install it are located [here](https://docs.docker.com/compose/install/).

Once installed, clone this repository to your computer using

```bash 
git clone --recurse-submodules git@github.com:jackfuller/callumjack.git ~/callumjack
```

Change directory into the project using

```bash 
cd ~/callumjack
```

Then, build the site:

```bash 
docker compose up -d --build
```

You should now be able to view the website in your browser at http://localhost:1313

