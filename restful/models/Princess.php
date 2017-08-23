<?php
namespace PhalconRest\Models;
use \PhalconRest\Exceptions\HTTPException;

class Princess extends \Phalcon\Mvc\Model{

	/**
	 * These set the values for soft deletion in the database (using a deleted 
	 * flag instead of removing the entry)
	 */
	const DELETED = 1;
	const NOT_DELETED = 0;

	/**
	 * Returns the name of the table to use in the database
	 * @return string
	 */
	 public $id;
	 public $kode;
	 public $namabarang;
	 public $kemasan;
	 public $kodesatuankecil;
	 public $materalgroup;
	 public $hargaterakhir;
	 public $isi;
	 public $formularium;
	 public $dpho;
	 public $keterangan;
	 public $isirestricted;
	 public $stokbarang;

	public function getSource(){
		return "md_ef_masterobat";
	}

	/**
	 * Sets up behaviors for this model.  This is run when a model is instantiated.
	 * @return void
	 */
	public function initialize(){

		/**
		 * Behaviors change the way the ORM interfaces with the Database.  SoftDelete
		 * causes the deleted flag to be set when an object is "deleted" instead of
		 * removing the row from the database.  This does not effect selects, which still
		 * require you to code in this condition.
		 */
		 $this->setSchema("aplous_data");
	
	}

	
	public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return EfMasterobat|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}