<?php
  
namespace App\Http\Controllers;
  
use App\Models\Awfe;
use App\Models\Agent;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
  
class HomeController extends Controller
{
    public function index()
    {
        $data = Agent::all();
        
        $params = [
            'data' => $data,
        ];
        return view('dashboard.index', $params);
    }
}