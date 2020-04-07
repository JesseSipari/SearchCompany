<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="searchhtml.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Business Search</title>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-purp fixed-top">
        <a class="navbar-brand" href="index.html">Business Search</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="news.html">News</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">About</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle dropdown-hover" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">More
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <div class="spacing"></div>
    <div class="container">
        <div class="form-row">

            <div class="col-12 middle-bar center-block text-center border" style="background-color: white; border-color: #707070">
                <form class="example" action="sivu2.html" style="margin: auto; max-width: 300px">
                    <input type="text" placeholder="Search by company name" name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
                <hr>
                <form>
                    <div class="col-12 middle-bar center-block text-center" style="margin-top: 0%">
                        <h5 class="center">Advanced search</h5>
                    </div>
                    <div class="form-group row">
                        <div class="col">
                        </div>
                        <div class="col-6">
                            <label for="startDate">Date range</label>
                        </div>
                        <div class="col">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                        </div>
                        <div class="d-flex justify-content-center form-group row">

                            <input id="startDate" name="startDate" width="160" /><input id="endDate" name="endDate" width="160" />
                        </div>
                        <div class="col">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                        </div>
                        <div class="d-flex justify-content-center">
                            <div class="form-group row align-items-center">
                                <div class="col-auto my-1">
                                    <div style="padding-top: 20px"></div>
                                    <form id="form1" runat="server" method="post" action="index.aspx">
                                        <% String[] municipalities = { "Akaa", "Alajärvi", "Alavieska", "Alavus", "Asikkala", "Askola", "Aura", "Brändö", "Eckerö", "Enonkoski", "Enontekiö", "Espoo", "Eura", "Eurajoki", "Evijärvi", "Finström", "Forssa", "Föglö", "Geta", "Haapajärvi", "Haapavesi", "Hailuoto", "Halsua", "Hamina", "Hammarland", "Hankasalmi", "Hanko", "Harjavalta", "Hartola", "Hattula", "Hausjärvi", "Heinola", "Heinävesi", "Helsinki", "Hirvensalmi", "Hollola", "Honkajoki", "Huittinen", "Humppila", "Hyrynsalmi", "Hyvinkää", "Hämeenkyrö", "Hämeenlinna", "Ii", "Iisalmi", "Iitti", "Ikaalinen", "Ilmajoki", "Ilomantsi", "Imatra", "Inari", "Inkoo", "Isojoki", "Isokyrö", "Janakkala", "Joensuu", "Jokioinen", "Jomala", "Joroinen", "Joutsa", "Juuka", "Juupajoki", "Juva", "Jyväskylä", "Jämijärvi", "Jämsä", "Järvenpää", "Kaarina", "Kaavi", "Kajaani", "Kalajoki", "Kangasala", "Kangasniemi", "Kankaanpää", "Kannonkoski", "Kannus", "Karijoki", "Karkkila", "Karstula", "Karvia", "Kaskinen", "Kauhajoki", "Kauhava", "Kauniainen", "Kaustinen", "Keitele", "Kemi", "Kemijärvi", "Keminmaa", "Kemiönsaari", "Kempele", "Kerava", "Keuruu", "Kihniö", "Kinnula", "Kirkkonummi", "Kitee", "Kittilä", "Kiuruvesi", "Kivijärvi", "Kokemäki", "Kokkola", "Kolari", "Konnevesi", "Kontiolahti", "Korsnäs", "Koski Tl", "Kotka", "Kouvola", "Kristiinankaupunki", "Kruunupyy", "Kuhmo", "Kuhmoinen", "Kumlinge", "Kuopio", "Kuortane", "Kurikka", "Kustavi", "Kuusamo", "Kyyjärvi", "Kärkölä", "Kärsämäki", "Kökar", "Lahti", "Laihia", "Laitila", "Lapinjärvi", "Lapinlahti", "Lappajärvi", "Lappeenranta", "Lapua", "Laukaa", "Lemi", "Lemland", "Lempäälä", "Leppävirta", "Lestijärvi", "Lieksa", "Lieto", "Liminka", "Liperi", "Lohja", "Loimaa", "Loppi", "Loviisa", "Luhanka", "Lumijoki", "Lumparland", "Luoto", "Luumäki", "Maalahti", "Maarianhamina - Mariehamn", "Marttila", "Masku", "Merijärvi", "Merikarvia", "Miehikkälä", "Mikkeli", "Muhos", "Multia", "Muonio", "Mustasaari", "Muurame", "Mynämäki", "Myrskylä", "Mäntsälä", "Mänttä-Vilppula", "Mäntyharju", "Naantali", "Nakkila", "Nivala", "Nokia", "Nousiainen", "Nurmes", "Nurmijärvi", "Närpiö", "Orimattila", "Oripää", "Orivesi", "Oulainen", "Oulu", "Outokumpu", "Padasjoki", "Paimio", "Paltamo", "Parainen", "Parikkala", "Parkano", "Pedersören kunta", "Pelkosenniemi", "Pello", "Perho", "Pertunmaa", "Petäjävesi", "Pieksämäki", "Pielavesi", "Pietarsaari", "Pihtipudas", "Pirkkala", "Polvijärvi", "Pomarkku", "Pori", "Pornainen", "Porvoo", "Posio", "Pudasjärvi", "Pukkila", "Punkalaidun", "Puolanka", "Puumala", "Pyhtää", "Pyhäjoki", "Pyhäjärvi", "Pyhäntä", "Pyhäranta", "Pälkäne", "Pöytyä", "Raahe", "Raasepori", "Raisio", "Rantasalmi", "Ranua", "Rauma", "Rautalampi", "Rautavaara", "Rautjärvi", "Reisjärvi", "Riihimäki", "Ristijärvi", "Rovaniemi", "Ruokolahti", "Ruovesi", "Rusko", "Rääkkylä", "Saarijärvi", "Salla", "Salo", "Saltvik", "Sastamala", "Sauvo", "Savitaipale", "Savonlinna", "Savukoski", "Seinäjoki", "Sievi", "Siikainen", "Siikajoki", "Siikalatva", "Siilinjärvi", "Simo", "Sipoo", "Siuntio", "Sodankylä", "Soini", "Somero", "Sonkajärvi", "Sotkamo", "Sottunga", "Sulkava", "Sund", "Suomussalmi", "Suonenjoki", "Sysmä", "Säkylä", "Taipalsaari", "Taivalkoski", "Taivassalo", "Tammela", "Tampere", "Tervo", "Tervola", "Teuva", "Tohmajärvi", "Toholampi", "Toivakka", "Tornio", "Turku", "Tuusniemi", "Tuusula", "Tyrnävä", "Ulvila", "Urjala", "Utajärvi", "Utsjoki", "Uurainen", "Uusikaarlepyy", "Uusikaupunki", "Vaala", "Vaasa", "Valkeakoski", "Valtimo", "Vantaa", "Varkaus", "Vehmaa", "Vesanto", "Vesilahti", "Veteli", "Vieremä", "Vihti", "Viitasaari", "Vimpeli", "Virolahti", "Virrat", "Vårdö", "Vöyri", "Ylitornio", "Ylivieska", "Ylöjärvi", "Ypäjä", "Ähtäri;", "Äänekoski" };

                                            string selected = "";
                                            if (Request.Form.Count > 0)
                                            {
                                                selected =
                                                Request.Form["Select1"];
                                            }
                                        %>




                                        <select id="Select1" name="Select1" class="custom-select mr-sm-2" style="width: auto;">
                                            <option selected>Select Location</option>
                                            <%
                                                for (int i = 0; i < municipalities.Length; i++)
                                                {
                                                    if (selected != "" && selected == municipalities[i])
                                                        Response.Write("<option selected = \"selected\" value=\"" + municipalities[i] + "\">" + municipalities[i] + "</option>");
                                                    else
                                                    {
                                                        Response.Write("<option value=\"" + municipalities[i] + "\">" + municipalities[i] + "</option>");
                                                    }
                                                }


                                            %>
                                        </select>
                                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" style="width: auto;">
                                        <option selected>Select Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                        <option value="Industry">Industry</option>
                                    </select>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                        </div>
                    </div>
                <div style="padding-top: 20px"></div>
                    <button id="SubmitButton" type="submit" class="btn btn-outline-secondary">Search</button>

                    <div style="padding-top: 20px"></div>
                </form>
            </div>


        </div>
        <script>
            var startDate = new Date(1800, 1, 1);
            var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());

            $('#startDate').datepicker({
                firstDay: 1,
                uiLibrary: 'bootstrap4',
                iconsLibrary: 'fontawesome',
                format: 'dd/mm/yyyy',
                minDate: startDate,
                maxDate: function () {
                    return $('#endDate').val();
                }
            });
            $('#endDate').datepicker({
                firstDay: 1,
                uiLibrary: 'bootstrap4',
                iconsLibrary: 'fontawesome',
                format: 'dd/mm/yyyy',
                maxDate: today,

                minDate: function () {
                    return $('#startDate').val();
                }
            });
        </script>

    </div>


    <div class="spacing"></div>

    <footer class="py-4 footer-up text-white-50 fixed-bottom">
        <div class="container col-12">
            <div class="text-center center-block">
                <a href="#"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
                <a href="#"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
                <a href="mailto:flgames@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
            </div>
            <hr>
            <div class="col-12 container text-center footer-down">
                <img style="width: 113px; height: 113px;" src="images/mukero.png">
                <small>Mukero Oy
                        p. 0500 0234 56
                        Lappajankatu 3K 7, Helsinki
                </small>
            </div>
        </div>


    </footer>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>



</body>
</html>
