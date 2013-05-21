<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <link rel="stylesheet" href="resources/css/normalize.css">
    <link rel="stylesheet" href="resources/css/main.css">
    <!--<script src="js/vendor/modernizr-2.6.2.min.js"></script>-->
</head>
<body class="yui3-skin-sam">
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<!--
<div id="main">
    <div id="content">
        <div id="left">
            <div id="nav"></div>
        </div>
        <div id="middle">
            <div id="text"><a href="http://yuilibrary.com/yui/docs/app/#getting-started">yui</a></div>
        </div>
        <div id="right">
        </div>
    </div>
</div>
-->

<script src="http://yui.yahooapis.com/3.10.0/build/yui/yui-min.js"></script>
<script src="resources/js/plugins.js"></script>
<script src="resources/js/main.js"></script>

<script>
    // Create a new YUI instance and populate it with the required modules.
    YUI().use('app', function (Y) {

        Y.HelloView = Y.Base.create('asdf', Y.View, [], {
            render: function() {
                var name = this.get('name');
                this.get('container').set('text', 'hello ' + name);
            }
        });

        var app = new Y.App({
            views: {
                page01: {type: 'HelloView'}
            }
        });

        app.route('/', function(req) {
            this.showView('page01');
        })

        app.route('/:name', function(req) {
            var name = req.params.name;
            this.showView('page01', {name: name});
        })

        app.render().save('/brian');
    });
</script>

</body>
</html>
