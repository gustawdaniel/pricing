<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DpTransaction
 *
 * @ORM\Table(name="dp_transaction", indexes={@ORM\Index(name="id_product", columns={"id_product"}), @ORM\Index(name="id_client", columns={"id_client"})})
 * @ORM\Entity
 */
class DpTransaction
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="bigint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="time", type="datetime", nullable=false)
     */
    private $time;

    /**
     * @var integer
     *
     * @ORM\Column(name="amount", type="bigint", nullable=false)
     */
    private $amount;

    /**
     * @var string
     *
     * @ORM\Column(name="price", type="decimal", precision=9, scale=2, nullable=false)
     */
    private $price;

    /**
     * @var \DpProduct
     *
     * @ORM\ManyToOne(targetEntity="DpProduct")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_product", referencedColumnName="id")
     * })
     */
    private $idProduct;

    /**
     * @var \DpClient
     *
     * @ORM\ManyToOne(targetEntity="DpClient")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_client", referencedColumnName="id")
     * })
     */
    private $idClient;



    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set time
     *
     * @param \DateTime $time
     *
     * @return DpTransaction
     */
    public function setTime($time)
    {
        $this->time = $time;

        return $this;
    }

    /**
     * Get time
     *
     * @return \DateTime
     */
    public function getTime()
    {
        return $this->time;
    }

    /**
     * Set amount
     *
     * @param integer $amount
     *
     * @return DpTransaction
     */
    public function setAmount($amount)
    {
        $this->amount = $amount;

        return $this;
    }

    /**
     * Get amount
     *
     * @return integer
     */
    public function getAmount()
    {
        return $this->amount;
    }

    /**
     * Set price
     *
     * @param string $price
     *
     * @return DpTransaction
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get price
     *
     * @return string
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set idProduct
     *
     * @param \AppBundle\Entity\DpProduct $idProduct
     *
     * @return DpTransaction
     */
    public function setIdProduct(\AppBundle\Entity\DpProduct $idProduct = null)
    {
        $this->idProduct = $idProduct;

        return $this;
    }

    /**
     * Get idProduct
     *
     * @return \AppBundle\Entity\DpProduct
     */
    public function getIdProduct()
    {
        return $this->idProduct;
    }

    /**
     * Set idClient
     *
     * @param \AppBundle\Entity\DpClient $idClient
     *
     * @return DpTransaction
     */
    public function setIdClient(\AppBundle\Entity\DpClient $idClient = null)
    {
        $this->idClient = $idClient;

        return $this;
    }

    /**
     * Get idClient
     *
     * @return \AppBundle\Entity\DpClient
     */
    public function getIdClient()
    {
        return $this->idClient;
    }

    /**
     * @return array
     */
    public function __toArray()
    {
        $array = array(
            'client' => $this->getIdClient()->getName(),
            'product' =>$this->getIdProduct()->getName(),
            'amount'=>$this->getAmount(),
            'price' =>$this->getPrice(),
            'time' =>$this->getTime(),
        );

        return $array;
    }
}
