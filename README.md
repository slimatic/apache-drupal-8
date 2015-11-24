# apache-drupal-8
Apache Docker Container for Drupal 8 with Drush & Drupal Console

* SQL Server Not Included 
* Either mount your own web directory with Drupal 8 or install Drupal 8 with Drupal Console

## Running Console
Run with local volume for web directory
```bash
docker run -v "$3:/var/www/html" --link=mysql:mysql -d espressodev/apache-drupal-8:latest
```

Run and install Drupal 8 with Drupal Console

```bash
docker run --name=drupal8 --link=mysql:mysql -d espressodev/apache-drupal-8:latest
```

```bash
docker exec -it drupal bash
cd /var/www
drupal site:new html
```
