// import flatpickr from "flatpickr";

const bookingForm = () => {
  const startDateInput = document.getElementById('booking_date');

  flatpickr(startDateInput, {
    minDate: "today",
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    defaultDate: "today"
  });
};

export { bookingForm };
