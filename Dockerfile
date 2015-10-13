FROM ruby:2.2.3
MAINTAINER jan@lernmoment.de

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		git \
		node \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /src/LernMoment.de/
WORKDIR /src/LernMoment.de
RUN git clone https://github.com/LernMoment/LernMoment.de.git .

RUN bundle install

RUN echo "alias jekyll-local='jekyll serve -H 0.0.0.0 --config _config.yml,_config-devenv.yml --no-watch --drafts'" > ~/.bash_aliases \
	&& . ~/.bash_aliases
