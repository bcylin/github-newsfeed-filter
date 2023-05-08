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
ruby app.rb -s Puma
# open http://localhost:4567/rss.atom
```

## Deployment Example

* Fork the repo
* Follow the steps to [Create a new Blueprint Instance](https://render.com/deploy)
* Use `https://#{app-name}.onrender.com/rss.atom` instead of the GitHub news feed URL

## License

This project is not affiliated with GitHub. The source code is licensed under the terms of the [MIT license](https://github.com/bcylin/github-rss-filter/blob/master/LICENSE).
