<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;
use Str;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 0; $i < 5000; $i ++)
        {
            Post::create([
                'user_id' => rand(1,5),
                'category_id' => rand(1,30),
                'subcategory_id' => rand(1,30),
                'post_title' => Str::random(20),
                'post_description' => Str::random(200),
            ]);
        }
    }
}
