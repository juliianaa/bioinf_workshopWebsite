/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(initialize);
function initialize() {
    var checked = [];
    $("#saveTable").click(function () {
        var checked = [];
        $('input[type=checkbox]').each(function () {
            if (this.checked) {
                var checkId = this.id;
                checked.push(checkId);
            }
            $.removeCookie('checked');
            $.cookie('checked', checked, {path: '/'});
            console.log($.cookie('checked'));
        });
        $("#getTable").click(function () {
            var koekje = $.cookie('checked');
            alert(koekje);
        });
    });

}
