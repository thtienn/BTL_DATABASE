<?php
// get_payment_modal.php

if (isset($_GET['orderID'])) {
    $orderID = $_GET['orderID'];

    // Thực hiện các truy vấn hoặc xử lý để lấy thông tin cần thiết về đơn hàng

    // Ví dụ: Lấy thông tin về chi nhánh, chương trình khuyến mãi, đơn vị giao hàng, v.v.
    $branchOptions = '<option value="branch1">Chi nhánh 1</option>';
    $promoOptions = '<option value="promo1">Khuyến mãi 1</option>';
    $deliveryOptions = '<option value="delivery1">Đơn vị giao hàng 1</option>';

    echo "
    <div class='modal-header'>
        <h5 class='modal-title' id='paymentModalLabel'>Thanh Toán Đơn Hàng #$orderID</h5>
        <button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
    </div>
    <div class='modal-body'>
        <form>
            <div class='mb-3'>
                <label for='branchSelect' class='form-label'>Chọn Chi Nhánh</label>
                <select class='form-select' id='branchSelect'>
                    $branchOptions
                </select>
            </div>
            <div class='mb-3'>
                <label for='promoSelect' class='form-label'>Chọn Khuyến Mãi</label>
                <select class='form-select' id='promoSelect'>
                    $promoOptions
                </select>
            </div>
            <div class='mb-3'>
                <label for='deliverySelect' class='form-label'>Chọn Đơn Vị Giao Hàng</label>
                <select class='form-select' id='deliverySelect'>
                    $deliveryOptions
                </select>
            </div>
            <!-- Các trường khác như địa điểm giao hàng, số điện thoại, v.v. -->
            <button type='button' class='btn btn-primary' onclick='processPayment($orderID)'>Thanh Toán</button>
        </form>
    </div>";
} else {
    echo "Không có thông tin đơn hàng.";
}
?>
