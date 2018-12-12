import swal from 'sweetalert2';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-demo');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: 'Confirmed!',
        text: 'You have reserved the item',
        type: 'success',
        confirmButtonText: 'Continue'
      })
    });
  }
}

export { bindSweetAlertButtonDemo };
