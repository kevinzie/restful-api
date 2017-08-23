<?php

/**
 * Collections let us define groups of routes that will all use the same controller.
 * We can also set the handler to be lazy loaded.  Collections can share a common prefix.
 * @var $princessCollection
 */

// This is an Immeidately Invoked Function in php.  The return value of the
// anonymous function will be returned to any file that "includes" it.
// e.g. $collection = include('princess.php');
return call_user_func(function(){

	$princessCollection = new \Phalcon\Mvc\Micro\Collection();

	$princessCollection
		// VERSION NUMBER SHOULD BE FIRST URL PARAMETER, ALWAYS
		->setPrefix('/v1/princess')
		// Must be a string in order to support lazy loading
		->setHandler('\PhalconRest\Controllers\PrincessController')
		->setLazy(true);

	// Set Access-Control-Allow headers.
	$princessCollection->options('/', 'optionsBase');
	$princessCollection->options('/{id}', 'optionsOne');

	// First paramter is the route, which with the collection prefix here would be GET /princess/
	// Second paramter is the function name of the Controller.
	$princessCollection->get('/', 'get');
	// This is exactly the same execution as GET, but the Response has no body.
	$princessCollection->head('/', 'get');

	// $id will be passed as a parameter to the Controller's specified function
	$princessCollection->get('/{id:[0-9]+}', 'getOne');
	$princessCollection->head('/{id:[0-9]+}', 'getOne');
	$princessCollection->post('/', 'post');
	$princessCollection->delete('/{id:[0-9]+}', 'delete');
	$princessCollection->put('/{id:[0-9]+}', 'put');
	$princessCollection->patch('/{id:[0-9]+}', 'patch');

	return $princessCollection;
});