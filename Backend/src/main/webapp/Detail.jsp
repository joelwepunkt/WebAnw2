<!DOCTYPE html>
<html>
<head> 
    <meta charset="utf-8">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
    <!-- <link rel="stylesheet" type="text/css" href="style.css" media="screen" /> -->
    <!-- Das neueste kompilierte und minimierte CSS
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Optionales Theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    
    <!-- Das neueste kompilierte und minimierte JavaScript
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
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
      <a class="nav-link" href="Products.jsp">Prozessoren</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Products.jsp">Arbeitsspecher</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Products.jsp">Festplatten</a>
    </li>
    <li class="nav-item pull-right">
      <a class="nav-link" href="Kontakt.html">Kontakt</a>
    </li>
  </ul>
</nav>
<!-- !Navbar -->
    
<!-- Content -->
<div class="platzhalter"></div>
<div class="container-fluid content">
    <h1 class="label"></h1>
    <div class="row margin-b-50 detlFont">
        <div class="col-md-6 col">
          <!--Carousel Wrapper-->
          <div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-2" data-slide-to="1"></li>
              <li data-target="#carousel-example-2" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <div class="view">
                  <img class="d-block w-100" src="Pictures/AMD_Ryzen_2600X.jpg" alt="First slide">
                  <div class="mask rgba-black-light"></div>
                </div>
              </div>
              <div class="carousel-item">
                <!--Mask color-->
                <div class="view">
                  <img class="d-block w-100" src="Pictures/AMD_Ryzen_2600X_2.jpg" alt="Second slide">
                  <div class="mask rgba-black-light"></div>
                </div>
              </div>
              <div class="carousel-item">
                <!--Mask color-->
                <div class="view">
                  <img class="d-block w-100" src="Pictures/AMD_Ryzen_2600X_3.jpg" alt="Third slide">
                  <div class="mask rgba-black-light"></div>
                </div>
              </div>
            </div>
            <!--/.Slides-->
            <!--Controls-->
            <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->
          </div>
          <!--/.Carousel Wrapper-->
        </div>
        <div class="col-md-3 margin-t-150">
          <div class="col height-100" id="price">
          </div>
          <div class="col height-100">
            <img src="Pictures/4-Sterne.png" class="star-big"/><br>4,2 Sterne
          </div>
          <div class="col height-100" id="stock">
          </div>
        </div>
        <div class="col-md-3 margin-t-150">
          <div class="col height-100">
            Anzahl: <input type="number" value="1" min="1" max="5"/>
          </div>
          <div class="col height-100">
            <table>
              <td><input type="checkbox" value="oneDayDelivery" class=""/></td>
            </table>
            
          </div>
          <div class="col height-100">
            <input type="button" value="In den Einkaufswagen" onclick="window.location.href='card.html';"/>
          </div>
        </div>
    </div>
    <!--Produktbeschreibung-->
    <div>
      <hr class="featurette-divider">
      <h2>Produktbeschreibung</h2>
      <p>Mit der zweiten Generation von RYZEN™ bringt AMD eine neue Generation von Prozessoren an dem Start, die Sie vollgepackt mit modernster und innovativer Technologien, 
        sofort in ihrem Bann ziehen wird.<br>Die 12 Nanometer Prozessortechnologie ist eine technologische Meisterleistung und maßgeblich für die enorme Leistungssteigerung 
        verantwortlich. Wenn Sie bisher der Meinung waren, sie wissen was unglaubliche Gaming-Erlebnisse sind, dann wird sie die Leistung des RYZEN™ 5 2600X umhauen und mit 
        einem Schlag in neue Sphären führen. Gaming der Extraklasse ist bedeutet! Ein weiterer Leistungsbringer ist SenseMI. Die Kombination aus Precision Boost und der 
        XFR 2 Technologie verhelfen der CPU zur künstlichen Intelligenz. So erkennt der RYZEN™ 5 2600X, wann eine intensivere Kühlung erforderlich ist. Aber das ist 
        noch nicht alles. Wird das System durch anspruchsvolle Aufgaben überdurchschnittlich hoch belastet, so ist der neue RYZEN™ auch selbstständig dazu in der 
        Lage zu erkennen, dass mehr Leistung erforderlich ist. Diese wird dann kurzerhand bereitgestellt. Ein eigenes Nervensystem, wenn man so will.<br>
        Wer bereits im Besitz eines Mainboards aus der AMD 400-Reihe ist, der muss auch keine teuren Neuanschaffungen befürchten, da diese bereits mit den neuen 
        Desktop-Prozessoren kompatibel sind. Hierbei ist Precision Boost Overdrive ein treuer Wegbegleiter und sorgt für eine noch stärkere Leistung. Kompatibel 
        sind aber nicht nur die Mainboards aus der AMD 400-Reihe, sondern auch die Boards aus der AMD 300-Reihe können mit den RYZEN™ Modellen der zweiten Generation 
        betrieben werden. Wobei eine Erneuerung der Firmware, im Form eines (BIOS)-Updates notwendig ist.<br>Dieser intelligente Prozessor ist leistungsfähiger als jemals zuvor. 
        Der neue RYZEN™ der zweiten Generation wird Sie durchweg begeistern.<br>***ACHTUNG:****<br>Für die Verwendung des Prozessors in Verbindung mit AM4-Mainboards mit 
        300er-Chipsatz ist ein BIOS-Update notwendig. Bitte prüfen Sie die Kompatibilität auf den Herstellerseiten. Beim Kauf eines Mainboards bieten wir optional eine 
        BIOS-Aktualisierung an und bringen die Plattform auf dem neuesten Stand.</p>
    </div>
    <!--Technische Daten-->
    <div class="width-100">
      <hr class="featurette-divider">
      <h2>Technische Daten</h2>
      <table class="table table-striped margin-b-50">
          <tr>
              <td>Prozessor</td>
              <td class="label"></td>
          </tr>
          <tr>
              <td>Anzahl Kerne/Threads</td>
              <td id="threads"></td>
          </tr>
          <tr>
              <td>Takt/Turbo</td>
              <td id="frequency"></td>
          </tr>
          <tr>
              <td>Sockel</td>
              <td id="socket"></td>
          </tr>
          <tr>
              <td>TDP</td>
              <td id="tdp"></td>
          </tr>
      </table>
    </div>
    <!--Bewertungen-->
    <div>
      <hr class="featurette-divider">
      <h2>Bewertungen</h2>
        <div>
          <img src="Pictures/4-Sterne.png" class="star-small"/>Verifizierter Kauf<br><p>Schnelle Lieferung, Neu und ungeöffnet. Kann mich nicht beschweren.<br>Der CPU selbst läuft auch super</p>
      </div>
      <div>
        <img src="Pictures/5-Sterne.png" class="star-small"/>Verifizierter Kauf<br>
        <p>Auch von mir eine klare Empfehlung. Über den Kühler kann ich nichts sagen, in einem Computerladen vor Ort habe ich für wenig Geld den Wraith Max erstanden und der kühlt sehr gut und ist sehr leise 
            | wenn überhaupt hörbar.<br>AMD ist wieder voll konkurrenzfähig und preisgünstig und die AM4-Plattform auch für künftige Modelle nutzbar.<br>Darum ohne Einschränkung 5 Sterne!</p>
      </div>
      <div>
        <h4>Bewertung abgeben:</h4>
        <textarea name="bewertung" rows="7" cols="30" placeholder="Ihre Bewertung"></textarea>
      </div>
      <div>    
        Anzahl Sterne: <input type="number" value="1" min="1" max="5"/>
      </div>
      <div>
        <button type="submit" class="btn btn-default">Senden</button>
      </div>
    </div>
      <hr class="featurette-divider">
</div>


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

<script>
    $(document).ready(function() {

        console.log("Document ready, binding button");
        $("#ziel").text("");
        $.ajax({
            url: "cpus/1",
            method: "GET",
            dataType: "json"
        })
            .done(function(response) {
                console.log(response);
                x=document.getElementsByClassName("label");  // Find the elements
                for(var i = 0; i < x.length; i++){
                    x[i].innerText=JSON.stringify(response.manufact + " " + response.artName);    // Change the content
                }
                $("#price").text(JSON.stringify("Preis: " + response.price + "€"));
                $("#threads").text(JSON.stringify(response.core + "/" + response.threads));
                $("#frequency").text(JSON.stringify(response.frequency + "/" + response.turbo));
                $("#socket").text(JSON.stringify(response.socket));
                $("#tdp").text(JSON.stringify(response.tdp));
                $("#stock").text(JSON.stringify(response.artCount + " Stück auf Lager"))
            })
            .fail(function(jqXHR, statusText, error) {
                var errorMsg = "Response Code: " + jqXHR.status + " - Fehlermeldung: " + jqXHR.responseText;
                console.log(errorMsg);
                $("#ziel").text("Es ist ein Fehler aufgetreten");
            });
    });
</script>

</html>