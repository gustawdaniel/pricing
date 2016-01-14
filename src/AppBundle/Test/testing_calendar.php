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

$data = array(
    'maxAttendees' => 5,
    'sendNotifications' => false,
    'supportsAttachments'   => false,
);

$response = $client->post('https://www.googleapis.com/calendar/v3/calendars/v5f6jhecp3o3jqrb40fulvbl14@group.calendar.google.com/events', [
    'body' => json_encode($data)
]);

echo $response;
echo "\n\n";