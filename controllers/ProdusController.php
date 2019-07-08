<?php

namespace app\controllers;

use Yii;
use app\models\Produs;
use app\models\ProdusSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProdusController implements the CRUD actions for Produs model.
 */
class ProdusController extends Controller
{

    /**
     * Lists all Produs models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProdusSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $model = new Produs();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
        ]);
    }

    /**
     * Finds the Produs model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Produs the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Produs::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

}
