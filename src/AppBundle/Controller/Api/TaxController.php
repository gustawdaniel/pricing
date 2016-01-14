<?php
/**
 * Created by PhpStorm.
 * User: daniel
 * Date: 25.12.15
 * Time: 20:53
 */

namespace AppBundle\Controller\Api;


use AppBundle\Entity\DpTax;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;

class TaxController extends Controller
{
    /**
     * @param Request $request
     * @Route("/api/taxes")
     * @Method("POST")
     * @return JsonResponse
     */
    public function createTaxAction(Request $request)
    {
        $body = $request->getContent();
        $data = json_decode($body,true);
        $tax = $data['tax'];

        $taxExists = $this->getDoctrine()->getRepository('AppBundle:DpTax')->findOneBy(array('tax'=>$tax));

        if($taxExists){
            return new JsonResponse(array('error'=>'this tax exists','code'=>5),500);
        }

        $taxObject = new DpTax();
        $taxObject->setTax($tax);

        $em=$this->getDoctrine()->getManager();
        $em->persist($taxObject);
        $em->flush();

        return new JsonResponse($data,201);
    }

    /**
     * @Route("/api/taxes")
     * @Method("GET")
     * @return JsonResponse
     */
    public function showTaxAction()
    {
        $taxes = $this->getDoctrine()->getRepository('AppBundle:DpTax')->findAll();

//        var_dump($taxes);

        $response =[];
        foreach($taxes as $tax){
            $response[] = $tax->getTax();
        }

        return new JsonResponse($response, 200);
    }
}
