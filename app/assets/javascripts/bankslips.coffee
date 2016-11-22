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
            
  
  # Render the image at full size
doc.image('/images/uob.jpg', 100, 100)
   .text('Full size', 100, 85)

# Fit the image within the dimensions
doc.image('/images/uob.jpg', 350, 100, fit: [100, 100])
   .rect(350, 100, 100, 100)
   .stroke()
   .text('Fit', 350, 85)
  
# Stretch the image
doc.image('/images/uob.jpg', 350, 265, width: 200, height: 100)
   .text('Stretch', 350, 250)