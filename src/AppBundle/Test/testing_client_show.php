<?php

require __DIR__.'/../../../vendor/autoload.php';

$client = new \GuzzleHttp\Client([
    'base_url' => 'http://localhost:8000/app_dev.php',
    'defaults' => [
        'exceptions' => false,
    ]
]);


$response = $client->get('http://localhost:8000/app_dev.php/api/clients/4afdf2824e422ab9e8010511816b0c3e');

echo $response;
echo "\n\n";