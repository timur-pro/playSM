$(function () {
    $('#container3').jstree({
        'core': {
            'data': {
                'url': function (node) {
                    var rootUrl = 'versionedAssets/javascripts/assets/';
                    // http://localhost:9000/versionedAssets/javascripts/assets/ajax_roots.json
                    // http://localhost:9000/versionedAssets/javascripts/assets/ajax_children.json

                    return node.id === '#' ?
                        rootUrl + 'ajax_roots.json' :
                        rootUrl + 'ajax_children.json';
                },
                'data': function (node) {
                    return {'id': node.id};
                }
            }
        }
    });
});
