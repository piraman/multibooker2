(function() {
  define(['../../app.module'], function(app) {
    'use strict';
    return app.directive('typeahead', function() {
      return {
        templateUrl: './directives/typeahead/app.typeahead.template.html',
        replace: true,
        restrict: 'E',
        scope: {
          typeaheadApiEndpointIdColumn: '@',
          typeaheadApiEndpointValueColumn: '@',
          typeaheadApiEndpoint: '@',
          typeaheadIdColumn: '@',
          typeaheadIdModel: '=',
          typeaheadValueColumn: '@',
          typeaheadValueModel: '='
        },
        controller: function($scope, $element, $attrs, $transclude, Restangular) {
          $scope.showDropdown = false;
          $scope.items = null;
          $scope.$watch('typeaheadValueModel', function(newval, oldval) {
            return $scope.term = $scope.typeaheadValueModel;
          });
          $scope.toggleDropdown = function() {
            var items, promise;
            if (!$scope.showDropdown) {
              items = Restangular.all($scope.typeaheadApiEndpoint);
              promise = items.getList();
              promise.then(function(items) {
                return $scope.items = items;
              });
            }
            return $scope.showDropdown = !$scope.showDropdown;
          };
          $scope.clearTerm = function() {
            return $scope.term = '';
          };
          return $scope.selectItem = function(index) {
            var selectedItem;
            selectedItem = $scope.items[index];
            console.log(selectedItem);
            $scope.term = selectedItem[$scope.typeaheadApiEndpointValueColumn];
            $scope.typeaheadValueModel = selectedItem[$scope.typeaheadApiEndpointValueColumn];
            $scope.typeaheadIdModel = selectedItem.id;
            return $scope.toggleDropdown();
          };
        }
      };
    });
  });

}).call(this);
