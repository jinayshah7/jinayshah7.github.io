FROM jekyll/jekyll:builder

RUN gem install bundle jekyll-paginate

ADD . /site

ENTRYPOINT jekyll serve