<?php

namespace App\Http\Controllers;
use App\Models\Agent;
use App\Models\TL;
use App\Models\SiteAwal;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\AgentResource;
class AgentController extends Controller
{
    public function index()
    {
        $data = Agent::all();
        
        $params = [
            'data' => $data,
        ];
        return view('agent.table', $params)->with('agent',AgentResource::collection($data));
        //return response([ 'agent' => AgentResource::collection($data), 'message' => 'Retrieved successfully'], 200);
    }
    public function getAll(){
        $data = Agent::all();
        
        $params = [
            'data' => $data,
        ];
        return response()->json($params);
    }
    public function create(Request $request)
    {
        $segmen           = $request->input('segmen');
        $login_avaya      = $request->input('login_avaya');
        $nik_csdm         = $request->input('nik_csdm');
        $perner           = $request->input('perner');
        $nama             = $request->input('nama');
        $gender           = $request->input('gender');
        $id_site_awal     = $request->input('site_awal');
        $id_TL            = $request->input('tl');
        $no_telkomsel     = $request->input('no_telkomsel');
        $no_wa            = $request->input('no_wa');
        $ket              = $request->input('ket');

        $agent           = new Agent;
        $data_tl         = TL::find($id_TL);
        // dd($request->all());
        try {
            $agent->create([
                'segmen'         => $segmen,
                'login_avaya'    => $login_avaya,
                'nik_csdm'       => $nik_csdm,
                'perner'         => $perner,
                'nama'           => $nama,
                'gender'         => $gender,
                'id_site_awal'   => $id_site_awal,
                'id_TL'          => $id_TL,
                'no_telkomsel'   => $no_telkomsel,
                'no_wa'          => $no_wa,
                'ket'            => $ket 
            ]);

            if($segmen == 'PREPAID'){
                $data_tl->jml_prepaid_agent = $data_tl->jml_prepaid_agent + 1;
                $data_tl->save();
            }
            else if($segmen == 'POSTPAID'){
                $data_tl->jml_postpaid_agent = $data_tl->jml_postpaid_agent + 1;
                $data_tl->save();
            }

            if($gender == 'L'){
                $data_tl->jml_gender_agent_L = $data_tl->jml_gender_agent_L + 1;
                $data_tl->save();
            }
            else if ($gender == 'P') {
                $data_tl->jml_gender_agent_P = $data_tl->jml_gender_agent_P + 1;
                $data_tl->save();
            }

            $data_tl->total = $data_tl->jml_gender_agent_L + $data_tl->jml_gender_agent_P;
            $data_tl->save();

            return "<div class='alert alert-success'>Data Sukses Ditambahkan!</div>
                    <script> scrollToTop(); reload(1000); </script>";
        } catch (\Throwable $th) {
            return "<div class='alert alert-danger'>Data Gagal Ditambahkan!</div>
                    <script> scrollToTop(); reload(1000); </script>";
        }
    }

    public function show($id)
    {
        $data = Agent::find($id);
        $params = [
            'data' => $data,
        ];
        return view('agent.show', $params);
        //
    }

    public function edit($id)
    {
        $data = Agent::find($id);
        
        $params = [
            'data' => $data,
        ];
        return view('agent.edit', $params);
        //
    }

    public function update(Request $request)
    {
        $segmen           = $request->input('segmen');
        $login_avaya      = $request->input('login_avaya');
        $nik_csdm         = $request->input('nik_csdm');
        $perner           = $request->input('perner');
        $nama             = $request->input('nama');
        $gender           = $request->input('gender');
        $id_site_awal     = $request->input('id_site_awal');
        $id_TL            = $request->input('id_TL');
        $no_telkomsel     = $request->input('no_telkomsel');
        $no_wa            = $request->input('no_wa');
        $ket              = $request->input('ket');

        $data = agent::find($id);
        $data_tl = TL::find($id_TL);

        if($segmen == 'PREPAID'){
            if($data->segmen != 'PREPAID'){
                $data_tl->jml_prepaid_agent = $data_tl->jml_prepaid_agent + 1;
                $data_tl->jml_postpaid_agent = $data_tl->jml_postpaid_agent - 1;
                $data_tl->save();
            }
        }
        else if($segmen == 'POSTPAID'){
            if($data->segmen != 'POSTPAID'){
                $data_tl->jml_postpaid_agent = $data_tl->jml_postpaid_agent + 1;
                $data_tl->jml_prepaid_agent = $data_tl->jml_prepaid_agent - 1;
                $data_tl->save();
            }
        }

        if($gender == 'laki-laki'){
            if($data->gender != 'laki-laki'){
                $data_tl->jml_gender_agent_L = $data_tl->jml_gender_agent_L + 1;
                $data_tl->jml_gender_agent_L = $data_tl->jml_gender_agent_L - 1;
                $data_tl->save();
            }
        }
        else if ($gender == 'perempuan') {
            if($data->gender != 'perempuan'){
                $data_tl->jml_gender_agent_P = $data_tl->jml_gender_agent_P + 1;
                $data_tl->jml_gender_agent_P = $data_tl->jml_gender_agent_P - 1;
                $data_tl->save();
            }
        }

        $data->segmen       = $segmen;
        $data->login_avaya  = $login_avaya;
        $data->nik_csdm     = $nik_csdm;
        $data->perner       = $perner;
        $data->nama         = $nama;
        $data->gender       = $gender;
        $data->id_site_awal = $id_site_awal;
        $data->id_TL        = $id_TL;
        $data->no_telkomsel = $no_telkomsel;
        $data->no_wa        = $no_wa;

        $data->save();

        return redirect('agent')->with('success','Member updated successfully'); 
    }

    public function delete(Request $request)
    {
        $id =$request->id;
        try{
            Agent::find($id)->delete();
            return "
                <div class'alert alert-success'>Data berhasil dihapus!</div>
                <script> scrollToTop(); reload(1000); </script>";
            
        }catch(\Exception $e){
            return "<div class='alert alert-danger'>Data gagal dihapus!</div>";
        }
    }

    public function searchNameTL(Request $request){
        $data = [];

        $data = DB::table("tl")
            ->select("id","nama")
            ->get();

        if($request->has('q')){
            $search = $request->q;
            $data = DB::table("tl")
                    ->select("id","nama")
                    ->where('nama','LIKE',"%$search%")
                    ->get();
        }

        return response()->json($data);
    }

    public function searchSiteAwal(Request $request){
        $data = [];

        $data = DB::table("site_awal")
            ->select("id","nama_site")
            ->get();
            
        if($request->has('q')){
            $search = $request->q;
            $data = DB::table("site_awal")
                    ->select("id","nama_site")
                    ->where('nama_site','LIKE',"%$search%")
                    ->get();
        }

        return response()->json($data);
    }
}
