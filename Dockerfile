FROM debian

MAINTAINER herven12 nyameherveanani@gmail.com

RUN apt-get update && apt install wget nginx -y

ADD script.sh /usr/bin/script.sh

RUN chmod 755 /usr/bin/script.sh

EXPOSE 80

ENTRYPOINT  ["script.sh"]

VOLUME /volume/data

CMD ["nginx"]

WORKDIR /usr/share/nginx

#Pour construire l'image,demarrer la commande docker buid -t herve/tuto

