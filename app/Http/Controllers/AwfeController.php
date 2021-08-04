<?php

namespace App\Http\Controllers;
use App\Models\Awfe;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AwfeController extends Controller
{
    public function index()
    {
        $data = Awfe::all();
        
        $params = [
            'data' => $data,
        ];
        return view('awfe.table', $params);
    }

    public function create(Request $request)
    {
        $nama           = $request->input('nama');
        $username_awfe  = $request->input('username_awfe');
        $password_awfe  = $request->input('password_awfe');
        // dd($password_awfe);
        $awfe = new Awfe;

        try {
            $awfe->create([
               'nama'           => $nama,
               'username_awfe'  => $username_awfe,
               'password_awfe'  => $password_awfe 
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
        $data = Awfe::find($id);
        $params = [
            'data' => $data,
        ];
        return view('awfe.show', $params);
        //
    }

    public function edit($id)
    {
        $data = Awfe::find($id);
        $params = [
            'data' => $data,
        ];
        return view('awfe.edit', $params);
        //
    }

    public function update(Request $request)
    {
        $nama           = $request->input('nama');
        $username_awfe  = $request->input('username_awfe');
        $password_awfe  = $request->input('password_awfe');

        $data = Awfe::find($id);

        $data->nama = $nama;
        $data->username_awfe;
        $data->password_awfe;
        $data->save();

        return redirect('awfe')->with('success','Member updated successfully'); 
    }
    public function delete(Request $request)
    {
        $id =$request->id;
        try{
            Awfe::find($id)->delete();
            return "
                <div class'alert alert-success'>Data berhasil dihapus!</div>
                <script> scrollToTop(); reload(1000); </script>";
            
        }catch(\Exception $e){
            return "<div class='alert alert-danger'>Data gagal dihapus!</div>";
        }
    }

}
