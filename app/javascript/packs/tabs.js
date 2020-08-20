const editTabs = () => {

  const myProfile = document.querySelector('#my-profile');
  const myBookings = document.querySelector('#my-bookings');
  const cardProduct = document.querySelector('#profile-card-product');
  myProfile.addEventListener('click', (event) => {
    event.preventDefault();
    myProfile.classList.toggle("active");
    myBookings.classList.toggle("active");
  })

  myBookings.addEventListener('click', (event) => {
    event.preventDefault();
    myProfile.classList.toggle("active");
    myBookings.classList.toggle("active");
    cardProduct.classList.toggle('invisible')
  })
  
  editProfile.addEventListener('click', (event) => {
    event.preventDefault();
    myProfile.classList.toggle("active");
    myBookings.classList.toggle("active");
  })
}
export { editTabs }
