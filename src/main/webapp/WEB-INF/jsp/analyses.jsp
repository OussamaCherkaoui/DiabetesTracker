<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Analyses Glycemie</title>
    <style>
        body{
            background-color: #CADBC0;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp"%>
<div class="card-body m-3 p-2">
    <h2 class="card-title text-center fw-bold" style="color:#2F0A28">Analyses du Glycèmie</h2>
</div>
<div style="display: flex;align-items: center;justify-content: center;padding-top: 38px">
<div class="row m-0" style="width: 50%;">
    <div>
        <canvas id="myChart" style="background-color: #FFDFB9;"></canvas>
    </div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const glycemieData = [];
    const labels = [];
    <c:forEach var="glycemie" items="${Glycemies}">
    labels.push('${glycemie.getDatEtHeure()}');
    glycemieData.push(${glycemie.getNiveau()});
    </c:forEach>

    const ctx = document.getElementById('myChart').getContext('2d');
    const glycemieChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: 'Glycemie',
                data: glycemieData,
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 2,
                fill: false,
                tension: 0.4
            }]
        },
        options: {
            scales: {
                x: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Date',
                        font: {
                            weight: 'bold',
                            size: 16
                        }
                    }
                },
                y: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Glycemie',
                        font: {
                            weight: 'bold',
                            size: 16
                        }
                    }
                }
            },
            plugins: {
                title: {
                    display: false
                },
                legend: {
                    position: 'bottom',
                    labels: {
                        boxWidth: 12,
                        padding: 20,
                        font: {
                            size: 14
                        }
                    }
                }
            },
            layout: {
                padding: {
                    top: 20,
                    right: 20,
                    bottom: 20,
                    left: 20
                }
            }
        }
    });
</script>
</body>
</html>

