<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Our Projects</title>
    <style>
        body{
            background-color: #4c5151;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp"%>
<div class="card-body m-3 p-5">
    <h1 class="card-title text-center fw-bold" style="color:lightskyblue">Glycèmie des patients</h1>
</div>

<div class="row gap-5 mb-5 m-0">

</div>
<script>
    let home = document.getElementById('home');
    let project=document.getElementById('project');
    home.id="";
    project.id="active";
</script>
</body>
</html>

