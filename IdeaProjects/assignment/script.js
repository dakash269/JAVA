app.controller('controller',['$scope', function($scope) {
        $scope.menuData = [{
            id:1,
            name:'Crustly Garlic',
            type:'main-course',
            price:105,
            quantity:1
        }, {
            id:2,
            name:'French Fries',
            type:'desserts',
            price:105,
            quantity:1
        }, {
            id:3,
            name:'Home Country Fries with Herbs and Chilli Flakes',
            type:'appetizers',
            price:105,
            quantity:1
        }, {
            id:4,
            name:'French Fries with Cheese and Jalapenos',
            type:'beverages',
            price:135,
            quantity:1
        }];
        $scope.tables = [{
            id:1,
            totalAmount:0,
            numberOfItems:0,
            menuData:[]
        }, {
            id:2,
            totalAmount:0,
            numberOfItems:0,
            menuData:[]
        }, {
            id:3,
            totalAmount: 0,
            numberOfItems: 0,
            menuData:[]
        }];
    $scope.sample = angular.merge([], $scope.tables);
    $scope.openModal = function ($index) {
        $scope.index=$index;
        var modal = document.getElementById('modal');
        var span = document.getElementsByClassName("close")[0];
            modal.style.display = "block";
        span.onclick = function() {
            modal.style.display = "none";
        };
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    };
    }])
    // .filter('unique', function() {
    //     return function(collection, keyname) {
    //         var output = [], keys = [];
    //         angular.forEach(collection, function(entry) {
    //             var key = entry[keyname];
    //             if(keys.indexOf(key) === -1) {
    //                 keys.push(key);
    //                 output.push(entry);
    //             }
    //         });
    //
    //         return output;
    //     };
    // })
;

