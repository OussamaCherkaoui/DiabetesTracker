<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            background-color: #CADBC0;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp"%>
<div class="card-body" style="margin-top: 20px">
    <h4 class="card-title text-center fw-bold" style="color:#2F0A28">Nouvelle Glycèmie</h4>
</div>
<div class="row gap-5 mb-3 m-0">
    <div class="row justify-content-center text-white">
        <div class="col-md-6">
            <form:form id="glycemieForm" method="post" action="ajouterGlycemie" onsubmit="return validateForm()">
                <div class="form-group mb-1">
                    <label for="dateEtHeure">Date et Heure</label>
                    <input type="datetime-local" class="form-control" id="dateEtHeure" name="dateEtHeure" required>
                </div>
                <div class="form-group mb-1">
                    <label for="niveau">Niveau</label>
                    <input type="number" class="form-control" id="niveau" name="niveau" required>
                </div>
                <div class="form-group mb-1">
                    <label for="typeMesure">Type de Mesure</label>
                    <input type="text" class="form-control" id="typeMesure" name="typeMesure" required>
                </div>
                <div class="form-group mb-1">
                    <label for="patient">Patient</label>
                    <select class="form-select w-50" aria-label="Disabled select example" id="patient" name="numeroPatient">
                        <option selected>Selectionnez le patient</option>
                        <c:forEach var="patient" items="${patients}">
                            <option value="${patient.getNumeroPatient()}">${patient.getNomPatient()}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group mb-3">
                    <label for="commentaire">Commentaire</label>
                    <textarea class="form-control" id="commentaire" name="commentaire" rows="3" required></textarea>
                </div>
                <button type="submit" class="btn btn-block" style="background-color:#FFDFB9">Ajouter Glycémie</button>
            </form:form>
        </div>
    </div>
</div>
<script>

    function validateForm() {
        var dateEtHeure = document.getElementById('dateEtHeure').value;
        var niveau = document.getElementById('niveau').value;
        var typeMesure = document.getElementById('typeMesure').value;
        var patient = document.getElementById('patient').value;
        var commentaire = document.getElementById('commentaire').value;

        if (!dateEtHeure || !niveau || !typeMesure || !patient || !commentaire) {
            alert('Tous les champs sont obligatoires.');
            return false;
        }

        if (niveau <= 0) {
            alert('Le niveau doit être supérieur à 0.');
            return false;
        }

        return true;
    }
</script>
</body>
</html>

