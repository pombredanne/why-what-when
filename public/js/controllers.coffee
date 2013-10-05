class SearchCtrl
    @$inject: ['$scope', '$location', '$http']
    constructor: (@scope, @location, @http)->
        console.log('SearchCtrl init !')

        scope.canBack = false
        scope.canForward = true

        (@http.get '/cubancrisis.json').success (data) =>
            @scope.data = data
            @scope.currentTopic = data

angular.module('www').controller 'SearchCtrl', SearchCtrl