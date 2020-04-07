<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sivu2.aspx.cs" Inherits="searchhtml.Sivu2" %>

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
<body class="body2">
    <form id="form1" runat="server">
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
                    <a class="nav-link dropdown-toggle dropdown-hover" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                More
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

            <div class="col-12 middle-bar center-block text-center border" style="background-color:white; border-color:#707070">
                <form class="example" action="index.aspx" style="margin:auto;max-width:300px">
                    <input type="text" placeholder="Search by company name" name="search2">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
                <hr>
                <div class="col-12 middle-bar center-block text-center" style="margin-top:0%">
                    <h5 class="center">Search Results</h5>
                    <%  String Passedvalue = Request.Form["Select1"]; %>
                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Latest Information</th>
                                    <th scope="col">Information Source</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">Company form</th>
                                    <td>Limited Company</td>
                                    <td>Finnish Patent and registeration office</td>
                                </tr>
                                <tr>
                                    <th scope="row">Home municipality</th>
                                    <td>TURKU</td>
                                    <td>Finnish Patent and registeration office</td>
                                </tr>
                                <tr>
                                    <th scope="row">Language</th>
                                    <td>Finnish</td>
                                    <td>Tax Administration</td>
                                </tr>
                                <tr>
                                    <th scope="row">Postal Address</th>
                                    <td>Linnakatu 34 20100 TURKU</td>
                                    <td>Common</td>
                                </tr>
                                <tr>
                                    <th scope="row">E-mail</th>
                                    <td>keskus@hesburger.fi</td>
                                    <td>Common</td>
                                </tr>
                                <tr>
                                    <th scope="row">www</th>
                                    <td><a href="https://www.hesburger.fi">www.hesburger.fi</td>
                                    <td>Common</td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>    
                                        <button type="submit" class="btn btn-outline-secondary" style="background-color:white">New Search</button></td>
                                    <td></td>
                                </tr>

                            </tbody>

                        </table>
<div class="row"><div>
</div></div>
                    </div>
                    <div class="col">

                    </div>
                </div>
                <div class="row">
                    <div class="col">



                    </div>
                </div>

                <div class="spacing"></div>

            </div>
            <footer class="py-4 footer-up text-white-50 fixed-bottom">
                <div class="container col-12">
                    <div class="text-center center-block">
                        <a href="#"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
                                        <a href="#"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
                                        <a href="mailto:flgames@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
                    </div>
                    <hr>
                    <div class="col-12 container text-center footer-down">
                        <img style="width:113px;height:113px;" src="images/mukero.png">
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


    </form>
</body>
</html>
