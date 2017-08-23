<?php
namespace PhalconRest\Controllers;
use \PhalconRest\Exceptions\HTTPException;

use \PhalconRest\Models\Princesses;
class PrincessController extends RESTController{
	public function route404Action() {
		// no code here, I just need to show the view.
	  }
	/**
	 * Sets which fields may be searched against, and which fields are allowed to be returned in
	 * partial responses. 
	 * @var array
	 */
	protected $allowedFields = array(
		'search' => array('name', 'prince_name'),
		'partials' => array('name', 'location', 'prince_name', 'popular')
	);

	private $princessRecords ;
	public function __construct(){
		//$masterobat = Princesses::find();
		$this->princessRecords = array(
			array('id' => 1, 'name' => 'Ariel', 'location' => 'Under The Sea', 'prince_name' => 'Eric', 'popular' => 'false'),
			array('id' => 2, 'name' => 'Snow White', 'location' => 'Forest', 'prince_name' => 'The Prince', 'popular' => 'true'),
			array('id' => 3, 'name' => 'Belle', 'location' => 'France', 'prince_name' => 'The Beast', 'popular' => 'false'),
			array('id' => 4, 'name' => 'Nala', 'location' => 'Pride Rock', 'prince_name' => 'Simba', 'popular' => 'true'),
			array('id' => 5, 'name' => 'Sleeping Beauty', 'location' => 'Castle', 'prince_name' => 'Charming', 'popular' => 'true'),
			array('id' => 6, 'name' => 'Jasmine', 'location' => 'Aghraba', 'prince_name' => 'Aladdin', 'popular' => 'true'),
			array('id' => 7, 'name' => 'Mulan', 'location' => 'China', 'prince_name' => 'Li Shang', 'popular' => 'false')
		);
	}
	
	public function get(){
		if($this->isSearch){
			$results = $this->search();
		} else {
			$results = $this->princessRecords;
		}

		return $this->respond($results);
	}

	public function getOne($id) {
        return $this->respond(Princesses::findFirst($id)->toArray());
    }

	public function post(){
		return array('Post / stub');
	}

	public function delete($id){
		return array('Delete / stub');
	}

	public function put($id){
		return array('Put / stub');
	}

	public function patch($id){
		return array('Patch / stub');
	}

	public function search() {
        $results = [];
        $princessRecords = Princesses::find()->toArray();
        foreach ($princessRecords as $record) {
            $match = true;
            foreach ($this->searchFields as $field => $value) {
                if (strpos($record[$field], $value) === FALSE) {
                    $match = false;
                }
            }
            if ($match) {
                $results[] = $record;
            }
        }
        return $results;
    }


	public function respond($results) {
        if (count($results) > 0) {
            if ($this->isPartial) {
                $newResults = [];
                $remove = array_diff(array_keys($results[0]), $this->partialFields);
                foreach ($results as $record) {
                    $newResults[] = $this->array_remove_keys($record, $remove);
                }
                $results = $newResults;
            }
            if ($this->offset) {
                $results = array_slice($results, $this->offset);
            }
            if ($this->limit) {
                $results = array_slice($results, 0, $this->limit);
            }
        }
        return $results;
    }


	private function array_remove_keys($array, $keys = array()) {

	    // If array is empty or not an array at all, don't bother
	    // doing anything else.
	    if(empty($array) || (! is_array($array))) {
	        return $array;
	    }

	    // At this point if $keys is not an array, we can't do anything with it.
	    if(! is_array($keys)) {
	        return $array;
	    }

	    // array_diff_key() expected an associative array.
	    $assocKeys = array();
	    foreach($keys as $key) {
	        $assocKeys[$key] = true;
	    }

	    return array_diff_key($array, $assocKeys);
	}

}