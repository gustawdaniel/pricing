<?php

require __DIR__.'/../../../vendor/autoload.php';

$client = new \GuzzleHttp\Client([
    'base_url' => 'http://localhost:8000/app_dev.php',
    'defaults' => [
        'exceptions' => false,
    ]
]);

//$request = $client->createRequest('POST /api/test');

//echo $request;

//$data = array(
//    'name' => 'młotek',
//    'description'=> 'młotek dla seksownych kotek',
//    'wholesale_price'=> 1000,
//    'shop_price' => 1000000,
//    'tax' => 0.22,
//);

$data = array(
    'name' => 'obroża',
    'description'=> 'obroża do ozdoby poroża',
    'wholesale_price'=> 1.04,
    'shop_price' => 2,
    'tax' => 0.22,
);

$response = $client->post('http://localhost:8000/app_dev.php/api/4afdf2824e422ab9e8010511816b0c3e/products', [
    'body' => json_encode($data)
]);

echo $response;
echo "\n\n";