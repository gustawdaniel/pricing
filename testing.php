<?php

require __DIR__.'/vendor/autoload.php';

$client = new \GuzzleHttp\Client([
    'base_url' => 'http://localhost:8000/app_dev.php',
    'defaults' => [
        'exceptions' => false,
    ]
]);

//$request = $client->createRequest('POST /api/test');

//echo $request;

$data = array(
    'name' => 'adrian',
    'url' => 'www.sklepadriana.pl',
    'state' => 'delay'
);

$response = $client->post('http://localhost:8000/app_dev.php/api/clients', [
    'body' => json_encode($data)
]);

echo $response;
echo "\n\n";