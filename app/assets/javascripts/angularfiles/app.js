var myApp = angular.module('myApp',[]);

myApp.filter('htmlToPlaintext', function(){
    return function(text)
    {
        return  text ? String(text).replace(/<[^>]+>/gm, '').replace( /&nbsp;/g,'' ) : '';
    };
});
