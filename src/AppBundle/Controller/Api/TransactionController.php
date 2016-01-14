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
use AppBundle\Entity\DpTransaction;
use Doctrine\DBAL\Types\TimeType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Validator\Constraints\DateTime;

//| id         | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
//| id_product | bigint(20) unsigned | NO   | MUL | NULL    |                |
//| id_client  | bigint(20) unsigned | NO   | MUL | NULL    |                |
//| time       | datetime            | NO   |     | NULL    |                |
//| amount     | bigint(20)          | NO   |     | NULL    |                |
//| price      | decimal(9,2)        | NO   |     | NULL    |                |



class TransactionController extends Controller
{
    /**
     * @Route("/api/clients/{token}/transactions")
     * @Route("/api/clients/{token}/products/{name}/transactions")
     * @Method("POST")
     */
    public function createTransactionAction(Request $request, $token, $name = null)
    {
//        $client = new DpClient();

        $client = $this->getDoctrine()->getRepository('AppBundle:DpClient')->findOneBy(array('token'=>$token));

        // if client correct
        if(!$client){
            return new JsonResponse(array('error'=>'this token is not exists','code'=>2),500);
        }

        // extract data from body
        $body = $request->getContent();
        $data = json_decode($body, true);

        // if product correct (two possible method of routing)
        if($name){
            $product_name = $name;
        } else {
            $product_name = $data['product_name'];
        }
        $product = $this->getDoctrine()->getRepository('AppBundle:DpProduct')->findOneBy(array(
            'name'=>$product_name,
            'idClient'=>$client));
        if(!$product){
            return new JsonResponse(array('error'=>'this name of product is not exists for this client','code'=>4),500);
        }

        // nex extracting data
        $amount = $data['amount'];
        $price = $data['price'];
        $time = $data['time'];

//        return new JsonResponse($time,201);

        //create and fill transaction
        $transaction = new DpTransaction();
        $transaction->setIdClient($client);
        $transaction->setIdProduct($product);
        $transaction->setAmount($amount);
        $transaction->setPrice($price);
        $transaction->setTime(new \DateTime($time));

//        return new JsonResponse($transaction->getTime(),201);
        $em = $this->getDoctrine()->getManager();
        $em->persist($transaction);
        $em->flush();


        $response_data = $transaction->__toArray();

        return new JsonResponse($response_data,201);
    }

    /**
     * @param string $token
     * @param string $name - name of product can be set in body for post but there can't be
     * @Route("/api/clients/{token}/transactions") - any transactions
     * @Route("/api/clients/{token}/products/{name}/transactions") - transactions for this name of product
     * @Method("GET")
     * @return JsonResponse
     */
    public function showTransactionAction($token, $name = null)
    {
        $client = $this->getDoctrine()->getRepository('AppBundle:DpClient')->findOneBy(array('token'=>$token));

        if(!$client){
            return new JsonResponse(array('error'=>'this token is not exists','code'=>2),500);
        }

        //if name is signed we check if this client have this product
        if($name){
            $product = $this->getDoctrine()->getRepository('AppBundle:DpProduct')->findOneBy(array(
                'name'=>$name,
                'idClient'=>$client
            ));

            if(!$product){
                return new JsonResponse(array('error'=>'this name of product is not exists for this client','code'=>4),500);
            }

            $transactions = $this->getDoctrine()->getRepository('AppBundle:DpTransaction')->findBy(array(
                'idClient' => $client,
                'idProduct'=>$product
            ));
        } else {
            // or we search any transaction for this client
            $transactions = $this->getDoctrine()->getRepository('AppBundle:DpTransaction')->findBy(array(
                'idClient' => $client
            ));
        }






        $response_data =[];
        foreach ($transactions as $transaction) {
            $response_data[] = $transaction->__toArray();
        }


        return new JsonResponse($response_data,201);
    }
}