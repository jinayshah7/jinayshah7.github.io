FROM jekyll/jekyll

RUN gem install bundle jekyll-paginate

ADD . /site

ENTRYPOINT jekyll serve