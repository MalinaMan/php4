<?php

namespace Controller;

use Framework\Controller;
use Framework\Request;
use Framework\Router;
use Framework\Session;
use Model\Form\FeedbackForm;
use Model\Entity\Feedback;
use Model\Repository\FeedbackRepository;
use Model\Entity\Subscribe;
use Model\Repository\SubscribeRepository;

class DefaultController extends Controller
{
    const FLAG_SUBSCRIBE_SUCCESS = 'timer_subscribe_success';

    public function indexAction(Request $request)
    {
        return $this->render('index.html.twig');
    }

    public function subscribeAction(Request $request)
    {
        if ($request->isPost()) {
            $subscribe = new Subscribe(
                $request->post('email'),
                $request->post('name'),
                $request->post('lastname')
            );
            
            SubscribeRepository::save($subscribe);
            
            Session::set(self::FLAG_SUBSCRIBE_SUCCESS, true);
            Session::setFlash('Subscription successfully added');

            $this
                ->container
                ->get('router')
                ->redirect('/');
        }

        return $this->render('index.html.twig');
    }
    
    public function feedbackAction(Request $request)
    {
        $form = new FeedbackForm(
            $request->post('email'),  // $_POST['email']
            $request->post('message')
        );
        
        if ($request->isPost()) {
            if ($form->isValid()) {
                
                $feedback = new Feedback(
                    $form->email,
                    $form->message
                );
                
                FeedbackRepository::save($feedback);
                // $repo->save
                
                Session::setFlash('Saved');
                
                $this
                    ->container
                    ->get('router')
                    ->redirect('/index.php?controller=default&action=feedback')
                ;
                
            }
            
            Session::setFlash('Invalid form');
        }
            
        return $this->render('feedback.phtml', ['form' => $form]);
    }

}