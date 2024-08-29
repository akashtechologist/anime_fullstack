<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - JAXXJAXX</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #f1f3f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1), 0 1px 2px rgba(0, 0, 0, 0.2);
            width: 360px;
            text-align: center;
        }

        .login-container img {
            width: 100px;
            margin-bottom: 20px;
            background-image: url(jaxx.jpg);
            border-radius: 100%;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #202124;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            font-size: 14px;
            color: #5f6368;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #dadce0;
            border-radius: 4px;
            font-size: 16px;
            margin-top: 5px;
        }

        .form-group input:focus {
            border-color: #1a73e8;
            outline: none;
            box-shadow: 0 1px 3px rgba(66, 133, 244, 0.3);
        }

        .login-btn {
            width: 100%;
            padding: 10px;
            background-color: #1a73e8;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }

        .login-btn:hover {
            background-color: #1765c1;
        }

        .forgot-password {
            margin-top: 15px;
            font-size: 14px;
        }

        .forgot-password a {
            color: #1a73e8;
            text-decoration: none;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }

        .signup-link {
            display: block;
            margin-top: 20px;
            font-size: 14px;
            color: #5f6368;
        }

        .signup-link a {
            color: #1a73e8;
            text-decoration: none;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="jaxx.jpg" alt="logo are not loaded">
        <h1>Sign in</h1>
        <form action="/loginProcess" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="login-btn">Sign In</button>
        </form>
        <div class="forgot-password">
            <a href="/reset-password">Forgot password?</a>
        </div>
        <div class="signup-link">
            <span>Don't have an account?</span>
            <a href="/signup">Sign up</a>
        </div>
    </div>
</body>
</html>
