const editTabs = () => {

  const myProfile = document.querySelector('#my-profile');
  const myBookings = document.querySelector('#my-bookings');
  const cardProduct = document.querySelector('#profile-card-product');
  const cardBookings = document.querySelector('#profile-bookings');
  myProfile.addEventListener('click', (event) => {
    event.preventDefault();
    console.log(cardProduct);
    if (cardProduct.classList.value === 'invisible') {

      myProfile.classList.toggle("active");
      myBookings.classList.toggle("active");
      cardProduct.classList.toggle('invisible');
      cardBookings.id = 'profile-bookings';
    }
    console.log(cardProduct.id)
  })

  myBookings.addEventListener('click', (event) => {
    event.preventDefault();
    if (myBookings.classList.value != 'active') {
      myProfile.classList.toggle("active");
      myBookings.classList.toggle("active");
      cardProduct.classList.toggle('invisible');
      // cardBookings.classList.remove('invisible');
      cardBookings.id = 'visible';
    }
  })

  // editProfile.addEventListener('click', (event) => {
  //   event.preventDefault();
  //   myProfile.classList.toggle("active");
  //   myBookings.classList.toggle("active");
  // })
}
export { editTabs }
