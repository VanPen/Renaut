<?php


namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Templating\EngineInterface;
use Symfony\Component\HttpFoundation\Response;

class GridController extends AbstractController
{

    /** @var EngineInterface */
    private $templatingEngine;

    public function __construct(EngineInterface $templatingEngine)
    {
        $this->templatingEngine = $templatingEngine;
    }

    /**
     * @return Response
     */
    public function indexAction():Response
    {
        $haha = 'haha';

        return $this->templatingEngine->render('@SyliusShop/Product/show.html.twig' , ['haha' => $haha]);
    }
}
