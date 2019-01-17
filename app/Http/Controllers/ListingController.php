<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth; // для доступа к данным об авторизации
use App\Listing; // Модель

class ListingController extends Controller
{
    public function get_home_web(Request $request)
    {
        $data = $this->get_listing_summaries();
        $data = $this->add_meta_data($data, $request);
        return view('app', ['data' => $data]);
    }

    public function get_home_api()
    {
        $data = $this->get_listing_summaries();
        return response()->json($data);
    }
    
    public function get_listing_api(Listing $listing)
    {
        $data = $this->get_listing($listing);
        return response()->json($data);
    }
    
    public function get_listing_web(Listing $listing, Request $request)
    {
        $data = $this->get_listing($listing);
        $data = $this->add_meta_data($data, $request);
        return view('app', ['data' => $data]);
    }

    public function get_konva_web(Request $request) {
        $data['konva'] = array (0 => array ('index' => 0, 'house_name' => 'Front Street', 'pod' => array (0 => array ('pod_number' => 1, 'etazy' => array (0 => array ('etaz_number' => 1, 'kvartiry' => array (0 => array ('kv_number' => 439, 'kv_status' => 9, ), 1 => array ('kv_number' => 155, 'kv_status' => 3, ), 2 => array ('kv_number' => 518, 'kv_status' => 9, ), 3 => array ('kv_number' => 181, 'kv_status' => 10, ), ), ), 1 => array ('etaz_number' => 2, 'kvartiry' => array (0 => array ('kv_number' => 537, 'kv_status' => 2, ), 1 => array ('kv_number' => 862, 'kv_status' => 9, ), 2 => array ('kv_number' => 330, 'kv_status' => 1, ), ), ), 2 => array ('etaz_number' => 3, 'kvartiry' => array (0 => array ('kv_number' => 209, 'kv_status' => 0, ), 1 => array ('kv_number' => 354, 'kv_status' => 6, ), 2 => array ('kv_number' => 293, 'kv_status' => 2, ), 3 => array ('kv_number' => 177, 'kv_status' => 0, ), ), ), 3 => array ('etaz_number' => 4, 'kvartiry' => array (0 => array ('kv_number' => 695, 'kv_status' => 5, ), 1 => array ('kv_number' => 588, 'kv_status' => 6, ), 2 => array ('kv_number' => 954, 'kv_status' => 1, ), ), ), ), ), 1 => array ('pod_number' => 2, 'etazy' => array (0 => array ('etaz_number' => 1, 'kvartiry' => array (0 => array ('kv_number' => 530, 'kv_status' => 8, ), 1 => array ('kv_number' => 197, 'kv_status' => 7, ), 2 => array ('kv_number' => 924, 'kv_status' => 1, ), 3 => array ('kv_number' => 692, 'kv_status' => 7, ), ), ), 1 => array ('etaz_number' => 2, 'kvartiry' => array (0 => array ('kv_number' => 970, 'kv_status' => 1, ), 1 => array ('kv_number' => 407, 'kv_status' => 4, ), 2 => array ('kv_number' => 708, 'kv_status' => 0, ), 3 => array ('kv_number' => 207, 'kv_status' => 1, ), ), ), 2 => array ('etaz_number' => 3, 'kvartiry' => array (0 => array ('kv_number' => 558, 'kv_status' => 9, ), 1 => array ('kv_number' => 439, 'kv_status' => 3, ), 2 => array ('kv_number' => 550, 'kv_status' => 2, ), ), ), 3 => array ('etaz_number' => 4, 'kvartiry' => array (0 => array ('kv_number' => 852, 'kv_status' => 4, ), 1 => array ('kv_number' => 510, 'kv_status' => 10, ), 2 => array ('kv_number' => 734, 'kv_status' => 2, ), ), ), 4 => array ('etaz_number' => 5, 'kvartiry' => array (0 => array ('kv_number' => 725, 'kv_status' => 10, ), 1 => array ('kv_number' => 195, 'kv_status' => 10, ), 2 => array ('kv_number' => 898, 'kv_status' => 0, ), 3 => array ('kv_number' => 794, 'kv_status' => 4, ), ), ), ), ), ), ), );
        return view('app', ['data' => $data]);
    }

    public function get_konva_api(Request $request) {
        $data['konva'] = array (0 => array ('index' => 0, 'house_name' => 'Front Street', 'pod' => array (0 => array ('pod_number' => 1, 'etazy' => array (0 => array ('etaz_number' => 1, 'kvartiry' => array (0 => array ('kv_number' => 439, 'kv_status' => 9, ), 1 => array ('kv_number' => 155, 'kv_status' => 3, ), 2 => array ('kv_number' => 518, 'kv_status' => 9, ), 3 => array ('kv_number' => 181, 'kv_status' => 10, ), ), ), 1 => array ('etaz_number' => 2, 'kvartiry' => array (0 => array ('kv_number' => 537, 'kv_status' => 2, ), 1 => array ('kv_number' => 862, 'kv_status' => 9, ), 2 => array ('kv_number' => 330, 'kv_status' => 1, ), ), ), 2 => array ('etaz_number' => 3, 'kvartiry' => array (0 => array ('kv_number' => 209, 'kv_status' => 0, ), 1 => array ('kv_number' => 354, 'kv_status' => 6, ), 2 => array ('kv_number' => 293, 'kv_status' => 2, ), 3 => array ('kv_number' => 177, 'kv_status' => 0, ), ), ), 3 => array ('etaz_number' => 4, 'kvartiry' => array (0 => array ('kv_number' => 695, 'kv_status' => 5, ), 1 => array ('kv_number' => 588, 'kv_status' => 6, ), 2 => array ('kv_number' => 954, 'kv_status' => 1, ), ), ), ), ), 1 => array ('pod_number' => 2, 'etazy' => array (0 => array ('etaz_number' => 1, 'kvartiry' => array (0 => array ('kv_number' => 530, 'kv_status' => 8, ), 1 => array ('kv_number' => 197, 'kv_status' => 7, ), 2 => array ('kv_number' => 924, 'kv_status' => 1, ), 3 => array ('kv_number' => 692, 'kv_status' => 7, ), ), ), 1 => array ('etaz_number' => 2, 'kvartiry' => array (0 => array ('kv_number' => 970, 'kv_status' => 1, ), 1 => array ('kv_number' => 407, 'kv_status' => 4, ), 2 => array ('kv_number' => 708, 'kv_status' => 0, ), 3 => array ('kv_number' => 207, 'kv_status' => 1, ), ), ), 2 => array ('etaz_number' => 3, 'kvartiry' => array (0 => array ('kv_number' => 558, 'kv_status' => 9, ), 1 => array ('kv_number' => 439, 'kv_status' => 3, ), 2 => array ('kv_number' => 550, 'kv_status' => 2, ), ), ), 3 => array ('etaz_number' => 4, 'kvartiry' => array (0 => array ('kv_number' => 852, 'kv_status' => 4, ), 1 => array ('kv_number' => 510, 'kv_status' => 10, ), 2 => array ('kv_number' => 734, 'kv_status' => 2, ), ), ), 4 => array ('etaz_number' => 5, 'kvartiry' => array (0 => array ('kv_number' => 725, 'kv_status' => 10, ), 1 => array ('kv_number' => 195, 'kv_status' => 10, ), 2 => array ('kv_number' => 898, 'kv_status' => 0, ), 3 => array ('kv_number' => 794, 'kv_status' => 4, ), ), ), ), ), ), ), );
        return response()->json($data);
    }

    //  =============================================  PRIVATE  ===========================================
    // почитать про Larave asset() и collect()
    private function get_listing($listing)
    {
        $model = $listing->toArray();
        for($i = 1; $i <=4; $i++) {
            $model['image_' . $i] = asset(
                'images/' . $listing->id . '/Image_' . $i . '.jpg'
            );
        }
        return collect(['listing' => $model]);
    }

    private function add_meta_data($collection, $request)
    {
        return $collection->merge([
           'path' => $request->getPathInfo(),
           'auth' => Auth::check(), // флаг аутентификации
           'saved' => Auth::check() ? Auth::user()->saved : [] // сохраненные варианты
        ]);
    }

    private function get_listing_summaries()
    {
        $collection = Listing::all([
            'id', 'address', 'title', 'price_per_night'
        ]);
        $collection->transform(function($listing) {
            $listing->thumb = asset(
                'images/' . $listing->id . '/Image_1_thumb.jpg'
            );
            return $listing;
        });
        return collect(['listings' => $collection->toArray()]);
    }

}