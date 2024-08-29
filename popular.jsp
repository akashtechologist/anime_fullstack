<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>popular</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #717171be;
        }

        .header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-image: url('j5.png');
            background-size: cover;
        }

        .open-btn {
            font-size: 30px;
            cursor: pointer;
            background-color: #333;
            color: white;
            padding: 10px 15px;
            border: none;
        }

        .search-bar {
            position: relative;
            display: flex;
            align-items: center;
        }

        .search-bar input[type="text"] {
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 200px;
        }

        .search-bar button {
            background-color: #333;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 5px;
        }

        .sidebar {
            height: 100vh;
            width: 0;
            background-color: #333;
            padding-top: 20px;
            position: fixed;
            top: 0;
            left: 0;
            overflow-x: hidden;
            transition: 0.3s;
            z-index: 2;
        }

        .sidebar a {
            display: block;
            color: #f2f2f2;
            padding: 14px 16px;
            text-decoration: none;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .sidebar a:hover {
            background-color: #ddd;
            color: black;
        }

        .sidebar.open {
            width: 250px;
        }

        .sidebar.open a {
            opacity: 1;
        }

        .content {
            margin-left: 0;
            padding: 20px;
            transition: margin-left 0.3s;
            margin-top: 60px; /* Adjust this based on the height of your header */
        }

        .anime-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .anime-item {
            background-size: cover;
            background-position: center;
            border-radius: 8px;
            overflow: hidden;
            position: relative;
            height: 250px; /* Adjust as needed */
            display: flex;
            align-items: flex-end;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            color: white;
        }

        .anime-item::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5); /* Grey overlay */
            z-index: 1;
        }

        .anime-item h3 {
            z-index: 2;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 10px;
            width: 100%;
            margin: 0;
        }
    </style>
</head>
<body>

    <div class="header">
        <button class="open-btn" onclick="toggleSidebar()">&#9776;</button>
        <div class="search-bar">
            <input type="text" placeholder="Search Anime...">
            <button type="button">Search</button>
        </div>
    </div>

    <div class="sidebar" id="sidebar">
        <a href="animehome.jsp">Home</a>
        <a href="animelist.jsp">Anime List</a>
        <a href="newseason.jsp">New Season</a>
        <a href="movies.jsp">Movies</a>
        <a href="popular.jsp">Popular</a>
    </div>

    <div class="content" id="content">
        <h1>Popular Anime</h1>
        
        <div class="anime-grid">
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/sasayaku-you-ni-koi-wo-utau-1711738463.png');">
                <h3>Sasayaku You ni Koi wo Utau</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/isekai-shikkaku-1719514036.png);">
                <h3>Isekai Shikkaku</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/giji-harem-1719513630.png');">
                <h3>Giji Harem</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/kaijuu-8-gou-1711734879.png');">
                <h3>Kaijuu 8-gou</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/one-piece-1708412053.png');">
                <h3>One Piece</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/fairy-tail-100-years-quest-1719513557.png');">
                <h3>Fairy Tail: 100 Years Quest</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/shikanoko-nokonoko-koshitantan.png');">
                <h3>Shikanoko Nokonoko Koshitantan</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/boku-no-hero-academia-7th-season.png');">
                <h3>Boku no Hero Academia 7th Season</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/tokidoki-bosotto-russia-go-de-dereru-tonari-no-alya-san.png);">
                <h3>Tokidoki Bosotto Russia-go de Dereru Tonari no Alya-san</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/gimai-seikatsu-1719513692.png);">
                <h3>Gimai Seikatsu</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/ookami-to-koushinryou-merchant-meets-the-wise-wolf.png);">
                <h3>Ookami to Koushinryou: Merchant Meets the Wise Wolf</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/yamada-kun-to-lv999-no-koi-wo-suru-1680203993.png);">
                <h3>Yamada-kun to Lv999 no Koi wo Suru</h3>
            </div>

            <!-- Add more anime items as needed -->
        </div>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            const content = document.getElementById("content");
            if (sidebar.classList.contains("open")) {
                sidebar.classList.remove("open");
                content.style.marginLeft = "0";
            } else {
                sidebar.classList.add("open");
                content.style.marginLeft = "250px";
            }
        }
    </script>
</body>
</html>
