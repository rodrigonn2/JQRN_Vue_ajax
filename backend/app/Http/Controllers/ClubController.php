<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Club;


class ClubController extends Controller {
 
     public function getAll() {
         $clubs = Club::all();
         return response()->json($clubs);
     }

     public function getOne($id) {
        $club = Club::findOrFail($id);
        return response()->json($club);
    }
}
