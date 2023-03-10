<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Brand;

use App\Models\Product;
use App\Models\Order;
use PDF;

class AdminController extends Controller
{
   public function view_brand()
   {
      $data = brand::all();
    return view('admin.brand',compact('data'));
   }

   public function add_brand(Request $request)
   {
    $data = new brand;
    $data-> brand_name= $request->brand;
    $data->save();
    return redirect()->back()->with('message','Brand Added Successfully');
   }


   public function delete_brand($id)
   {
      $data=brand::find($id);
      $data->delete();
      return redirect()->back()->with('message','Brand Deleted Successfully');
   }

   public function view_product()
   {
      $brand= brand::all(); 
      return view('admin.product',compact('brand'));
   }

   public function add_product(Request $request)
   {
    $product = new product;
    $product->title=$request->title;
    $product->description=$request->description;
    $product->price=$request->price;
    $product->quantity=$request->quantity;
    $product->discount_price=$request->dis_price;
    $product->brand=$request->brand;
    $image=$request->image;
    
    $imagename=time().'.'.$image->getClientOriginalExtension();
    
    $request->image->move('product',$imagename);
   
    $product->image=$imagename;

    $product->save();
    return redirect()->back()->with('message','Product Added Successfully');
   }

   public function show_product()
   {
      $product = product::all();
      return view('admin.show_product',compact('product'));
   }


   public function delete_product($id)
   {
      $product=product::find($id);

      $product->delete();
      return redirect()->back()->with('message','Product Deleted Successfully');
   }

   public function update_product($id)
   {
      $product=product::find($id);
      $brand= brand::all(); 

      return view('admin.update_product',compact('product','brand'));
   }

   public function update_product_confirm(Request $request,$id)
   {
      $product=product::find($id);
      $product->title=$request->title;
      $product->description=$request->description;
      $product->price=$request->price;
      $product->quantity=$request->quantity;
      $product->discount_price=$request->dis_price;
      $product->brand=$request->brand;

      $image=$request->image; 
      if($image){
         $imagename=time().'.'.$image->getClientOriginalExtension();
    
         $request->image->move('product',$imagename);
         
         $product->image=$imagename;
      }
      
      $product->save();

      return redirect('/show_product')->with('message','Product Updated Successfully');
   }


public function order()
{
   $order=order::all();
   return view('admin.order',compact('order'));
}

public function delivered($id)
{
   $order=order::find($id);
   $order->delivery_status='delivered';
   $order->payment_status='Paid';
   $order->save();
   return redirect()->back();
}

public function print_pdf($id)
{
   $order=order::find($id);
   $pdf=PDF::loadView('admin.pdf',compact('order'));
   return $pdf->download('order_details.pdf');
}

public function searchdata(Request $request)
{
   $searchText = $request->search;
   $order=order::where('name','LIKE',"%$searchText")->orWhere('phone','LIKE',"%$searchText")->orWhere('product_title','LIKE',"%$searchText")->get();
   return view('admin.order',compact('order'));
}


}
