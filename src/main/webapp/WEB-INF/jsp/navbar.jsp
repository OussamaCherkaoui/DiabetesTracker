<%@ page pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #C94277;margin: 20px 20px 0px 20px;border-radius: 8px">
    <div class="container-fluid">
        <button
                data-mdb-collapse-init
                class="navbar-toggler"
                type="button"
                data-mdb-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <a class="navbar-brand p-2 mt-2 mt-lg-0 " href="./">
                <img
                        src="https://i.ibb.co/mR2pt3c/t-l-chargement-1.png"
                        height="40"
                        style="border-radius: 10px"
                        alt="Logo construction"
                        loading="lazy"
                />
            </a>
            <ul class="navbar-nav mx-auto me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link text-white fw-bold"  href="./" id="home">Acceuil</a>
                </li>
            </ul>
        </div>

        <div class="d-flex align-items-center">
            <a class="btn btn-default  text-white" href="./nouvelleGlycemie" role="button" id="btnNewProject">Nouvelle Glycèmie
                <img style="margin-left: 8px" src="https://i.ibb.co/1ryrqVd/plus.png" height="20">
            </a>
        </div>
    </div>
</nav>

