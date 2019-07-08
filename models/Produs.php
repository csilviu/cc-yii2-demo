<?php

namespace app\models;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "produs".
 *
 * @property int $id
 * @property string $name
 * @property string $descriere
 * @property resource $poza
 * @property int $producator
 *
 * @property Producator $producator0
 */
class Produs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'produs';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'producator'], 'required'],
            [['descriere'], 'string'],
            [['poza'], 'file', 'skipOnEmpty' => true, 'extensions' => 'jpg, gif, png, jpeg'],
            [['producator'], 'integer'],
            [['name'], 'string', 'max' => 255],
            [['name'], 'unique'],
            [['producator'], 'exist', 'skipOnError' => true, 'targetClass' => Producator::className(), 'targetAttribute' => ['producator' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Produs',
            'descriere' => 'Descriere',
            'poza' => 'Poza',
            'producator' => 'Producator',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProducator0()
    {
        return $this->hasOne(Producator::className(), ['id' => 'producator']);
    }

    public function getPoza(){
        return '<img src="' . $this->poza . '">';
    }

    public function getProducatorList()
    { // could be a static func as well

        $models = Producator::find()->asArray()->all();

        return ArrayHelper::map($models, 'id', 'name');
    }
}
