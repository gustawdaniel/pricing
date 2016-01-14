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

$date =new DateTime("now");
$date_string = date_format($date,'Y-m-d H:i:s');

$data = array(
    'product_name' => 'młotek',
    'time'  => $date_string,
    'amount'=> 7,
    'price' => 1000000
);

$response = $client->post('http://localhost:8000/app_dev.php/api/4afdf2824e422ab9e8010511816b0c3e/transactions', [
    'body' => json_encode($data)
]);

echo $response;
echo "\n\n";