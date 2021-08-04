<?php

namespace App\Http\Controllers;

use App\Models\Agent;
use App\Models\TL;
use App\Models\SiteAwal;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SiteAwalController extends Controller
{
    public function index()
    {
        $data = SiteAwal::all();
        
        $params = [
            'data' => $data,
        ];
        return view('site_awal.table', $params);
    }

    public function create(Request $request)
    {
        $nama_site           = $request->input('nama_site');

        $site_awal = new SiteAwal();

        try {
            $awfe->create([
               'nama_site'           => $nama_site,
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
        $data = SiteAwal::find($id);
        $params = [
            'data' => $data,
        ];
        return view('site_awal.show', $params);
        //
    }

    public function edit($id)
    {
        $data = SiteAwal::find($id);
        $params = [
            'data' => $data,
        ];
        return view('site_awal.edit', $params);
        //
    }

    public function update(Request $request)
    {
        $nama_site             = $request->input('nama_site');

        $data = SiteAwal::find($id);

        $data->nama_site         = $nama_site;
        
        $data->save();

        return redirect('site_awal')->with('success','Member updated successfully'); 
    }

    public function delete(Request $request)
    {
        $id =$request->id;
        try{
            SiteAwal::find($id)->delete();
            return "
                <div class'alert alert-success'>Data berhasil dihapus!</div>
                <script> scrollToTop(); reload(1000); </script>";
            
        }catch(\Exception $e){
            return "<div class='alert alert-danger'>Data gagal dihapus!</div>";
        }
    }
}
