const ratingIncrementer = () => {
const counter = document.querySelector(".counter-rating");
const buttons = document.querySelectorAll(".btn.round-bordered.incrementer");
const minus = buttons[0];
const plus = buttons[1];
console.log(buttons)
const incrementer = (event) => {
  const current = event.currentTarget.dataset.offset;
  const increment = +current + +1;
  counter.innerText = increment;
  event.currentTarget.dataset.offset = increment;
};

const decrementor = (event) => {
  const current = event.currentTarget.dataset.offset;
  const increment = +plus.dataset.offset - 1;
  counter.innerText = increment;
  plus.dataset.offset = increment;
};


plus.addEventListener('click', (event) => {
  event.preventDefault();
  incrementer(event);
});

minus.addEventListener('click', (event) => {
  if (plus.dataset.offset < 2) {
    event.preventDefault();
  } else {
    event.preventDefault();
    decrementor(event);
  }
});
}

export { ratingIncrementer } 
