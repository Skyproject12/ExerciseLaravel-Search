<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
use App\tbl_customer;

class LiveSearch extends Controller
{
    function index()
    {
     return view('live_search');
    }

    function action(Request $request)
    {
     if($request->ajax())
     {
      $output = '';
      $query = $request->get('query');
      if($query != '')
      {
       $data=tbl_customer::where('CustomerName', 'like', '%'.$query.'%')
         ->orWhere('Address', 'like', '%'.$query.'%')
         ->orWhere('city', 'like', '%'.$query.'%')
         ->orWhere('postal_code', 'like', '%'.$query.'%')
         ->orWhere('country', 'like', '%'.$query.'%')
         ->orderBy('CustomerId', 'desc')->get();
      }
      else
      {
       $data =tbl_customer::orderBy('CustomerId', 'desc')
         ->get();
      }
      $total_row = $data->count();
      if($total_row > 0)
      {
       foreach($data as $row)
       {
        
        $output .= '
        <tr>
         <td>'.$row->CustomerName.'</td>
         <td>'.$row->Address.'</td>
         <td>'.$row->city.'</td>
         <td>'.$row->postal_code.'</td>
         <td>'.$row->country.'</td>
        </tr>
        ';
       }
      }
      else
      {
       $output = '
       <tr>
        <td align="center" colspan="5">No Data Found</td>
       </tr>
       ';
      }
      $data = array(
       'table_data'  => $output,
       'total_data'  => $total_row
      );

      echo json_encode($data);
     }
    }
}
