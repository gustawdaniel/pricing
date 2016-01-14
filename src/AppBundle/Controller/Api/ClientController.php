<?php

/**
 * Created by PhpStorm.
 * User: daniel
 * Date: 19.12.15
 * Time: 17:01
 */
namespace AppBundle\Controller\Api;

use AppBundle\Entity\DpClient;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

class ClientController extends Controller
{
    /**
     * Creating new client
     *
     * @Route("/api/clients")
     * @Method("POST")
     */
    public function createClientAction(Request $request)
    {
        $client = new DpClient();

        $body = $request->getContent();
        $data = json_decode($body, true);

        $name = $data['name'];
        $url = $data['url'];
        $state = $data['state'];

        $name_used = $this->getDoctrine()->getRepository('AppBundle:DpClient')->findOneBy(array('name'=>$name));

        if($name_used){
            return new JsonResponse(array('error'=>'this name exists','code'=>1),500);
        } else {

            //defining fields
            $client->setName($name);
            $client->setState($state);//problem with state out of range (enum)
            $client->setUrl($url);
            $client->setToken(md5(uniqid($name, true)));//uniq on base uniq name
            $client->setStartTime(new \DateTime("now"));

            $em = $this->getDoctrine()->getManager();
            $em->persist($client);
            $em->flush();
        }

        $response_data = $client->__toArray();

        return new JsonResponse($response_data,201);
    }

    /**
     * @Route("/api/clients/{token}")
     * @Method("GET")
     */
    public function showClientAction(Request $request, $token)
    {
        $client = $this->getDoctrine()->getRepository('AppBundle:DpClient')->findOneBy(array('token'=>$token));

        if(!$client){
            return new JsonResponse(array('error'=>'client with this token is not exist','code'=>2),500);
        }

        $response_data = $client->__toArray();

        return new JsonResponse($response_data,200);
    }
}