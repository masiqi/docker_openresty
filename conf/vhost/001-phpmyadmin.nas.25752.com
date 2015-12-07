server {
    listen 80;
    server_name phpmyadmin.nas.25752.com;

    location / {
        proxy_pass http://127.0.0.1:21000;
    }
}
