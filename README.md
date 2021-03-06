# GitHub News Feed Filter

[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/bcylin/github-rss-filter/blob/master/LICENSE)

A simple filter to remove entries from your GitHub news feed.

## Environment variables

* `RSS_URL` Your GitHub news feed URL, at the bottom of <https://github.com/>.
* `REMOVE_KEYWORDS` Comma separated keywords in entry links to remove from the feed.
* `SECRET` An optional parameter to keep your feed secret.

## Development Setup

Install bundler:

```sh
gem install bundler && bundle install
```

Create a `.env.local` file with the following contents:

```sh
RSS_URL=<Your GitHub news feed URL>
REMOVE_KEYWORDS=<keyword1>,<keyword2>
```

Run the app locally:

```sh
shotgun app.rb
# open http://localhost:9393/rss.atom
```

## Deployment Example

* Clone the project
* Install [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)
* Follow the steps in [Deploying with Git](https://devcenter.heroku.com/articles/git)

### Deploy using the template

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/bcylin/github-newsfeed-filter)

Then use `https://#{app-name}.herokuapp.com/rss.atom` instead of the GitHub news feed URL in your RSS reader.

## License

This project is not affiliated with GitHub. The source code is licensed under the terms of the [MIT license](https://github.com/bcylin/github-rss-filter/blob/master/LICENSE).
