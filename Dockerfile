FROM ruby:2.3.1
RUN apt-get update -qq 
RUN apt-get upgrade -y
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME/
ADD . $APP_HOME/
RUN gem install bundler --pre
RUN bundle install --jobs=4
ORKDIR $APP_HOME
