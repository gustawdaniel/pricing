<?php

require __DIR__.'/../../../vendor/autoload.php';

$client = new \GuzzleHttp\Client([
    'base_url' => 'http://localhost:8000/app_dev.php',
    'defaults' => [
        'exceptions' => false,
    ]
]);


$response = $client->get('http://localhost:8000/app_dev.php/api/taxes');

echo $response;
echo "\n\n";