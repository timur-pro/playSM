$(function () {
    // 6 create an instance when the DOM is ready
    $('#jstree').jstree({
        "core": {
            "themes": {
                "variant": "large"
            }
        },
        "checkbox": {
            "keep_selected_style": false
        },
        "plugins": ["wholerow", "checkbox"]
    });

    // 7 bind to events triggered on the tree
    $('#jstree').on("changed.jstree", function (e, data) {
        var i, j, r = [];
        for(i = 0, j = data.selected.length; i < j; i++) {
            r.push(data.instance.get_node(data.selected[i]).text);
        }

        console.log(data.selected);
        console.log('Selected: ' + r.join(', '));
    });
    /*
    // 8 interact with the tree - either way is OK
    $('button').on('click', function () {
        $('#jstree').jstree(true).select_node('child_node_1');
        $('#jstree').jstree('select_node', 'child_node_1');
        $.jstree.reference('#jstree').select_node('child_node_1');
    });
    */
});