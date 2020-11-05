FROM ruby:2.5
RUN apt-get update -qq && \
apt-get install -y build-essential \
libpq-dev \
nodejs

# 以下time_managerは好きな名前に変更してください
RUN mkdir /Natural_Material
ENV APP_ROOT /Natural_Material
WORKDIR $APP_ROOT
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
