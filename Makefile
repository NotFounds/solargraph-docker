NAME=solargraph
VERSION=1.0

build:
		docker build -t $(NAME):$(VERSION) .

restart: stop start

start:
	docker run -d --rm \
		-p 7658:7658 \
		--name $(NAME) \
		$(NAME):$(VERSION)

contener=`docker ps -a -q`
image=`docker images | awk '/^<none>/ { print $$3 }'`

clean:
	@if [ "$(image)" != "" ] ; then \
		docker rmi $(image); \
	fi
	@if [ "$(contener)" != "" ] ; then \
		docker rm $(contener); \
	fi

stop:
	docker rm -f $(NAME)

attach:
	docker exec -it $(NAME) /bin/bash

logs:
	docker logs $(NAME)
