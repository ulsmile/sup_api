FROM ruby:2.3.1
RUN apt-get update -qq 
RUN apt-get upgrade -y
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
ENV APP_HOME /myapp
RUN gem install bundler --pre
# Copy the Gemfile and Gemfile.lock into the image. 
# Temporarily set the working directory to where they are. 
WORKDIR /tmp
ADD ./supapp/Gemfile Gemfile
#ADD ./supapp/Gemfile.lock Gemfile.lock
RUN bundle install --jobs=4 --system
RUN bundle exec rails g rspec:install
 # Everything up to here was cached.  This includes
# the bundle install, unless the Gemfiles changed.
# Now copy the app into the imag # Everything up to here was cached.  This includes
# the bundle install, unless the Gemfiles changed.
# Now copy the app into the images.
RUN mkdir $APP_HOME
WORKDIR $APP_HOME/
ADD ./supapp $APP_HOME/
WORKDIR $APP_HOME
