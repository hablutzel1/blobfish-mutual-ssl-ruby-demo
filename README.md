# LEEME

## Guía de configuración

A continuación se muestran instrucciones para probar el presente proyecto de demostración.

### Configurar "hosts" local

Añadir las siguientes líneas a `/etc/hosts`:

```
127.0.0.1 sslmutuo.example.org
127.0.0.1 interno.sslmutuo.example.org
```

### Configurar NGINX

Primero se debe crear una copia de `/blobfish-mutual-ssl-ruby-demo/archivos_demo/nginx/sslmutuo.example.org.sample` y ajustar las rutas en su interior.

```
$ cp /ruta/a/blobfish-mutual-ssl-ruby-demo/archivos_demo/nginx/sslmutuo.example.org.sample /ruta/a/blobfish-mutual-ssl-ruby-demo/archivos_demo/nginx/sslmutuo.example.org

```

Luego se debe configurar un sitio de NGINX con el archivo creado. 

```
$ sudo ln -s /ruta/a/blobfish-mutual-ssl-ruby-demo/archivos_demo/nginx/sslmutuo.example.org /etc/nginx/sites-enabled/
$ sudo service nginx restart

```

### Correr Puma

```
$ cd /ruta/a/blobfish-mutual-ssl-ruby-demo
$ puma -e development -b unix:///tmp/blobfish-mutual-ssl-ruby-demo.sock
```

### Acceder a la demostración

Visite https://sslmutuo.example.org/.

## Guía de integración

Ver el siguiente commit, xxx.

## Certificados de cliente de prueba

Instale en su navegador los certificados con extensión `.p12` presentes en `demo_files/client_certs/`. Nótese que estos
no poseen contraseña.

## Autoridad certificadora de prueba

Se incluye una autoridad certificadora de prueba de XCA en `/archivos_demo/fabrikam_test_ca.xdb`.

XCA se puede descargar desde http://hohnstaedt.de/xca/index.php/download.

