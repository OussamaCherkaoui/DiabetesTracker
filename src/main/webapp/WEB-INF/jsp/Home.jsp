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
    <c:forEach var="patient" items="${Patients}">
        <div class="card mx-auto" style="width: 70%;background-color: #84bbcf;">
            <div class="row g-0">
                <div class="col-md-4 mx-auto" >
                    <div class="card-body">
                        <h5 class="text-white">
                                Nom du patient : ${patient.getNomPatient()}
                        </h5>
                        <p class="card-text text-white fw-semibold" style="width: 50%">
                                Age :  ${patient.getAge()}
                        </p>
                    </div>
                    <img src="${patient.getPicturePatient()}" class="rounded-5 p-3" alt="..." height="250" width="300">
                    <div class="button-crud p-3 d-flex flex-row">
                        <a class="btn btn-default rounded-2 text-black fw-semibold" href="./analyses?idPatient=" role="button" id="btnGetStarted1" style="background-color: #FFDFB9;width:142px; color: white">Voir Analyse</a>
                    </div>
                </div>
                <div class="col-md-8 d-flex align-items-center" style="padding-left: 60px">
                    <table>
                        <thead>
                        <tr>
                            <th>Niveau </th>
                            <th>Date et heure</th>
                            <th>Type Mesure</th>
                            <th>commentaire</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listeEtudiants}" var="etudiant">
                            <form action="deleteStudent" method="post">
                                <input type="hidden" value="${etudiant.getMatricule()}" name="matricule">
                                <tr>
                                    <td>${etudiant.getMatricule()}</td>
                                    <td>${etudiant.getName()}</td>
                                    <td>${etudiant.getEmail()}</td>
                                    <td>${etudiant.getTelephone()}</td>
                                    <td class="action-buttons">
                                        <a href="/GestionEtudiant/updateStudent?matricule=${etudiant.getMatricule()}" class="edit">Modifier</a>
                                        <button type="submit" class="delete">Supprimer</button>
                                    </td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<script>
    let home = document.getElementById('home');
    let project=document.getElementById('project');
    home.id="";
    project.id="active";
</script>
</body>
</html>

