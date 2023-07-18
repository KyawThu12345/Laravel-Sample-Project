<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class PageController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return view('home', compact('products'));
    }
    public function add(Request $request, $id)
    {
        $items = array();
        if ($request->session()->has('items')) {
            $items = $request->session()->get('items');
            if (!in_array($id, $items)) {
                array_push($items, $id);
            }
        } else {
            array_push($items, $id);
        }
        $request->session()->put('items', $items);
        //$request->session()->flush(); //use to delete selected items in Cart
        $products = [];
        return view('home', compact('products'));
    }
    public function show(Request $request)
    {
        $carts = $request->session()->get('items');
        $products = array();
        if ($carts !== null && is_array($carts)) {
            for ($i = 0; $i < count($carts); $i++) {
                $product = Product::find($carts[$i]);
                array_push($products, $product);
            }
            return view('cart', compact('products'));
        } else {
            echo "<h2>No items in the cart.</h2>";
        }
        // echo json_encode($carts); //json_encode can do to solve array data error
    }
}
