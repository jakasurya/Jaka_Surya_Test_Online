const baseUrl_ = 'https://mockva.daksa.co.id/mockva-rest';

// Login POST /res/auth/login
var loginRequest = Uri.parse('$baseUrl_/rest/auth/login');

// Logout DELETE /res/auth/logout
var logoutRequest = Uri.parse('$baseUrl_/rest/auth/logout');

// Detail Account GET /res/account/detail
var detailAccountRequest = '$baseUrl_/rest/account/detail';

// Account Transaction Log GET /rest/account/transaction/log
var historyRequest = '$baseUrl_/rest/account/transaction/log';

// Transfer Inquiry POST /rest/account/transaction/transferInquiry
var transferInquiryRequest =
    Uri.parse('$baseUrl_/rest/account/transaction/transferInquiry');
var transferConfirmRequest =
    Uri.parse('$baseUrl_/rest/account/transaction/transfer');
