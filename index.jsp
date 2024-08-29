        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Sign Up / Login - MyService</title>
            <style>
                body {
                    font-family: 'Roboto', Arial, sans-serif;
                    background-color: #f5f5f5;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                    margin: 0;
                    color: #202124;
                }

                .auth-container {
                    background-color: #fff;
                    padding: 40px;
                    border-radius: 8px;
                    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1), 0 1px 2px rgba(0, 0, 0, 0.2);
                    width: 360px;
                    text-align: center;
                }

                .tab-buttons {
                    display: flex;
                    justify-content: space-around;
                    margin-bottom: 20px;
                }

                .tab-buttons button {
                    background-color: #fff;
                    border: none;
                    font-size: 16px;
                    padding: 10px;
                    cursor: pointer;
                    width: 50%;
                    border-bottom: 2px solid transparent;
                }

                .tab-buttons button.active {
                    border-bottom: 2px solid #1a73e8;
                    font-weight: bold;
                    color: #1a73e8;
                }

                .tab-content {
                    display: none;
                }

                .tab-content.active {
                    display: block;
                }

                h1 {
                    font-size: 24px;
                    margin-bottom: 20px;
                    font-weight: 500;
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

                .signup-btn, .login-btn {
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

                .signup-btn:hover, .login-btn:hover {
                    background-color: #1765c1;
                }

                .login-link, .signup-link {
                    display: block;
                    margin-top: 15px;
                    font-size: 14px;
                    color: #1a73e8;
                    text-decoration: none;
                }

                .login-link:hover, .signup-link:hover {
                    text-decoration: underline;
                }

                .or-divider {
                    display: flex;
                    align-items: center;
                    text-align: center;
                    color: #5f6368;
                    margin: 20px 0;
                }

                .or-divider::before,
                .or-divider::after {
                    content: '';
                    flex: 1;
                    border-bottom: 1px solid #dadce0;
                }

                .or-divider::before {
                    margin-right: 15px;
                }

                .or-divider::after {
                    margin-left: 15px;
                }

                .google-btn {
                    display: inline-block;
                    padding: 10px;
                    width: 100%;
                    border: 1px solid #dadce0;
                    border-radius: 4px;
                    text-align: center;
                    font-size: 16px;
                    cursor: pointer;
                    color: #202124;
                    background-color: #fff;
                }

                .google-btn img {
                    vertical-align: middle;
                    margin-right: 10px;
                }

                .google-btn:hover {
                    background-color: #f8f9fa;
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
            </style>
            <script>
                function redirectTologin() {
                    window.location.href = "/login.jsp";
                }
            </script>
        </head>
        <body>

            <div class="auth-container">
                <div class="tab-buttons">
                    <button id="signup-tab" class="active">Sign Up</button>
                    <button id="login-tab">Login</button>
                </div>

                <div id="signup-content" class="tab-content active">
                    <h1>Create your account</h1>
                    <form action="/submit-signup" method="POST">
                        <div class="form-group">
                            <label for="first-name">First Name</label>
                            <input type="text" id="first-name" name="first-name" required>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Last Name</label>
                            <input type="text" id="last-name" name="last-name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <div class="form-group">
                            <label for="confirm-password">Confirm Password</label>
                            <input type="password" id="confirm-password" name="confirm-password" required>
                        </div>
                        <button type="submit" class="signup-btn">Sign Up</button>
                    </form>
                    <a href="login.jsp">Already have an accoun Login here</a>
                    <div class="or-divider">or</div>
                    <button class="google-btn">
                        <img src="https://www.gstatic.com/images/branding/product/1x/gsa_64dp.png" alt="Google logo" width="20">
                        Sign up with Google
                    </button>
                </div>

                <div id="login-content" class="tab-content">
                    <h1>Sign in</h1>
                    <form action="/login" method="POST">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <a href="animehome.jsp" class="login-btn">Sign In</a>
                    </form>
                    <div class="forgot-password">
                        <a href="/reset-password">Forgot password?</a>
                    </div>
                    <div class="or-divider">or</div>
                    <button class="google-btn">
                        <img src="https://www.gstatic.com/images/branding/product/1x/gsa_64dp.png" alt="Google logo" width="20">
                        Sign in with Google
                    </button>
                </div>
            </div>

            <script>
                const signupTab = document.getElementById('signup-tab');
                const loginTab = document.getElementById('login-tab');
                const signupContent = document.getElementById('signup-content');
                const loginContent = document.getElementById('login-content');

                signupTab.addEventListener('click', () => {
                    signupTab.classList.add('active');
                    loginTab.classList.remove('active');
                    signupContent.classList.add('active');
                    loginContent.classList.remove('active');
                });

                loginTab.addEventListener('click', () => {
                    loginTab.classList.add('active');
                    signupTab.classList.remove('active');
                    loginContent.classList.add('active');
                    signupContent.classList.remove('active');
                });
            </script>

        </body>
        </html>
        