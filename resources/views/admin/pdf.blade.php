<html>

<h1>Online Medicine Management</h1>


<head>




</head>


<body>
<h1>Order Details</h1>
Delivery Status: <h1>{{$order->delivery_status}}</h1>
Customer Name: <h3>{{$order->name}}</h3>
Customer Email:<h3>{{$order->email}}</h3>
Customer Phone: <h3>{{$order->phone}}</h3>    
Customer Address: <h3>{{$order->address}}</h3>
Customer Id: <h3>{{$order->user_id}}</h3>
Product Name: <h3>{{$order->product_title}}</h3> 
Product Price: <h3>BDT {{$order->price}}</h3>
Product Quantity: <h3>{{$order->quantity}}</h3>
Product ID: <h3>{{$order->product_id}}</h3> 
<br>
<img src="product/{{$order->image}}" height="250" width="450">


</body>
</html>