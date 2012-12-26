angular.classmap = !(module, map)-->
	for clas, list of map
		let
			directive = ->
				restrict: \C
				link: !(scope, $el) ->
					$el.addClass list

			angular.module module
				.directive clas, directive

angular.classes = angular.classmap \ng

# The deployman app is a typical single-page web application.
# It depends on our common libraries, and configures some routes.
angular.module \deployman, <[ JEFRi jQuery ui ]>

# A variety of bootstrap classes for our semantic classes.
angular.classes do
	navDrop: "btn btn-navbar"
	menu: "navbar navbar-inverse navbar-fixed-top"
	content: "container"
	table: "table-striped"