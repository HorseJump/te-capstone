<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<div class="main-box">
<h2>Create a Meal</h2>
	<p class="lead">Please use the form below to add recipes to a new meal. Don't worry if you don't have all the information handy - you can always modify the details later.</p>
	<c:url value="/createMeal" var="formAction"/>
	<form id ="mealForm" method="POST" action="${formAction}">

			<div class="formField">
				<label for="mealName">Meal Name:</label><br>
				<input type="text" id="mealName" name="mealDescription" placeholder="Recipe Name"/>
			</div>
			<select name="recipeIds" id="recipeChoice">
				<c:forEach var="recipe" items="${recipes}">
					<option value="${recipe.recipeId}">${recipe.recipeName}</option>
				</c:forEach>
				<option value="" selected>None</option>
			</select><br> +Add a Recipe
				
			<select name="recipeIds" id="recipeChoice">
				<c:forEach var="recipe" items="${recipes}">
					<option value="${recipe.recipeId}">${recipe.recipeName}</option>
				</c:forEach>
				<option value="" selected>None</option>
			</select><br> +Add a Recipe
		<button style="" id="submitMeal" class="btn btn-primary">Submit</button>
				
	</form>
</div>



<c:import url="/WEB-INF/jsp/common/footer.jsp" />