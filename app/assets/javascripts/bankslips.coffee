# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
    purposes = $('#bankslip_purpose_id').html()
    $('#bankslip_department_id').change ->
        department = $('#bankslip_department_id :selected').text()
        options = $(purposes).filter("optgroup[label='#{department}']").html()
        if options
            $('#bankslip_purpose_id').html(options)
        else
            $('#bankslip_purpose_id').empty()