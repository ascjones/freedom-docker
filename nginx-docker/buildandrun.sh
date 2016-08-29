docker build -t nginx_img .\
&& docker run --restart=always -p 80:80 -p 443:443 --name=nginx --link=rsvp --volumes-from=blog --volumes-from=cardenas --volumes-from=wedding -d nginx_img
