<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Produs */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="produs-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'descriere')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'poza')->fileInput() ?>

    <?= $form->field($model, 'producator')->dropDownList($model->producatorList) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
