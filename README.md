# components-ios
Reusable UI components for my projects.

This is probably not an ideal setup for most, but I just want simple native UI that I can throw into apps quickly, so that is the purpose of this library.
It is setting the styling and themes within so I do not ned to think about them within my other apps.
I do not recommend anyone else using this library, but if you want to then feel free.


Theme is based on what I generated in [material 3](https://m3.material.io/theme-builder#/custom) based on:
Primary: #133445 (from my bt logo)
Secondary: #4d96d1 (from my bt logo)
Tertiary: #948cb1 (default value)
Neutral: #8f9193 (default value)

## Dev Setup

- Setup [rbenv](https://github.com/rbenv/rbenv) by following it's [installation instructions](https://github.com/rbenv/rbenv#installation). This is for managing ruby version.
- Run `rbenv install` to install the expected ruby version. This is defined in the `.ruby-version` file.
- Install Bundler with `gem install bundler`.
- Install ruby gems with `bundle install`. These are defined in the `Gemfile` file.
