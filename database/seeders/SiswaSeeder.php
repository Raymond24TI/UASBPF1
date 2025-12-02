<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;

class SiswaSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('id_ID');

        // id_kelas = 1 = Kelas A
        // id_kelas = 2 = Kelas B
        // id_kelas = 3 = Kelas C

        for ($i = 1; $i <= 100; $i++) {

            $kelas = rand(1, 3); // random A/B/C

            DB::table('siswa')->insert([
                'nama_siswa'        => $faker->name(),
                'email'             => $faker->unique()->safeEmail(),
                'no_telp' => $faker->numerify('08##########'),
                'password'          => Hash::make('password123'),
                'id_kelas'          => $kelas,
                'nama_kelas'        => null, // kamu tidak pakai ini di sistem
                'alamat'            => $faker->address(),
                'tempat_tgl_lahir'  => $faker->date(),
                'nama_wali'         => $faker->name(),
            ]);
        }
    }
}
