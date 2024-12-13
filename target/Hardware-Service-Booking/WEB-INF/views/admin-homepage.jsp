<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Engineer Dashboard - TechFix Solutions</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        :root {
            --primary: #1C4E80;
            --primary-light: #4CB5F5;
            --primary-dark: #0091D5;
            --secondary: #6AB187;
            --accent: #EA6A47;
            --background: #F1F1F1;
            --surface: #FFFFFF;
            --text: #202020;
            --text-light: #6B7280;
            --border: #E5E7EB;
            --success: #6AB187;
            --warning: #FFCE32;
            --error: #D32D41;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

      
body {
    font-family: 'Poppins', sans-serif;
    background-image: linear-gradient(to bottom right, #E6F3FF, #FFFFFF);
    color: var(--text);
    line-height: 1.5;
}
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1rem;
        }

        header {
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: white;
            padding: 1rem 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: white;
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            list-style: none;
            align-items: center;
        }

        .nav-links li:not(:last-child) {
            margin-right: 1.5rem;
        }

        .nav-links a {
            text-decoration: none;
            color: white;
            font-weight: 500;
            transition: opacity 0.3s ease;
        }

        .nav-links a:hover {
            opacity: 0.8;
        }

        .btn {
            display: inline-block;
            padding: 0.5rem 1rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background-color: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background-color: #D85A3A;
        }

        main {
            padding: 2rem 0;
        }

        .hero {
            text-align: center;
            margin-bottom: 3rem;
            background: linear-gradient(135deg, var(--primary-light), var(--primary));
            color: white;
            padding: 4rem 0;
            border-radius: 15px;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 0.5rem;
            font-weight: 700;
        }

        h2 {
            font-size: 2rem;
            color: var(--primary);
            margin-bottom: 2rem;
            font-weight: 600;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
        }

        .card {
            background-color: var(--surface);
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            border: 1px solid var(--border);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        }

        .card-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            background: linear-gradient(135deg, var(--primary-light), var(--primary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .card h3 {
            font-size: 1.25rem;
            margin-bottom: 0.5rem;
            font-weight: 600;
            color: var(--primary-dark);
        }

        .card p {
            color: var(--accent);
            font-size: 2.5rem;
            font-weight: 700;
        }

        .features {
            margin-top: 3rem;
        }

        .action-card {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-decoration: none;
            color: var(--text);
            text-align: center;
        }

        .action-card h3 {
            margin-top: 1rem;
            color: var(--primary-dark);
        }

        .action-card:hover {
            background-color: var(--background);
        }

        .action-card:hover h3 {
            color: var(--primary);
        }

        .menu-toggle {
            display: none;
            font-size: 1.5rem;
            color: white;
            cursor: pointer;
        }

        .status-success {
            color: var(--success);
        }

        .status-warning {
            color: var(--warning);
        }

        .status-error {
            color: var(--error);
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .menu-toggle {
                display: block;
            }

            .nav-links.active {
                display: flex;
                flex-direction: column;
                position: absolute;
                top: 100%;
                left: 0;
                width: 100%;
                background-color: var(--primary-dark);
                padding: 1rem;
            }

            .nav-links.active li {
                margin: 0.5rem 0;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <nav>
                <a href="#" class="logo">TechFix</a>
                <ul class="nav-links">
                    <li><a href="#overview">Overview</a></li>
                    <li><a href="<c:url value='view-pending-issues' />">Issues</a></li>
                    <li><a href="<c:url value='profile-page' />">Profile</a></li>
                    <li><a href="<c:url value='/' />" class="btn btn-primary">Logout</a></li>
                </ul>
                <div class="menu-toggle">
                    <i class="fas fa-bars"></i>
                </div>
            </nav>
        </div>
    </header>

    <main>
        <div class="container">
            <section class="hero">
                <h1>Welcome, ${userName}</h1>
                <p>Here's your overview for today</p>
            </section>

            <section id="overview">
                <h2>Dashboard</h2>
                <div class="grid">
                    <div class="card">
                        <i class="fas fa-clipboard-list card-icon"></i>
                        <h3>Total Issues</h3>
                        <p>${totalCount}</p>
                    </div>
                    <div class="card">
                        <i class="fas fa-clock card-icon"></i>
                        <h3>Pending Issues</h3>
                        <p>${pendingCount}</p>
                    </div>
                    <div class="card">
                        <i class="fas fa-check-circle card-icon"></i>
                        <h3>Completed Issues</h3>
                        <p>${completedCount}</p>
                    </div>
                </div>
            </section>

            <section class="features">
                <h2>Quick Actions</h2>
                <div class="grid">
                    <a href="<c:url value='view-all-issues' />" class="card action-card">
                        <i class="fas fa-list card-icon"></i>
                        <h3>View All Issues</h3>
                    </a>
                    <a href="<c:url value='view-completed-issues' />" class="card action-card">
                        <i class="fas fa-check-double card-icon"></i>
                        <h3>View Completed Issues</h3>
                    </a>
                    <a href="<c:url value='send-email' />" class="card action-card">
                        <i class="fas fa-envelope card-icon"></i>
                        <h3>Send Email</h3>
                    </a>
                    <a href="<c:url value='view-pending-issues' />" class="card action-card">
                        <i class="fas fa-hourglass-half card-icon"></i>
                        <h3>View Pending Issues</h3>
                    </a>
                </div>
            </section>
        </div>
    </main>

    <script>
        document.querySelector('.menu-toggle').addEventListener('click', function() {
            document.querySelector('.nav-links').classList.toggle('active');
        });
    </script>
</body>
</html>