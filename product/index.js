$(".btn-edit").click(function (e) {
    const Name = this.getAttribute('data-bs-Name')
    $("#Edit input[name='Name']").val(Name);
    const Product_ID = this.getAttribute('data-bs-Product_ID')
    $("#Edit input[name='Product_ID']").val(Product_ID);
    const Description = this.getAttribute('data-bs-Description')
    $("#Edit textarea[name='Description']").val(Description);
    const Price = this.getAttribute('data-bs-Price')
    $("#Edit input[name='Price']").val(Price);
    $('#Edit').modal('show');
});

$(".btn-delete").click(function (e) {
    const Name = this.getAttribute('data-bs-Name')
    //console.log(username);
    $("#Delete input[name='Name']").val(Name);
    $('#Delete').modal('show');
});
$(document).ready(function () {
    $('#tab-product').DataTable();
});