FROM httpd:2.4

# Copy html pages
COPY ./html/* /usr/local/apache2/htdocs

# Copy htpasswd password file
COPY ./passwd/passwords /etc/httpd/passwd/passwords

# Copy config files
COPY ./conf/* /usr/local/apache2/conf/
 
RUN touch /tmp/x.x

## Create log files
RUN mkdir -p /usr/local/apache2/logs
