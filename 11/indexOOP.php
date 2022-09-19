<?php
class Animal
{
    protected string $color = '';
    }
class Fish extends Animal
{
    public function __construct($color)
    {
        $this->$color = $color;
    }
    public function getColor():string{
        return $this->color;
    }
}
$shark = new Fish('Black');
echo $shark->getColor();
$golderFish = new Fish('Golden');
echo $golderFish->getColor();
