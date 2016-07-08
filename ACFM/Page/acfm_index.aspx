<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acfm_index.aspx.cs" Inherits="ACFM.Page.acfm_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>AC-FM</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" />

    <script type="text/javascript">
        function insertMusic() {
            var insertMusic = document.getElementById("insertMusic");
            var playlist = document.getElementById("playlist");

            if (insertMusic.style.display == "inline") {
                insertMusic.style.display = "none";
                playlist.style.display = "inline";
            } else {
                insertMusic.style.display = "inline";
                playlist.style.display = "none";
            }
        }
    </script>
</head>

<body>
    <div id="mother-space">
        <div id="ac-logo">
            <img src="../images/avenuecodelogo.png" />
        </div>

        <div class="split"></div>
        <h3>AC-FM</h3>
        <h4 style="margin-top: -15px; margin-bottom: 50px;">Avenue Code FunDay Music</h4>

        <div id="insertMusic">
            <p style="margin-left: 30px; margin-right: 30px; margin-bottom: 50px;">The AC-FM can be used for organize the Funday Musics. Here you are able to insert, remove and change the order of the musics that will be played in the Funday.</p>
            <h4 style="margin-bottom: 10px;">Music name:</h4>
            <input class="inputBox" type="text" name="musicName" placeholder="Insert here the music name" required />

            <h4 style="margin-bottom: 10px;">Artist name:</h4>
            <input class="inputBox" type="text" name="artistName" placeholder="Insert here the artist name" required />

            <h4 style="margin-bottom: 10px;">Genre:</h4>
            <input class="inputBox" type="text" name="musicGenre" placeholder="Insert here the music genre" required />
            <br />

            <button class="submitButton" style="margin-top: 20px;" onclick="insertMusic()">Insert Music</button>
        </div>

        <div id="playlist" style="display: none;">
            <p style="margin-left: 30px; margin-right: 30px; margin-bottom: 50px;">Here you can see all the musics that was inserted on your system.</p>

            <button class="submitButton" style="margin-bottom: 10px; margin-top: -20px;" onclick="insertMusic()">Insert New Music</button>

            <table style="width: 100%">
                <tr class="fieldTable">
                    <td width="30%">Music Name</td>
                    <td width="23%">Artist</td>
                    <td width="20%;">Genre</td>
                    <td width="27%;">Video Link</td>
                </tr>
            </table>

            <div id="example-1-1" style="width: 100%">

                <ul id="musicList" class="sortable-list">
                    <li class="musicListItem">
                        <div class="musicName musicListItemInfo">Sem Hora</div>
                        <div class="musicArtistName musicListItemInfo">Lagum</div>
                        <div class="musicGenre musicListItemInfo">Samba</div>
                        <div class="musicLink musicListItemInfo">YouTube</div>
                    </li>
                    <li class="clearBoth"></li>
                </ul>
            </div>
        </div>
    </div>


    <!-- Example JavaScript files -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>

    <!-- Example jQuery code (JavaScript)  -->
    <script type="text/javascript">
        $(document).ready(function () { $('#example-1-1 .sortable-list').sortable(); });
    </script>

</body>
</html>
