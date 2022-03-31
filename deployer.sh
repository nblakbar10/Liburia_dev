set -e
echo "Deploying application ..."

#maintenance mode
(php artisan down --message 'The app is being updated, plz try again')
    git pull origin master
php artisan updated

echo "Application deployed!"