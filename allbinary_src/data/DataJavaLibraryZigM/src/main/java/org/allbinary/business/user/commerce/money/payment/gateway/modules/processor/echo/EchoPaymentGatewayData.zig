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
// package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const EchoPaymentGatewayData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData";
    pub var TRANSACTION_TYPE: ?*String = String.literal("transaction_type");
    pub var MERCHANT_ECHO_ID: ?*String = String.literal("merchant_echo_id");
    pub var ORDER_TYPE: ?*String = String.literal("order_type");
    pub var MERCHANT_PIN: ?*String = String.literal("merchant_pin");
    pub var ISP_ECHO_ID: ?*String = String.literal("isp_echo_id");
    pub var ISP_PIN: ?*String = String.literal("isp_pin");
    pub var BILLING_IP_ADDRESS: ?*String = String.literal("billing_ip_address");
    pub var MERCHANT_EMAIL: ?*String = String.literal("merchant_email");
    pub var AUTHORIZATION: ?*String = String.literal("authorization");
    pub var BILLING_PREFIX: ?*String = String.literal("billing_prefix");
    pub var BILLING_NAME: ?*String = String.literal("billing_name");
    pub var BILLING_FIRST_NAME: ?*String = String.literal("billing_first_name");
    pub var BILLING_LAST_NAME: ?*String = String.literal("billing_last_name");
    pub var BILLING_COMPANY_NAME: ?*String = String.literal("billing_company_name");
    pub var BILLING_ADDRESS1: ?*String = String.literal("billing_address1");
    pub var BILLING_ADDRESS2: ?*String = String.literal("billing_address2");
    pub var BILLING_CITY: ?*String = String.literal("billing_city");
    pub var BILLING_STATE: ?*String = String.literal("billing_state");
    pub var BILLING_ZIP: ?*String = String.literal("billing_zip");
    pub var BILLING_COUNTRY: ?*String = String.literal("billing_country");
    pub var BILLING_PHONE: ?*String = String.literal("billing_phone");
    pub var BILLING_FAX: ?*String = String.literal("billing_fax");
    pub var BILLING_EMAIL: ?*String = String.literal("billing_email");
    pub var CC_NUMBER: ?*String = String.literal("cc_number");
    pub var CCEXP_MONTH: ?*String = String.literal("ccexp_month");
    pub var CCEXP_YEAR: ?*String = String.literal("ccexp_year");
    pub var CNP_RECURRING: ?*String = String.literal("cnp_recurring");
    pub var cnp_security: ?*String = String.literal("cnp_security");
    pub var COUNTER: ?*String = String.literal("counter");
    pub var DEBUG: ?*String = String.literal("debug");
    pub var EC_ACCOUNT: ?*String = String.literal("ec_account");
    pub var EC_ACCOUNT_TYPE: ?*String = String.literal("ec_account_type");
    pub var EC_ADDRESS1: ?*String = String.literal("ec_address1");
    pub var EC_ADDRESS2: ?*String = String.literal("ec_address2");
    pub var EC_BANK_NAME: ?*String = String.literal("ec_bank_name");
    pub var EC_CITY: ?*String = String.literal("ec_city");
    pub var EC_EMAIL: ?*String = String.literal("ec_email");
    pub var EC_FIRST_NAME: ?*String = String.literal("ec_first_name");
    pub var EC_ID_COUNTRY: ?*String = String.literal("ec_id_country");
    pub var EC_ID_EXP_MM: ?*String = String.literal("ec_id_exp_mm");
    pub var EC_ID_EXP_DD: ?*String = String.literal("ec_id_exp_dd");
    pub var EC_ID_EXP_YY: ?*String = String.literal("ec_id_exp_yy");
    pub var EC_ID_NUMBER: ?*String = String.literal("ec_id_number");
    pub var EC_ID_STATE: ?*String = String.literal("ec_id_state");
    pub var EC_ID_TYPE: ?*String = String.literal("ec_id_type");
    pub var EC_LAST_NAME: ?*String = String.literal("ec_last_name");
    pub var EC_BUSINESS_NAME: ?*String = String.literal("ec_BUSINESS_NAME");
    pub var EC_LICENSE_NUMBER: ?*String = String.literal("ec_LICENSE_NUMBER");
    pub var EC_LICENSE_STATE: ?*String = String.literal("ec_LICENSE_STATE");
    pub var EC_MERCHANT_REF: ?*String = String.literal("ec_MERCHANT_REF");
    pub var EC_NBDS_CODE: ?*String = String.literal("ec_NBDS_CODE");
    pub var EC_OTHER_NAME: ?*String = String.literal("ec_other_name");
    pub var EC_PAYEE: ?*String = String.literal("ec_payee");
    pub var EC_PAYMENT_TYPE: ?*String = String.literal("ec_payment_type");
    pub var EC_RT: ?*String = String.literal("ec_rt");
    pub var EC_SERIAL_NUMBER: ?*String = String.literal("ec_serial_number");
    pub var EC_STATE: ?*String = String.literal("ec_state");
    pub var EC_TRANSACTION_DT: ?*String = String.literal("ec_transaction_dt");
    pub var EC_ZIP: ?*String = String.literal("ec_zip");
    pub var GRAND_TOTAL: ?*String = String.literal("grand_total");
    pub var MERCHANT_TRACE_NBR: ?*String = String.literal("merchant_trace_nbr");
    pub var ORDER_NUMBER: ?*String = String.literal("order_number");
    pub var ORIGINAL_AMOUNT: ?*String = String.literal("original_amount");
    pub var ORIGINAL_TRANDATE_MM: ?*String = String.literal("original_trandate_mm");
    pub var ORIGINAL_TRANDATE_DD: ?*String = String.literal("original_trandate_dd");
    pub var ORIGINAL_TRANDATE_YYYY: ?*String = String.literal("original_trandate_yyyy");
    pub var ORIGINAL_REFERENCE: ?*String = String.literal("original_reference");
    pub var PRODUCT_DESCRIPTION: ?*String = String.literal("product_description");
    pub var PURCHASE_ORDER_NUMBER: ?*String = String.literal("purchase_order_number");
    pub var SALES_TAX: ?*String = String.literal("sales_tax");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

