<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProdusSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Produse';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="produs-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            //['class' => 'yii\grid\SerialColumn'],

            'id',
            'name',
            'descriere:ntext',
            [
                'format' => 'image',
                'value' => function ($data) {
                    if (empty($data->poza)) return '';
                    return 'data:image/jpeg;base64,'. base64_encode($data->poza);
                },
            ],
            'producator0.name',
        ],
    ]); ?>


</div>
