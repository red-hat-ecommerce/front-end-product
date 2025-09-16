FROM registry.access.redhat.com/ubi9/nginx-120:9.6

# put html page on a specific folder
COPY ./*.html /opt/app-root/src/

COPY nginx/nginx.conf "${NGINX_CONF_PATH}"

# Expose the port the nginx server runs on
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]