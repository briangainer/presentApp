// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(document).on('click', '.remove_sections', function () {
    // your function here
    $(this).prev('input[type=hidden]').val('1')
	$(this).closest('fieldset').hide()
	event.preventDefault()
});

$(document).on('click', '.add_sections', function () {
    // your function here
    var date = new Date();

    //get number of milliseconds since midnight Jan 1, 1970  
    //and use it for address key 
    var mSec = date.getTime();
    var str = '<fieldset><label for="deck_sections_attributes_999999_title">Section</label><textarea name="deck[sections_attributes][999999][title]" id="deck_sections_attributes_999999_title"></textarea> <br>Time (seconds) <br><input type="number" name="deck[sections_attributes][999999][time]" id="deck_sections_attributes_999999_time" /><input type="hidden" value="false" name="deck[sections_attributes][999999][_destroy]" id="deck_sections_attributes_999999__destroy" /><a class="remove_sections" href="#">remove</a></fieldset>'
    var hey = str.replace("999999", mSec);
    $(this).before(hey)
	event.preventDefault()
});