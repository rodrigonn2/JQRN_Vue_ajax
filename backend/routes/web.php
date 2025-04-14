<?php

$router->get('/', function () use ($router) {
    return $router->app->version();
});


$router->get('/players', 'PlayerController@getAll');
$router->get('/players/{id}', 'PlayerController@getOne');
$router->get('/players/club/{club_id}', 'PlayerController@getAllFromClub');

$router->get('/clubs', 'ClubController@getAll');
$router->get('/clubs/{id}', 'ClubController@getOne');











