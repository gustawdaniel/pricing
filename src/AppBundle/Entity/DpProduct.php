<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DpProduct
 *
 * @ORM\Table(name="dp_product", uniqueConstraints={@ORM\UniqueConstraint(name="name", columns={"name"})}, indexes={@ORM\Index(name="id_tax", columns={"id_tax"}), @ORM\Index(name="id_client", columns={"id_client"})})
 * @ORM\Entity
 */
class DpProduct
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
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text", length=65535, nullable=true)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="wholesale_price", type="decimal", precision=9, scale=2, nullable=true)
     */
    private $wholesalePrice;

    /**
     * @var string
     *
     * @ORM\Column(name="shop_price", type="decimal", precision=9, scale=2, nullable=true)
     */
    private $shopPrice;

    /**
     * @var string
     *
     * @ORM\Column(name="proposed_price", type="decimal", precision=9, scale=2, nullable=true)
     */
    private $proposedPrice;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="last_request", type="datetime", nullable=true)
     */
    private $lastRequest;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="last_update", type="datetime", nullable=true)
     */
    private $lastUpdate;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="period_update", type="time", nullable=true)
     */
    private $periodUpdate;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="period_request", type="time", nullable=true)
     */
    private $periodRequest;

    /**
     * @var \DpTax
     *
     * @ORM\ManyToOne(targetEntity="DpTax")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_tax", referencedColumnName="id")
     * })
     */
    private $idTax;

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
     * Set name
     *
     * @param string $name
     *
     * @return DpProduct
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return DpProduct
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set wholesalePrice
     *
     * @param string $wholesalePrice
     *
     * @return DpProduct
     */
    public function setWholesalePrice($wholesalePrice)
    {
        $this->wholesalePrice = $wholesalePrice;

        return $this;
    }

    /**
     * Get wholesalePrice
     *
     * @return string
     */
    public function getWholesalePrice()
    {
        return $this->wholesalePrice;
    }

    /**
     * Set shopPrice
     *
     * @param string $shopPrice
     *
     * @return DpProduct
     */
    public function setShopPrice($shopPrice)
    {
        $this->shopPrice = $shopPrice;

        return $this;
    }

    /**
     * Get shopPrice
     *
     * @return string
     */
    public function getShopPrice()
    {
        return $this->shopPrice;
    }

    /**
     * Set proposedPrice
     *
     * @param string $proposedPrice
     *
     * @return DpProduct
     */
    public function setProposedPrice($proposedPrice)
    {
        $this->proposedPrice = $proposedPrice;

        return $this;
    }

    /**
     * Get proposedPrice
     *
     * @return string
     */
    public function getProposedPrice()
    {
        return $this->proposedPrice;
    }

    /**
     * Set lastRequest
     *
     * @param \DateTime $lastRequest
     *
     * @return DpProduct
     */
    public function setLastRequest($lastRequest)
    {
        $this->lastRequest = $lastRequest;

        return $this;
    }

    /**
     * Get lastRequest
     *
     * @return \DateTime
     */
    public function getLastRequest()
    {
        return $this->lastRequest;
    }

    /**
     * Set lastUpdate
     *
     * @param \DateTime $lastUpdate
     *
     * @return DpProduct
     */
    public function setLastUpdate($lastUpdate)
    {
        $this->lastUpdate = $lastUpdate;

        return $this;
    }

    /**
     * Get lastUpdate
     *
     * @return \DateTime
     */
    public function getLastUpdate()
    {
        return $this->lastUpdate;
    }

    /**
     * Set periodUpdate
     *
     * @param \DateTime $periodUpdate
     *
     * @return DpProduct
     */
    public function setPeriodUpdate($periodUpdate)
    {
        $this->periodUpdate = $periodUpdate;

        return $this;
    }

    /**
     * Get periodUpdate
     *
     * @return \DateTime
     */
    public function getPeriodUpdate()
    {
        return $this->periodUpdate;
    }

    /**
     * Set periodRequest
     *
     * @param \DateTime $periodRequest
     *
     * @return DpProduct
     */
    public function setPeriodRequest($periodRequest)
    {
        $this->periodRequest = $periodRequest;

        return $this;
    }

    /**
     * Get periodRequest
     *
     * @return \DateTime
     */
    public function getPeriodRequest()
    {
        return $this->periodRequest;
    }

    /**
     * Set idTax
     *
     * @param \AppBundle\Entity\DpTax $idTax
     *
     * @return DpProduct
     */
    public function setIdTax(\AppBundle\Entity\DpTax $idTax = null)
    {
        $this->idTax = $idTax;

        return $this;
    }

    /**
     * Get idTax
     *
     * @return \AppBundle\Entity\DpTax
     */
    public function getIdTax()
    {
        return $this->idTax;
    }

    /**
     * Set idClient
     *
     * @param \AppBundle\Entity\DpClient $idClient
     *
     * @return DpProduct
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
     * array that should be send back
     * @return array
     */
    public function __toArray()
    {
        $array = array(
            'name' => $this->getName(),
            'description' => $this->getDescription(),
            'client_name' => $this->getIdClient()->getName(),
            'tax'=>$this->getIdTax()->getTax(),
            'last_request' => $this->getLastRequest(),
            'last_update'=>$this->getLastUpdate(),
            'period_request'=>$this->getPeriodRequest(),
            'period_update'=>$this->getPeriodUpdate(),
            'proposed_price'=>$this->getProposedPrice(),
            'wholesale_price'=>$this->getWholesalePrice(),
            'shop_price'=>$this->getShopPrice()
        );

        return $array;
    }
}
