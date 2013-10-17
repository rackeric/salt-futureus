server {
        listen          80;
        server_name     test.empulsegroup.com;
        access_log /srv/www/test.empulsegroup.com/logs/access.log;
        error_log /srv/www/test.empulsegroup.com/logs/error.log;

        location / {
            #uwsgi_pass      127.0.0.1:9001;
            uwsgi_pass      unix:///run/uwsgi/app/test.empulsegroup.com/test.empulsegroup.com.socket;
            include         uwsgi_params;
            uwsgi_param     UWSGI_SCHEME $scheme;
            uwsgi_param     SERVER_SOFTWARE    nginx/$nginx_version;

        }

        location /static {
            root   /srv/www/test.empulsegroup.com/public_html/static/;
            index  index.html index.htm;

        }

}

