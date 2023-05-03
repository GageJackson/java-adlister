<%--
  Created by IntelliJ IDEA.
  User: gagejackson
  Date: 5/2/23
  Time: 11:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="mvc" />
    </jsp:include>
<body>
<jsp:include page="partials/navbar.jsp" />

<div class="container">
    <h1 class="mt-5">Create your pizza masterpiece!</h1>
    <form action="/mvc" method="POST" class="mt-3">
        <div class="row mb-3">
            <div class="col-6">
                <div class="form-group mb-3">
                    <h4>How big do you want your pizza?</h4>
                    <label for="pizza_size" class="form-check-label"></label>
                    <select id="pizza_size" name="pizza_size" class="form-control">
                        <option value="8">8in</option>
                        <option value="12">12in</option>
                        <option value="16">16in</option>
                        <option value="20">20in</option>
                        <option value="40">40in</option>
                    </select>
                </div>

                <div class="form-group mb-3">
                    <h4>Crusty crust</h4>
                    <label for="pizza_crust" class="form-check-label"></label>
                    <select id="pizza_crust" name="pizza_crust" class="form-control">
                        <option value="thin">thin</option>
                        <option value="regular">regular</option>
                        <option value="stuffed">stuffed</option>
                    </select>
                </div>

                <div class="form-group mb-3">
                    <h4>Feeling Saucy?</h4>
                    <label for="pizza_sauce" class="form-check-label"></label>
                    <select id="pizza_sauce" name="pizza_sauce" class="form-control">
                        <option value="traditional">traditional</option>
                        <option value="garlic">garlic</option>
                        <option value="spicy">spicy</option>
                    </select>
                </div>
                <div class="row">
                    <div class="form-group col-6">
                        <h4>We have the...m3ats</h4>
                        <div class="form-group">
                            <label for="pizza_meats_pepperoni" class="form-check-label">Pepperoni</label>
                            <input id="pizza_meats_pepperoni" type="checkbox" name="pizza_meats" value="pepperoni"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_meats_sausage" class="form-check-label">Sausage</label>
                            <input id="pizza_meats_sausage" type="checkbox" name="pizza_meats" value="sausage"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_meats_ham" class="form-check-label">Ham</label>
                            <input id="pizza_meats_ham" type="checkbox" name="pizza_meats" value="ham"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_meats_phillySteak" class="form-check-label">Philly Steak</label>
                            <input id="pizza_meats_phillySteak" type="checkbox" name="pizza_meats" value="philly steak"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_meats_beef" class="form-check-label">Beef</label>
                            <input id="pizza_meats_beef" type="checkbox" name="pizza_meats" value="beef"  class="form-check-input">
                        </div>
                    </div>

                    <div class="form-group col-6">
                        <h4>Stop, veggie time!</h4>
                        <div class="form-group">
                            <label for="pizza_veggies_onion" class="form-check-label">Onions</label>
                            <input id="pizza_veggies_onion" type="checkbox" name="pizza_veggies" value="onions"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_veggies_greenPepper" class="form-check-label">Green Peppers</label>
                            <input id="pizza_veggies_greenPepper" type="checkbox" name="pizza_veggies" value="green peppers"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_veggies_redPepper" class="form-check-label">Red Peppers</label>
                            <input id="pizza_veggies_redPepper" type="checkbox" name="pizza_veggies" value="red peppers"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_veggies_jalapeno" class="form-check-label">Jalapenos</label>
                            <input id="pizza_veggies_jalapeno" type="checkbox" name="pizza_veggies" value="jalapenos"  class="form-check-input">
                        </div>
                        <div class="form-group">
                            <label for="pizza_veggies_mushrooms" class="form-check-label">Mushrooms</label>
                            <input id="pizza_veggies_mushrooms" type="checkbox" name="pizza_veggies" value="mushrooms"  class="form-check-input">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 bg-light">
                <h4>Where you at?</h4>
                <div class="form-group row gx-2 gy-3 mb-3">
                    <div class="form-group col-12">
                        <label for="address_street">Address</label>
                        <input id="address_street" type="text" name="address_street"
                               class="form-control" placeholder="1234 Main St">
                    </div>
                    <div class="form-group col-12">
                        <label for="address_street2">Address 2</label>
                        <input id="address_street2" type="text" name="address_street2"
                               class="form-control" placeholder="Apartment, studio, or floor">
                    </div>
                    <div class="form-group col-6">
                        <label for="address_city">City</label>
                        <input id="address_city" type="text" name="address_city" class="form-control">
                    </div>
                    <div class="form-group col-2">
                        <label for="address_state">State</label>
                        <input id="address_state" type="text" name="address_state" class="form-control">
                    </div>
                    <div class="form-group col-4">
                        <label for="address_zip">Zipcode</label>
                        <input id="address_zip" type="text" name="address_zip" class="form-control">
                    </div>
                </div>
            </div>
        </div>

        <input type="submit"  class="btn btn-primary btn-block">
    </form>
</div>

<div class="container">
    <h1>Your Order</h1>
    <p><span class="fw-bold">Pizza Size: </span>${pizza_size}</p>
    <p><span class="fw-bold">Pizza Crust: </span>${pizza_crust}</p>
    <p><span class="fw-bold">Pizza Sauce: </span>${pizza_sauce}</p>
    <p><span class="fw-bold">Pizza Meats: </span>${pizza_meats}</p>
    <p><span class="fw-bold">Pizza Veggies: </span>${pizza_veggies}</p>
    <p><span class="fw-bold">Your Address: </span>${address_street}, ${address_street2}, ${address_city},${address_state} ${address_zip}</p>
</div>

</body>
</html>
