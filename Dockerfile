FROM jekyll/jekyll

COPY Gemfile .
COPY Gemfile.lock .

RUN chown jekyll:jekyll Gemfile Gemfile.lock; bundle install --quiet --clean

CMD ["jekyll", "serve"]
