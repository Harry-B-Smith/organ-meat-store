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

<!------Single Product Details------>

<div class="small-container single-product">
    <div class="row">
        <div class="col-2">
            <img src="${pageContext.request.contextPath}/resources/img/0001749_beef-heart-125-lbs.jpeg" width="100%" id="ProductImg">
            <div class="small-img-row">
                <div class="small-img-col">
                    <img src="${pageContext.request.contextPath}/resources/img/beef heart 1.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="${pageContext.request.contextPath}/resources/img/beef heart 2.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="${pageContext.request.contextPath}/resources/img/beef heart 3.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="${pageContext.request.contextPath}/resources/img/beef heart 4.jpg" width="100%" class="small-img">
                </div>
            </div>


        </div>
        <div class="col-2">
            <p>Home / Beef Heart</p>
            <h1>Premium Beef Heart USDA</h1>
            <h4>$14.91-.5kg</h4>
            <select>
                <option>Select Quantity</option>
                <option>.5kg</option>
                
            </select>
            <input type="number"value="">
            <a href="" class="btn">Add to Cart</a>
            <h3>Product Details <i class="fa fa-indent"></i></h3>
            <br>
            <p>Heart was a favorite food of many traditional cultures, including more than a few native American tribes. Modern nutritional analysis reveals the reason for beef heart’s historic reverence: it is rich in B vitamins, coenzyme Q10, and many other bioavailable nutrients. Beef heart nutrition entails robust levels of zinc, iron, selenium. It is also a great source of vitamin B2, vitamin B6, and vitamin B12</p>
        </div>
    </div>
</div>

<!----------------title--------------->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Products</h2>
        <p>View More</p>
    </div>
</div>

<!----------------products--------------->
    <div class="small-container">

        <div class="row">
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/lean-ground-beef-with-heart-kidney-liver-1-lb_560.jpeg">
                <h4>Ground Beef With Heart, Kidney, and Liver</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>                
                </div>
                <p>$11.50 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0001749_beef-heart-125-lbs.jpeg">
                <h4>Premium Beef Heart</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>                
                </div>
                <p>$14.91 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002739_beef-kidney-1-lb.jpeg">
                <h4>Premium Beef Kidney</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>                
                </div>
                <p>$8.58 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002250_bison-kidney-12-oz.jpeg">
                <h4>Premium Bison Kidney</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>                
                </div>
                <p>$10.17 - .5kg</p>
            </div>
            
            
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