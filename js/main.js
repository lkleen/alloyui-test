// Create a new YUI instance and populate it with the required modules.
YUI().use('app', function (Y) {

    var app = new Y.App();
    var view = new Y.View();

    view.render = function() {
        this.get('container').set('text', 'hello yui world');
        return this;
    }

    app.render().showView(view, null, {render: true});

    Y.log(app.get('activeView') === view);
    Y.log(app.get('viewContainer').contains(view.get('container')));

});
