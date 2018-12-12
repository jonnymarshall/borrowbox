import swal from 'sweetalert2';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-demo');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: 'Reserved!',
        text: 'The lender will reply to you shortly',
        type: 'success'
      })
    });
  }
}

export { bindSweetAlertButtonDemo };
