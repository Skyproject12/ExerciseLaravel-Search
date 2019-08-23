<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
if(isset($details))
    @foreach($details as $data)
    <table border="1">
        <thead>
            <tr>
            <th>{{$data->CustomerName}}</th>
            <th>{{$data->Address}}</th>
            <th>{{$data->city}}</th>
            <th>{{$data->postal_code}}</th>
            <th>{{$data->country}}</th>
            </tr>
        </thead>
    </table>
    @endforeach
</body>
</html>