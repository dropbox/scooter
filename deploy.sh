#!/bin/bash

# Compile the CSS
sass scss/scooter.scss:css/scooter.css

# npm install --global postcss-cli autoprefixer
postcss --use autoprefixer css/scooter.css --dir css --autoprefixer.browsers "ie > 9, last 2 versions" --autoprefixer.cascade false

# npm install sassdocs --global
sassdoc src --dest docs/build/sassdocs

# Copy the compiled CSS to the docs dir
\cp css/scooter.css docs/source/assets/css/vendor

# Change the extension of the CSS to SCSS for Middleman/Sass to treat it a little differently
mv docs/source/assets/css/vendor/scooter.css docs/source/assets/css/vendor/scooter.scss

# Build and deploy to gh-pages
middleman build
middleman deploy
