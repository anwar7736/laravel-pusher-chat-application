<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Subcategory;

class SubcategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            Subcategory::create([
                'category_id' => rand(1,30),
                'subcategory_name' => $this->faker->name(),
            ])
        ];
    }
}
