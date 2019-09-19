$(function() {
    $('#container').jstree({
        'core' : {



            'data' : [
                {
                    "text" : "Root node",
                    "state" : {"opened" : true },
                    "children" : [
                        {
                            "text" : "Child node 1",
                            "state" : { "selected" : true },
                            "icon" : "glyphicon glyphicon-flash"
                        },
                        { "text" : "Child node 2", "state" : { "disabled" : true } }
                    ]
                }
            ]


            /*
            'data' : {
                "url" : "//www.jstree.com/fiddle/",
                "dataType" : "json" // needed only if you do not supply JSON headers
            }
            */

        }
    });
});
