<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(ListingsTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        // запустить php artisan migrate:refresh --seed
    }
}
