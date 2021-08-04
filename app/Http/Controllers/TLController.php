<?php

namespace App\Http\Controllers;

use App\Models\Agent;
use App\Models\TL;
use App\Models\SiteAwal;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TLController extends Controller
{
    public function index()
    {
        $data = TL::all();
        
        $params = [
            'data' => $data,
        ];
        return view('tl.table', $params);
    }

    public function create(Request $request)
    {
        $nama                   = $request->input('nama');
        $nik_csdm               = $request->input('nik_csdm');
        $jml_postpaid_agent     = $request->input('jml_postpaid_agent');
        $jml_prepaid_agent      = $request->input('jml_prepaid_agent');
        $jml_gender_agent_L     = $request->input('jml_gender_agent_L');
        $jml_gender_agent_P     = $request->input('jml_gender_agent_P');
        $total                  = $request->input('total');

        $agent      = new Agent;
        $TL         = new TL;
        $site_awal  = new SiteAwal;

        try {
            $TL->create([
                'nama'                  => $nama,
                'nik_csdm'              => $nik_csdm,
                'jml_postpaid_agent'    => 0,
                'jml_prepaid_agent'     => 0,
                'jml_gender_agent_L'    => 0,
                'jml_gender_agent_P'    => 0,
                'total'                 => $jml_gender_agent_L + $jml_gender_agent_P ,
            ]);
            return "<div class='alert alert-success'>Data Sukses Ditambahkan!</div>
                    <script> scrollToTop(); reload(1000); </script>";
        } catch (\Throwable $th) {
            return "<div class='alert alert-danger'>Data Gagal Ditambahkan!</div>
                    <script> scrollToTop(); reload(1000); </script>";
        }
    }

    public function show($id)
    {
        $data = TL::find($id);
        $params = [
            'data' => $data,
        ];
        return view('tl.show', $params);
        //
    }

    public function edit($id)
    {
        $data = TL::find($id);
        $params = [
            'data' => $data,
        ];
        return view('tl.edit', $params);
        //
    }

    public function update(Request $request)
    {
        $nama                   = $request->input('nama');
        $nik_csdm               = $request->input('nik_csdm');

        $data = TL::find($id);

        $data->nama                 = $nama;
        $data->nik_csdm             = $nik_csdm;
        $data->save();

        return redirect('tl')->with('success','Member updated successfully'); 
    }

    public function delete(Request $request)
    {
        $id =$request->id;
        try{
            TL::find($id)->delete();
            return "
                <div class'alert alert-success'>Data berhasil dihapus!</div>
                <script> scrollToTop(); reload(1000); </script>";
            
        }catch(\Exception $e){
            return "<div class='alert alert-danger'>Data gagal dihapus!</div>";
        }
    }
}
