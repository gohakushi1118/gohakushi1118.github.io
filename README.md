# Po-Chih Wu's homepage

Personal academic homepage built with [Jekyll](https://jekyllrb.com/).

Template: [leonidk/leonidk.github.io](https://github.com/leonidk/leonidk.github.io), itself based on [Jon Barron's website](https://jonbarron.info/) and [Jekyll Now](https://github.com/barryclark/jekyll-now).

## Local development

```sh
bundle install
bundle exec jekyll serve   # http://127.0.0.1:4000
```

## Editing content

All content (name, bio, links, sections and projects) lives in **`_data/profile.yml`**.
`_layouts/default.html` only handles layout.

To add a project, put the image in `images/`, a ~160px thumbnail with the same name in `tn/images/`,
then add an item under a section in `_data/profile.yml`.
