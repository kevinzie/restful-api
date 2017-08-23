<?php

class Masterobat extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
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
  public function initialize()
    {
        $this->setSchema("aplous_data");
    }
 public function getSource()
    {
        return 'md_ef_masterobat';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return EfMasterobat[]|EfMasterobat|\Phalcon\Mvc\Model\ResultSetInterface
     */
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
