<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "producator".
 *
 * @property int $id
 * @property string $name
 *
 * @property Produs[] $produses
 */
class Producator extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'producator';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'name'], 'required'],
            [['id'], 'integer'],
            [['name'], 'string', 'max' => 255],
            [['name'], 'unique'],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Producator',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduses()
    {
        return $this->hasMany(Produs::className(), ['producator' => 'id']);
    }
}
