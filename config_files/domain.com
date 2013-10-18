server {
        listen          80;
        server_name     domain.com;
        access_log /srv/www/domain.com/logs/access.log;
        error_log /srv/www/domain.com/logs/error.log;

        location / {
            #uwsgi_pass      127.0.0.1:9001;
            uwsgi_pass      unix:///run/uwsgi/app/domain.com/domain.com.socket;
            include         uwsgi_params;
            uwsgi_param     UWSGI_SCHEME $scheme;
            uwsgi_param     SERVER_SOFTWARE    nginx/$nginx_version;

        }

        location /static {
            root   /srv/www/domain.com/public_html/static/;
            index  index.html index.htm;

        }

}

