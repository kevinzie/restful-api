<?php

return new \Phalcon\Config(array(
    'database' => array(
        'adapter'     => 'Mysql',
        'host'        => 'localhost',
        'username'    => 'root',
        'password'    => 'gazper34',
        'dbname'      => 'aplous_data',
    ),
    'application' => array(
        'modelsDir'      => __DIR__ . '/../../app/models/',
        'viewsDir'       => __DIR__ . '/../../app/views/',
        'controllersDir' => __DIR__ . '/../../app/controllers/',
        'languagesDir'   => __DIR__ . '/../../app/languages/',
        'libraryDir'     => __DIR__ . '/../../app/library/',
        'cacheDir'       => __DIR__ . '/../../app/cache/',
        'baseUri'        => '/',
    )
));
