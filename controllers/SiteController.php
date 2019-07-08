<?php

namespace app\controllers;

use app\models\Producator;
use app\models\Produs;
use Yii;
use yii\web\Controller;
use yii\web\Response;
use app\models\ContactForm;

class SiteController extends Controller
{

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->redirect('/produs/index');
    }

}
