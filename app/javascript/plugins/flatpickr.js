// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/airbnb.css"

flatpickr(".datepicker", {
  altInput: true
})


flatpickr(".timepicker", {
  enableTime: true,
  noCalendar: true,
  dateFormat: "H:i"
})
