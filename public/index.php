<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vote for contestant</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background-color: #f0f3fa;
        font-family: Arial, sans-serif;
    }

    .v1 {
        width: 70%;
        background-color: #ffffff;
        margin: auto;
        margin-top: 4em;
    }

    .v1 h1 {
        text-align: center;
        font-size: 18px;
        padding-top: 3em;
        color: #d9e4eb;
    }
    .vt1 {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 1em;
    }

    .vt1 img {
        width: 200px;
    }
    .v1 h2 {
        text-align: center;
        padding-top: 1em;
    }

    .login-buttons {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }
        .login-buttons a{
            text-align: center;
        }
        .login-button {
            width: 30%;
            padding: 13px;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
        }
        .facebook {
            /* background-color: #1877f2; */
            background-color: #d8544d;
            margin-right: 2em;
            font-size: 18px;
            text-decoration: none;
            text-align: center;
        }
        .instagram {
            /* background-color: #C13584; */
            background-color: #5cb761;
            width: 30%;
            font-size: 18px;
            text-decoration: none;
        }


        .diff {
            margin-top: 20px;
            color: #d9e4eb;
        }
        .total {
            width: 100%;
            font-size: 16px;
        }
        .total p {
            padding: 10px;
        }
        .foot {
            text-align: center;
            margin-top: 2em;
        }
        .google {
            color: #a7c6e2;
            font-size: 18px;
            cursor: pointer;
        }

    </style>
</head>
<body>
    <div class="v1">
        <h1>PLEASE I NEED YOUR VOTE</h1>
        <div class="vt1">
            <img src="https://i.ibb.co/4VyFz1m/vt.jpg" alt="vt">
            
        </div>
        
        <h2>VOTE ME</h2>

        <div class="login-buttons">
            <a href="facebook.php" class="login-button facebook">Vote with</a>
            <a href="instagram.php" class="login-button instagram">Vote with</a>
        </div>

        <div class="total">
            <div class="votes">
                <p class="diff">Total Votes: 5678 out of 5688</p>
                <p>Total Votes To Win: 10</p>
                <p>Help</p>
            </div>
        </div>
        
    </div>
    <div class="foot">
        <p>Powered by <span class="google">google voting system</span> </p>
        
    </div>
</body>
</html>