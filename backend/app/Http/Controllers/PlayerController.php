<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Player;
use Illuminate\Support\Facades\Log;

class PlayerController extends Controller {

    public function getAll() {
        $players = PLayer::join('clubs', 'clubs.id', '=', 'club_id')
            ->select('clubs.id', 'clubs.name', 'player_name', 'img_player', 'age', 'position')
            ->orderBy('id')
            ->get();
        return response()->json([
            'results' => $players
        ]);
    }

    public function getAllFromClub($club_id) {
        $players = Player::join('clubs', 'clubs.id', '=', 'club_id')
            ->select('clubs.id', 'clubs.name', 'player_name', 'img_player', 'age', 'position')
            ->where('clubs.id', '=', $club_id) 
            ->get();

        return response()->json([
            'results' => $players
        ]);
    }

    public function getOne($id) {
        $player = PLayer::join('clubs', 'clubs.id', '=', 'club_id')
            ->select('clubs.id', 'clubs.name', 'player_name', 'img_player', 'age', 'position')
            ->where('players.id', '=', $id)
            ->get();
        return response()->json($player);
    }
 
    // public function store(Request $request) {
    //     Log::info('Players are saved', $request->all());

    //     $this->validate($request, [
    //         'club_id' => 'required',
    //         'player_name' => 'required',
    //         'img_player' => 'required',
    //         'age' => 'required',
    //         'position' => 'required'
    //     ]);

    //     $players = Player::create($request->all());
    //     return response()->json($players, 201);
    // }
}


