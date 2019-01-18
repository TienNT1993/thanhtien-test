FROM ruby:2.3.3
RUN mkdir /thanhtien-test
WORKDIR /thanhtien-test
COPY Gemfile /thanhtien-test/Gemfile
COPY Gemfile.lock /thanhtien-test/Gemfile.lock
RUN bundle install
COPY . /thanhtien-test

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]