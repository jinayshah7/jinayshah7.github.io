FROM jekyll/jekyll:builder

# just some stuff needed for the template to work
RUN gem install bundle jekyll-paginate

# need to copy the contents of this repo into this folder
ADD . /srv/jekyll

# host_port : container_port
# this allows us to use localhost:8000 url in our host machine
EXPOSE 8000:4000

# start the server
ENTRYPOINT jekyll serve
