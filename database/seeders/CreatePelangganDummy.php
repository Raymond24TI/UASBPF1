<?php

namespace Database\Seeders;

use Faker\Factory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class CreatePelangganDummy extends Seeder
{
    public function run(): void
    {
        $faker = Factory::create();

        // Ambil semua id kelas yg valid
        $kelasIDs = DB::table('kelas')->pluck('id_kelas')->toArray();

        foreach (range(1, 100) as $index) {
            DB::table('guru')->insert([
                'nama_guru'         => $faker->name(),
                'email'             => $faker->unique()->safeEmail(),
                'no_telp'           => $faker->phoneNumber(),
                'password'          => Hash::make('password123'),
                'id_kelas'          => $faker->randomElement($kelasIDs), // ambil yang valid
                'alamat'            => $faker->address(),
                'tempat_tgl_lahir'  => $faker->date(),
            ]);
        }
    }
}
