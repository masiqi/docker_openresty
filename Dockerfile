FROM tenstartups/openresty

MAINTAINER siqi "masiqi@gmail.com"

ADD www /var/www

VOLUME ["/etc/nginx"]

# Set the entrypoint script.
ENTRYPOINT ["./entrypoint"]


EXPOSE 80

# Define the default command.
CMD ["nginx", "-c", "/etc/nginx/nginx.conf"]
