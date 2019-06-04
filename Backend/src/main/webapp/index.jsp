<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tobias ist Schwuuuuul</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
    <!-- Das neueste kompilierte und minimierte CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Optionales Theme -->
<%--    TODO: Fix the version--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- Das neueste kompilierte und minimierte JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</head>
<body>
<!-- Header -->
<div class="container-fluid headerbg">
    <!-- table for the top: logo, searchbar, card -->
    <div class="row d-flex align-items-center">
        <div class="col-md-4">
            <img src="Logo/Logo3.png" id="logo">
        </div>

        <div class="col-md-4">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Suche nach...">
                <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Los!</button>
                    </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->

        <div class="col-md-4">
            <input type=button value="Einkaufswagen" onclick="window.location.href='card.html';" class="pull-right"/>
        </div>
    </div>
</div>
<!-- !Header -->

<!-- Navbar -->
<nav class="navbar navbar-expand-sm sticky-top primary-color topnav">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.html">Prozessoren</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.html">Arbeitsspecher</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.html">Festplatten</a>
        </li>
        <li class="nav-item pull-right">
            <a class="nav-link" href="Kontakt.html">Kontakt</a>
        </li>
    </ul>
</nav>
<!-- !Navbar -->

<!-- Content -->

<div class="platzhalter"></div>
<div class="container marketing">

    <!--<hr class="featurette-divider">

     Präsentationsspalten -->
    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Hardware Electronics <span class="text-muted">Die Zukunft des Online shoppings</span></h2>
            <p class="lead">Wir sind ein junges unabhängiges Unternehmen, speziallisiert auf Onlinetransaktionen. Wir blicken in die Zukunft und haben keine Angst vor neuen Technologien. Wir verschränken nicht unsere Augen vor dem Fortschritt. Innovation wird bei uns groß geschrieben! </p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-responsive center-block" src="Logo/Logo3.png" alt="Generisches Platzhalter-Bild" width="400px", height="auto">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Kostenloser Versand! <span class="text-muted">Bei jeder Bestellung über 50€.</span></h2>
            <p class="lead">Bei uns wird jede Bestellung über 50€ kostenlos und schnellstmöglich zugestellt. Das gilt sowohl für Deutschland, Österreich und die Schweiz!</p>
        </div>
        <!--<div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generisches Platzhalter-Bild">
        </div>-->
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
            <h2 class="featurette-heading">Lieferung am nächsten Tag! <span class="text-muted">Mit Hardware Prime</span></h2>
            <p class="lead">
                Melden Sie sich jetzt für unser premium Programm an für Lieferungen am nächsten Tag. Hinweis: Nur gültig bei Bestellung und Lieferung an Werktagen.</p>
        </div>
        <!--<div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generisches Platzhalter-Bild">
        </div>-->
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Unzufrieden? <span class="text-muted">Schicken Sie ihr Produkt kostenlos zurück!</span></h2>
            <p class="lead">Kundenzufriedenheit wird bei uns groß geschrieben! Wenn Sie mit einem unserer Produkte unzufrieden sind, senden Sie es inerhalb der ersten 2 Wochen kostenlos zurück und erhalten ihr Geld wieder!</p>
        </div>
        <!--<div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generisches Platzhalter-Bild">
        </div>-->
    </div>

    <hr class="featurette-divider">

</div>
<h2>Zahlungsmethoden</h2>
<div class="platzhalter"></div>
<!-- Drei Spalten Text unter dem Karussell -->
<div class="row">
    <div class="col-lg-4">
        <img class="img-circle" src="Pictures/paypal-784404_1280.png" alt="Generisches Platzhalter-Bild" width="auto" height="140">
        <h2>Paypal</h2>
        <p>Bezahlen Sie blitzschnell und bequem mit Paypal. Außerdem haben Sie den Paypal Käuferschutz für zusätzliche Sicherheit. Paypal ist außerdem völlig kostenlos und sicher.</p>
        <p><a class="btn btn-default" href="https://paypal.com" role="button">Erfahren Sie mehr &raquo;</a></p>
    </div><!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <img class="img-circle" src="Pictures/bitcoin-225080_1280.png" alt="Generisches Platzhalter-Bild" width="auto" height="140">
        <h2>Bitcoin</h2>
        <p>Sie sind zukunftsorientiert und begeistert von Kryptowährungen? Kein problem, Hardware Electronics nimmt auch Bitcoin als zahlungsmittel an.</p>
        <p><a class="btn btn-default" href="https://www.bitcoin.de/de" role="button">Mehr dazu? &raquo;</a></p>
    </div><!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <img class="img-circle" src="Pictures/card-1673581_1280.png" alt="Generisches Platzhalter-Bild" width="auto" height="140">
        <h2>Kreditkarte</h2>
        <p>Falls Sie es ganz klassisch lieber haben, können Sie bei uns auch mit einer ganz normalen Kreditkarte bezahen.</p>
        <p><a class="btn btn-default" href="https://www.sparkasse.de/unsere-loesungen/privatkunden/karten/kreditkarte.html" role="button">Weitere Infos  &raquo;</a></p>
    </div><!-- /.col-lg-4 -->
</div><!-- /.row -->
<hr class="featurette-divider">

<!-- !Content -->

<!-- Footer -->
<footer class="page-footer font-small blue pt-4 primary-color">

    <!-- Footer Links -->
    <div class="container-fluid text-center text-md-left">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-6 mt-md-0 mt-3">

                <!-- Content -->
                <h5 class="text-uppercase">Hardware Electronics</h5>
                <p>Besuchen Sie auch unsere social Media Seiten.</p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none pb-3">

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Social Media</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="http://www.facebook.de">Facebook</a>
                    </li>
                    <li>
                        <a href="http://www.Twitter.de">Twitter</a>
                    </li>
                    <li>
                        <a href="http://www.instagram.de">Instagram</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Über uns</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="http://www.google.de">Impressum</a>
                    </li>
                    <li>
                        <a href="http://www.google.de">Datenschutzerklärung</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3 sec-color">© 2018 Copyright:
        <a href="http://google.de"> HardwareElectronics.com</a>
    </div>
    <!-- Copyright -->

</footer>
<!-- Footer -->

</body>
</html>