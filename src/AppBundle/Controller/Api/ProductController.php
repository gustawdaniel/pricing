<?php
/**
 * Created by PhpStorm.
 * User: daniel
 * Date: 25.12.15
 * Time: 19:36
 */

namespace AppBundle\Controller\Api;


use AppBundle\Entity\DpClient;
use AppBundle\Entity\DpProduct;
use Doctrine\DBAL\Types\TimeType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Validator\Constraints\DateTime;

//| id_client       | bigint(20) unsigned | NO   | MUL | NULL    |                |
//| name            | varchar(255)        | NO   | UNI | NULL    |                |
//| description     | text                | YES  |     | NULL    |                |
//| wholesale_price | decimal(9,2)        | YES  |     | NULL    |                |
//| shop_price      | decimal(9,2)        | YES  |     | NULL    |                |
//| proposed_price  | decimal(9,2)        | YES  |     | NULL    |                |
//| last_request    | datetime            | YES  |     | NULL    |                |
//| last_update     | datetime            | YES  |     | NULL    |                |
//| period_update   | time                | YES  |     | NULL    |                |
//| period_request  | time                | YES  |     | NULL    |                |
//| id_tax          | bigint(20) unsigned | YES  | MUL | NULL    |                |


class ProductController extends Controller
{
    /**
     * @Route("/api/clients/{token}/products")
     * @Method("POST")
     */
    public function createProductAction(Request $request, $token)
    {
//        $client = new DpClient();

        $client = $this->getDoctrine()->getRepository('AppBundle:DpClient')->findOneBy(array('token'=>$token));

        if(!$client){
            return new JsonResponse(array('error'=>'this token is not exists','code'=>2),500);
        }
        $body = $request->getContent();
        $data = json_decode($body, true);

        $tax = $data['tax'];
        $taxObject = $this->getDoctrine()->getRepository('AppBundle:DpTax')->findOneBy(array('tax'=>$tax));
        if(!$taxObject){
            return new JsonResponse(array('error'=>'this tax is not exists','code'=>3),500);
        }

        $name = $data['name'];
        $name_used = $this->getDoctrine()->getRepository('AppBundle:DpProduct')->findOneBy(array(
            'name'=>$name,
            'idClient'=>$client));
        if($name_used){
            return new JsonResponse(array('error'=>'this name of product exists for this client','code'=>4),500);
        }

        $description = $data['description'];
        $wholesale_price = $data['wholesale_price'];
        $shop_price = $data['shop_price'];
        $last_request = null;
        $last_update = new \DateTime("now");
        $period_update = null;
        $period_request = null;
        $proposed_price = null;



            //defining fields
        $product = new DpProduct();

        $product->setName($name);
        $product->setIdClient($client);
        $product->setDescription($description);
        $product->setIdTax($taxObject);  // tax is double taxObject is a Object
        $product->setLastRequest($last_request);
        $product->setLastUpdate($last_update);
        $product->setShopPrice($shop_price);
        $product->setWholesalePrice($wholesale_price);
        $product->setProposedPrice($shop_price);// we propose no chane price before program calculate it

        $em = $this->getDoctrine()->getManager();
        $em->persist($product);
        $em->flush();


        $response_data = $product->__toArray();

        return new JsonResponse($response_data,201);
    }

    /**
     * Give all products for this client
     *
     * @param string $token
     *
     * @Route("/api/clients/{token}/products")
     * @Method("GET")
     * @return JsonResponse
     */
    public function showProductsAction($token)
    {
        $client = $this->getDoctrine()
            ->getRepository('AppBundle:DpClient')->findOneBy(array('token' => $token));

        if(!$client){
            return new JsonResponse(array('error'=>'this token is not exists','code'=>2),500);
        }

        $products = $this->getDoctrine()
            ->getRepository('AppBundle:DpProduct')->findBy(array('idClient' => $client));

        $response_data = [];

        foreach($products as $product){
            $product->setLastRequest(new \DateTime("now"));
            $response_data[] = $product->__toArray();
        }

//        var_dump($response_data); die;

        return new JsonResponse($response_data,201);
    }
}