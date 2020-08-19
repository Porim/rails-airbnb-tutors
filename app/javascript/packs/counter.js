const totalCost = () => {
  const endTime = document.querySelector('#booking_end_time_4i')
  const startTime = document.querySelector('#booking_start_time_4i').value
  const hourCost = document.querySelector('#hour-cost').dataset.price
  const totalCost = document.querySelector('#total-cost')

  endTime.addEventListener('change', (event) => {
    totalCost.innerText = `Total cost: ${hourCost * (endTime.value - startTime)}£`
  })
}

export { totalCost }
