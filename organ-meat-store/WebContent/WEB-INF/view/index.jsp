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
    <div class="row">
        <div class="col-2">
            <h1>Nourish Yourself With<br>Nature's Multivitamin</h1>
            <p>Optimal nutrition isn't always about eating more veggies.<br>It's about eating more organ meat, too.<br>Optimize your health with our premium organ meats here at Organ Meat.</p>
            <a href="" class="btn">Order Now &#8594;</a>
        </div>
        <div class="col-2">
            <img src="${pageContext.request.contextPath}/resources/img/image1.1.jpg">
        </div>
    </div>
</div>
</div>
<!------ featured categories ------>
    <div class="categories">
        <div class="small-container">
            <div class="row">
                <div class="col-3">
                    <img src="${pageContext.request.contextPath}/resources/img/beefliverwhitebackground.png">
                    <h4>Beef</h4>
                </div>
                <div class="col-3">
                    <img src="${pageContext.request.contextPath}/resources/img/0002248_bison-liver-16-oz.jpeg">
                    <h4>Bison</h4>
                </div>
                <div class="col-3">
                    <img src="${pageContext.request.contextPath}/resources/img/0002691_pork-liver-1-lb-pkg.jpeg">
                    <h4>Pork</h4>
                </div>
            </div>
        </div>
        
    </div>
<!------ featured products ------>
    <div class="small-container">
        <h2 class="title">Most Popular</h2>
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
                <a href="${pageContext.request.contextPath}/product/product-details"><img src="${pageContext.request.contextPath}/resources/img/0001749_beef-heart-125-lbs.jpeg"></a>
                <a href="product-details.html"><h4>Premium Beef Heart</h4></a>
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
        
        <h2 class="title">New Additions</h2>
        <div class="row">
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002251_bison-pancreas-5-oz_560.jpeg">
                <h4>Bison Pancreas</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>                
                </div>
                <p>$14.20 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002675_beef-cheeks-1-lb.jpeg">
                <h4>Beef Cheeks</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>                
                </div>
                <p>$15.87 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/porkheart.jpg">
                <h4>Pork Heart</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>                
                </div>
                <p>$10.78 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002803_beef-oxtails-1-lb.jpeg">
                <h4>Beef Oxtails</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>                
                </div>
                <p>$12.70 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0001942_beef-liverwurst-end-pieces-1-lb_560.jpeg">
                <h4>Beef Liverwurst</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>                
                </div>
                <p>$13.18 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002249_bison-adrenal-glands.jpeg">
                <h4>Bison Adrenal Glands</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>                
                </div>
                <p>$21.46 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002870_beef-tongue-2-to-3-lbs-in-size.jpeg">
                <h4>Beef Tongue</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>                
                </div>
                <p>$14 - .5kg</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/resources/img/0002628_beef-braunschweiger-1-lb.jpeg">
                <h4>Beef Braunschweige</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>                
                </div>
                <p>$15.45 - .5kg</p>
            </div>
        </div>
        
    </div>
<!------ featured products ------>
<div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
            <img src="${pageContext.request.contextPath}/resources/img/beefliverwhitebackground.png" class="offer=img">        
            </div>
            <div class="col-2">
                <p>Exclusively Available at Organ Meat</p>
                <h1>Liver</h1>
                   <small>Liver is a nutritional powerhouse packed with essential vitamins and minerals that can supply more than your daily dietary requirement. It is recognized as one of the most nutrient-dense foods in existence, worthy of the title 'Superfood'. An ounce of beef liver supercharges your body with large amounts of vitamin A, B12, C, zinc, copper, iron, protein and more.</small>    
                    <a href="" class="btn">Browse Now</a>
                </div>
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