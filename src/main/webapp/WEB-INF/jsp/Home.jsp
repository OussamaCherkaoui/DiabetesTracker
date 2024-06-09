<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Home</title>
    <style>
        #home{
            color:blue;
        }
        body{
            background-color: #CADBC0;
        }
        .horizontal-scroll-container {
            display: flex;
            overflow: auto; /* Hide the overflow to show only one patient at a time */
            scroll-behavior: smooth; /* Smooth scrolling */
            width: 100%;
        }

        .horizontal-scroll-container .card {
            flex: 0 0 auto;
            width: 100%; /* Take full container width */
        }

        .horizontal-scroll-container::-webkit-scrollbar {
            display: none;  /* Safari and Chrome */
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp"%>
<div class="card-body m-3">
    <h3 class="card-title text-center fw-bold" style="color:#2F0A28">Glycèmie des patients</h3>
</div>

<div class="row gap-5  m-2">
    <div class="position-relative">
        <div class="horizontal-scroll-container">
            <c:forEach var="patient" items="${Patients}">
                <div class="card mx-2" style="min-width: 350px;background-color: rgba(0,0,0,0.27);">
                    <div class="row g-0">
                        <div class="col-md-4 mx-auto d-flex flex-column align-items-center justify-content-center" style="background-color: #2F0A28">
                            <div class="card-body">
                                <h5 class="text-white">
                                    Nom du patient : ${patient.getNomPatient()}
                                </h5>
                                <p class="card-text text-white fw-semibold" style="width: 50%">
                                    Age : ${patient.getAge()}
                                </p>
                            </div>
                            <img src="${patient.getPicturePatient()}" class="rounded-5 p-3" alt="..." height="250" width="300">
                            <div class="button-crud p-3 d-flex flex-row">
                                <a class="btn btn-default rounded-2 text-black fw-semibold" href="./analyses?numeroPatient=${patient.getNumeroPatient()}" role="button" id="btnGetStarted1" style="background-color: #FFDFB9;width:260px; color: white">Voir Analyse</a>
                            </div>
                        </div>
                        <div class="col-md-8 d-flex justify-content-center align-items-center">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped text-center">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>Niveau</th>
                                        <th>Date et Heure</th>
                                        <th>Type Mesure</th>
                                        <th>Commentaire</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${patient.getGlycemies()}" var="glycemie">
                                        <tr>
                                            <td>${glycemie.getNiveau()}</td>
                                            <td>${glycemie.getDatEtHeure()}</td>
                                            <td>${glycemie.getTypeMesure()}</td>
                                            <td>${glycemie.getCommentaire()}</td>
                                            <td>
                                                <form action="delete" method="post" class="d-inline">
                                                    <input type="hidden" name="id" value="${glycemie.getIdGlycemie()}">
                                                    <input type="hidden" name="numeroPatient" value="${patient.getNumeroPatient()}">
                                                    <button type="submit" class="btn btn-danger btn-sm">Supprimer</button>
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script>


</script>
</body>
</html>

