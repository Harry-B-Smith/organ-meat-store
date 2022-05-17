<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | OrganMeatStore</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>

<div class="header">


<div class="container">
    <div class="navbar">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/product/home"><img src="${pageContext.request.contextPath}/resources/img/logo2.png" width="200px"></a> 
        </div>
        <nav>
            <ul id="MenuItems">
                <li><a href="${pageContext.request.contextPath}/product/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/product/productpage">Meats</a></li>
                <li><a href="${pageContext.request.contextPath}/product/about">About Us</a></li>
                <li><a href="${pageContext.request.contextPath}/product/contact">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/product/list">Admin Login</a></li>
                <li><a href="${pageContext.request.contextPath}/product/account">Account</a></li>
            </ul>
        </nav>
        <a href="${pageContext.request.contextPath}/product/cart"><img src="${pageContext.request.contextPath}/resources/img/cart.png" width="30px" height="30px"></a>
        <img src="${pageContext.request.contextPath}/resources/img/menu.png" class="menu-icon" onclick="menuToggle()">
    </div>    
    
</div>
</div>

<!------ cart item details ------>

<div class="small-container cart-page">
    <table>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="${pageContext.request.contextPath}/resources/img/lean-ground-beef-with-heart-kidney-liver-1-lb_560.jpeg">
                    <div>
                        <p>Ground Beef W/ Heart, Kidney, Liver</p>
                        <small>Price: $11.50/.5kg</small>
                        <br>
                        <a href="">Remove</a>
                    </div>
                </div>

            </td>
            <td><input type="number" value="1"></td>
            <td>$11.50</td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="${pageContext.request.contextPath}/resources/img/0002675_beef-cheeks-1-lb.jpeg">
                    <div>
                        <p>Beef Cheeks</p>
                        <small>Price: $15.87/.5kg</small>
                        <br>
                        <a href="">Remove</a>
                    </div>
                </div>

            </td>
            <td><input type="number" value="1"></td>
            <td>$15.87</td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="${pageContext.request.contextPath}/resources/img/0001749_beef-heart-125-lbs.jpeg">
                    <div>
                        <p>Premium Beef Heart</p>
                        <small>Price: $14.91/.5kg</small>
                        <br>
                        <a href="">Remove</a>
                    </div>
                </div>

            </td>
            <td><input type="number" value="1"></td>
            <td>$14.91</td>
        </tr>
    </table>

    <div class="total-price">
        <table>
            <tr>
                <td>Subtotal</td>
                <td>$42.28</td>
            </tr>
            <tr>
                <td>Tax</td>
                <td>$2.95</td>
            </tr>
            <tr>
                <td>Total</td>
                <td>$45.23</td>
            </tr>
        </table>
    </div>

</div>


<!------ footer ------>
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-1">
                <h3>Download Our App</h3>
                <p>Download App for Android and iOS mobile phones</p>
                <div class="app-logo">
                    <img src="${pageContext.request.contextPath}/resources/img/play-store.png">
                    <img src="${pageContext.request.contextPath}/resources/img/app-store.png">
                </div>
            </div>
            <div class="footer-col-2">
                <img src="${pageContext.request.contextPath}/resources/img/logo2.png">
                <p>Our Purpose Is To Sustainably Bring Nutrition and Wellness To Everyone</p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Links</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affiliate</li>
                </ul>
            </div>
            <div class="footer-col-4">
                <h3>Follow Us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>YouTube</li>
                </ul>
            </div>
        </div>
        <hr>
        <p class="copyright">Copyright 2022 - The Organ Meat Store</p>
    </div>
</div>
<!------ js for toggle menu ------>
<script>
    var MenuItems = document.getElementById("MenuItems");

    MenuItems.style.maxHeight = "0px";

    function menuToggle(){
        if(MenuItems.style.maxHeight == "0px"){
        MenuItems.style.maxHeight = "200px";
        }
        else {
        MenuItems.style.maxHeight = "0px";
        }
    }
 </script>

</body>
</html>