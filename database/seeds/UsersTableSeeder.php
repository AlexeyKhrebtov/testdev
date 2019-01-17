<?php

use Illuminate\Database\Seeder;
use App\User; // нам понадобится модель пользователя
use Illuminate\Support\Facades\Hash; // а так же хеширование пароля

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
			'name' => 'Frankie Barrow',
			'email' => 'alexey'.'mega'.'ex@gmail.com',
			'password' => Hash::make('test'),
			'saved' => [1,5,7,9]
		]);
    }
}
