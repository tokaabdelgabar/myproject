// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).ready(function () {
    // Check (onLoad) if the cookie is there and set the class if it is
    if ($.cookie('highcontrast') == "yes") {
        $("body").addClass("highcontrast");
    }
    // When the element is clicked
    $("a.button-toggle-highcontrast").click(function () {
        if ($.cookie('highcontrast') == "undefined" || $.cookie('highcontrast') == "no") {
            $.cookie('highcontrast', 'yes', {
                expires: 7,
                path: '/'
            });
            $("body").addClass("highcontrast");
        } else {
            $.cookie('highcontrast', 'yes', {
                expires: 7,
                path: '/'
            });
            $("body").addClass("highcontrast");
        }
    });
    $("a.button-toggle-remove").click(function () {
        $('body').removeClass('highcontrast');
        if ($.cookie('highcontrast') == "yes") {
            $.cookie("highcontrast", null, {
                path: '/'
            });
        }
    });
});