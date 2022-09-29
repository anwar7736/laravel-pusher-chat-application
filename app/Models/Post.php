<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    
    protected $fillable = [
                        'user_id', 
                        'category_id', 
                        'subcategory_id', 
                        'post_title', 
                        'post_description', 
                        'post_cover_photo'
                    ];



    public function categories()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function subcategories()
    {
        return $this->belongsTo(Subcategory::class, 'subcategory_id');
    }

    public function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    } 
    
    public function likes()
    {
        return $this->hasMany(Like::class);
    }   
    
    public function comments()
    {
        return $this->hasMany(Comment::class, 'post_id',);
    }

    
}
