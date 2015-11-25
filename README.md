# apache-drupal-8
Apache Docker Container for Drupal 8 with Drush & Drupal Console

* SQL Server Not Included 
* Either mount your own web directory with Drupal 8 or install Drupal 8 with Drupal Console

## Running with existing source
Run with local volume for web directory
```bash
docker run -v "application:/var/www/html" --link=mysql:mysql -d espressodev/apache-drupal-8:latest
```
## Running Console
Run and install Drupal 8 with Drupal Console

```bash
docker run --name=drupal8 --link=mysql:mysql -d espressodev/apache-drupal-8:latest
```

```bash
docker exec -it drupal bash
cd /tmp
drupal site:new mysite
cp -R mysite/* /var/www/html
```
