<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Nouvelle Glycemie</title>
    <style>
        body{
            background-color: #4c5151;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp"%>
<div class="card-body m-3 p-5">
    <h1 class="card-title text-center fw-bold" style="color:lightskyblue">Nouvelle Glycèmie</h1>
</div>
<div><c:out value="${exemple}"></c:out></div>
<div class="row gap-5 mb-5 m-0">
    <div class="row justify-content-center">
        <div class="col-md-6 bg-blue">
            <form id="glycemieForm">
                <div class="form-group">
                    <label for="dateEtHeure">Date et Heure</label>
                    <input type="datetime-local" class="form-control" id="dateEtHeure" name="dateEtHeure" required>
                </div>
                <div class="form-group">
                    <label for="niveau">Niveau</label>
                    <input type="number" class="form-control" id="niveau" name="niveau" required>
                </div>
                <div class="form-group">
                    <label for="typeMesure">Type de Mesure</label>
                    <input type="text" class="form-control" id="typeMesure" name="typeMesure" required>
                </div>
                <div class="form-group">
                    <label for="numeroPatient">Patient</label>
                    <select class="form-select w-50" aria-label="Disabled select example" id="numeroPatient" name="numeroPatient">
                        <option selected>Selectionnez le patient</option>
                        <c:forEach var="patient" items="${patients}">
                            <option value="${patient.getNumeroPatient()}">${patient.getNomPatient()}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="commentaire">Commentaire</label>
                    <textarea class="form-control" id="commentaire" name="commentaire" rows="3" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Ajouter Glycémie</button>
            </form>
        </div>
    </div>
</div>
<script>
    let home = document.getElementById('home');
    let project=document.getElementById('project');
    home.id="";
    project.id="active";
</script>
</body>
</html>

