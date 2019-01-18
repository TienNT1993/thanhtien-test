FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /thanhtien-test
WORKDIR /thanhtien-test
COPY Gemfile /thanhtien-test/Gemfile
COPY Gemfile.lock /thanhtien-test/Gemfile.lock
RUN bundle install
COPY . /thanhtien-test

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]