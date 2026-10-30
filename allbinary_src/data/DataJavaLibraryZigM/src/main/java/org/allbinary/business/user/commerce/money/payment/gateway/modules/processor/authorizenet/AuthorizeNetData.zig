//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AuthorizeNetData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData";
    pub const X_LOGIN: ?*String = String.literal("x_login");
    pub const X_TRAN_KEY: ?*String = String.literal("x_tran_key");
    pub const X_VERSION: ?*String = String.literal("x_version");
    pub const X_TEST_REQUEST: ?*String = String.literal("x_test_request");
    pub const X_RELAY_RESPONSE: ?*String = String.literal("x_relay_response");
    pub const X_DUPLICATE_WINDOW: ?*String = String.literal("x_duplicate_window");
    pub const X_FIRST_NAME: ?*String = String.literal("x_first_name");
    pub const X_LAST_NAME: ?*String = String.literal("x_last_name");
    pub const X_COMPANY: ?*String = String.literal("x_company");
    pub const X_ADDRESS: ?*String = String.literal("x_address");
    pub const X_CITY: ?*String = String.literal("x_city");
    pub const X_STATE: ?*String = String.literal("x_state");
    pub const X_ZIP: ?*String = String.literal("x_zip");
    pub const X_COUNTRY: ?*String = String.literal("x_country");
    pub const X_PHONE: ?*String = String.literal("x_phone");
    pub const X_FAX: ?*String = String.literal("x_fax");
    pub const X_CUST_ID: ?*String = String.literal("x_cust_id");
    pub const X_CUSTOMER_IP: ?*String = String.literal("x_customer_ip");
    pub const X_CUSTOMER_TAX_ID: ?*String = String.literal("x_customer_tax_id");
    pub const X_EMAIL_CUSTOMER: ?*String = String.literal("x_email_customer");
    pub const X_EMAIL: ?*String = String.literal("x_email");
    pub const X_EMAIL_MERCHANT: ?*String = String.literal("x_email_merchant");
    pub const X_INVOICE_NUM: ?*String = String.literal("x_invoice_num");
    pub const X_DESCRIPTION: ?*String = String.literal("x_description");
    pub const X_SHIP_TO_FIRST_NAME: ?*String = String.literal("x_ship_to_first_name");
    pub const X_SHIP_TO_LAST_NAME: ?*String = String.literal("x_ship_to_last_name");
    pub const X_SHIP_TO_COMPANY: ?*String = String.literal("x_ship_to_company");
    pub const X_SHIP_TO_ADDRESS: ?*String = String.literal("x_ship_to_address");
    pub const X_SHIP_TO_CITY: ?*String = String.literal("x_ship_to_city");
    pub const X_SHIP_TO_STATE: ?*String = String.literal("x_ship_to_state");
    pub const X_SHIP_TO_ZIP: ?*String = String.literal("x_ship_to_zip");
    pub const X_SHIP_TO_COUNTRY: ?*String = String.literal("x_ship_to_country");
    pub const X_AMOUNT: ?*String = String.literal("x_amount");
    pub const X_CURRENCY_CODE: ?*String = String.literal("x_currency_code");
    pub const X_METHOD: ?*String = String.literal("x_method");
    pub const X_TYPE: ?*String = String.literal("x_type");
    pub const X_RECURRING_BILLING: ?*String = String.literal("x_recurring_billing");
    pub const X_BANK_ABA_CODE: ?*String = String.literal("x_bank_aba_code");
    pub const X_BANK_ACCT_NUM: ?*String = String.literal("x_bank_acct_num");
    pub const X_BANK_ACCT_TYPE: ?*String = String.literal("x_bank_acct_type");
    pub const X_BANK_NAME: ?*String = String.literal("x_bank_name");
    pub const X_BANK_ACCT_NAME: ?*String = String.literal("x_bank_acct_name");
    pub const X_ECHECK_TYPE: ?*String = String.literal("x_echeck_type");
    pub const X_CARD_NUM: ?*String = String.literal("x_card_num");
    pub const X_EXP_DATE: ?*String = String.literal("x_exp_date");
    pub const X_CARD_CODE: ?*String = String.literal("x_card_code");
    pub const X_TRANS_ID: ?*String = String.literal("x_trans_id");
    pub const X_AUTH_CODE: ?*String = String.literal("x_auth_code");
    pub const X_PO_NUM: ?*String = String.literal("x_po_num");
    pub const X_TAX: ?*String = String.literal("x_tax");
    pub const X_TAX_EXEMPT: ?*String = String.literal("x_tax_exempt");
    pub const X_FREIGHT: ?*String = String.literal("x_freight");
    pub const X_DUTY: ?*String = String.literal("x_duty");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

