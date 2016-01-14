<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DpTax
 *
 * @ORM\Table(name="dp_tax")
 * @ORM\Entity
 */
class DpTax
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
     * @var float
     *
     * @ORM\Column(name="tax", type="decimal", precision=9, scale=2, nullable=false)
     */
    private $tax;



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
     * Set tax
     *
     * @param string $tax
     *
     * @return DpTax
     */
    public function setTax($tax)
    {
        $this->tax = $tax;

        return $this;
    }

    /**
     * Get tax
     *
     * @return string
     */
    public function getTax()
    {
        return $this->tax;
    }
}
