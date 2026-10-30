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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasicViewData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.BasicViewData";
    GENERICDIR: ?*String = null,
    USERDIR: ?*String = null,
    ADDRESSDIR: ?*String = null,
    BILLINGADDRESSDIR: ?*String = null,
    SHIPPINGADDRESSDIR: ?*String = null,
    COMMERCEDIR: ?*String = null,
    INVENTORYDIR: ?*String = null,
    BASKETDIR: ?*String = null,
    ITEMDIR: ?*String = null,
    MONEYDIR: ?*String = null,
    SHIPPINGDIR: ?*String = null,
    ORDERDIR: ?*String = null,
    ORDEREMAILDIR: ?*String = null,
    ORDERHISTORYDIR: ?*String = null,
    ORDERREVIEWDIR: ?*String = null,
    PAYMENTDIR: ?*String = null,
    GENERATIONDIR: ?*String = null,
    PRODUCTSDIR: ?*String = null,
    IGNOREXMLXSL: ?*String = null,
    REVIEWORDERVIEWXSL: ?*String = null,
    ORDERVIEWXSL: ?*String = null,
    INVENTORYXSL: ?*String = null,
    BASKETXSL: ?*String = null,
    CHECKOUTBASKETXSL: ?*String = null,
    MINIBASKETXSL: ?*String = null,
    BILLINGADDRESSCHANGEFORMXSL: ?*String = null,
    BILLINGADDRESSINPUTFORMXSL: ?*String = null,
    BILLINGADDRESSVIEWXSL: ?*String = null,
    SHIPPINGADDRESSCHANGEFORMXSL: ?*String = null,
    SHIPPINGADDRESSINPUTFORMXSL: ?*String = null,
    SHIPPINGADDRESSVIEWXSL: ?*String = null,
    NEWTAXADDRESSXSL: ?*String = null,
    EDITTAXADDRESSXSL: ?*String = null,
    SHIPPINGMETHODSXSL: ?*String = null,
    ORDERCUSTOMEREMAILVIEWXSL: ?*String = null,
    ORDERMANAGEREMAILVIEWXSL: ?*String = null,
    EDITCUSTOMERXSL: ?*String = null,
    ORDERHISTORYXSL: ?*String = null,
    PAYMENTVIEWXSL: ?*String = null,
    SUMMARYXSL: ?*String = null,
    PAYMENTGATEWAYOPTIONSXSL: ?*String = null,
    MAKEPAYMENTVIEWXSL: ?*String = null,
    var instance: ?*BasicViewData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicViewData.create();
    }

    fn initFields(this: *Self) void {
        this.GENERICDIR = String.literal("generic/");
        this.USERDIR = Inheritance.upcast(?*String, String.plus(this.GENERICDIR, String.literal("user/")));
        this.ADDRESSDIR = Inheritance.upcast(?*String, String.plus(this.USERDIR, String.literal("address/")));
        this.BILLINGADDRESSDIR = Inheritance.upcast(?*String, String.plus(this.ADDRESSDIR, String.literal("billing/")));
        this.SHIPPINGADDRESSDIR = Inheritance.upcast(?*String, String.plus(this.ADDRESSDIR, String.literal("shipping/")));
        this.COMMERCEDIR = Inheritance.upcast(?*String, String.plus(this.USERDIR, String.literal("commerce/")));
        this.INVENTORYDIR = Inheritance.upcast(?*String, String.plus(this.COMMERCEDIR, String.literal("inventory/")));
        this.BASKETDIR = Inheritance.upcast(?*String, String.plus(this.INVENTORYDIR, String.literal("basket/")));
        this.ITEMDIR = Inheritance.upcast(?*String, String.plus(this.INVENTORYDIR, String.literal("item/")));
        this.MONEYDIR = Inheritance.upcast(?*String, String.plus(this.COMMERCEDIR, String.literal("money/")));
        this.SHIPPINGDIR = Inheritance.upcast(?*String, String.plus(this.COMMERCEDIR, String.literal("shipping/")));
        this.ORDERDIR = Inheritance.upcast(?*String, String.plus(this.INVENTORYDIR, String.literal("order/")));
        this.ORDEREMAILDIR = Inheritance.upcast(?*String, String.plus(this.ORDERDIR, String.literal("email/")));
        this.ORDERHISTORYDIR = Inheritance.upcast(?*String, String.plus(this.ORDERDIR, String.literal("history/")));
        this.ORDERREVIEWDIR = Inheritance.upcast(?*String, String.plus(this.ORDERDIR, String.literal("review/")));
        this.PAYMENTDIR = Inheritance.upcast(?*String, String.plus(this.MONEYDIR, String.literal("payment/")));
        this.GENERATIONDIR = Inheritance.upcast(?*String, String.plus(this.GENERICDIR, String.literal("generation/")));
        this.PRODUCTSDIR = Inheritance.upcast(?*String, String.plus(this.GENERICDIR, String.literal("products/")));
        this.IGNOREXMLXSL = Inheritance.upcast(?*String, String.plus(this.GENERICDIR, String.literal("ignoreXmlView.xsl")));
        this.REVIEWORDERVIEWXSL = Inheritance.upcast(?*String, String.plus(this.ORDERREVIEWDIR, String.literal("reviewOrderView.xsl")));
        this.ORDERVIEWXSL = this.REVIEWORDERVIEWXSL;
        this.INVENTORYXSL = Inheritance.upcast(?*String, String.plus(this.INVENTORYDIR, String.literal("inventory.xsl")));
        this.BASKETXSL = Inheritance.upcast(?*String, String.plus(this.BASKETDIR, String.literal("basket.xsl")));
        this.CHECKOUTBASKETXSL = Inheritance.upcast(?*String, String.plus(this.BASKETDIR, String.literal("staticBasket.xsl")));
        this.MINIBASKETXSL = Inheritance.upcast(?*String, String.plus(this.BASKETDIR, String.literal("miniBasket.xsl")));
        this.BILLINGADDRESSCHANGEFORMXSL = Inheritance.upcast(?*String, String.plus(this.BILLINGADDRESSDIR, String.literal("billingAddressChangeForm.xsl")));
        this.BILLINGADDRESSINPUTFORMXSL = Inheritance.upcast(?*String, String.plus(this.BILLINGADDRESSDIR, String.literal("billingAddressInputForm.xsl")));
        this.BILLINGADDRESSVIEWXSL = Inheritance.upcast(?*String, String.plus(this.BILLINGADDRESSDIR, String.literal("billingAddressView.xsl")));
        this.SHIPPINGADDRESSCHANGEFORMXSL = Inheritance.upcast(?*String, String.plus(this.SHIPPINGADDRESSDIR, String.literal("shippingAddressChangeForm.xsl")));
        this.SHIPPINGADDRESSINPUTFORMXSL = Inheritance.upcast(?*String, String.plus(this.SHIPPINGADDRESSDIR, String.literal("shippingAddressInputForm.xsl")));
        this.SHIPPINGADDRESSVIEWXSL = Inheritance.upcast(?*String, String.plus(this.SHIPPINGADDRESSDIR, String.literal("shippingAddressView.xsl")));
        this.NEWTAXADDRESSXSL = Inheritance.upcast(?*String, String.plus(this.SHIPPINGADDRESSDIR, String.literal("newTaxAddressView.xsl")));
        this.EDITTAXADDRESSXSL = Inheritance.upcast(?*String, String.plus(this.SHIPPINGADDRESSDIR, String.literal("editTaxAddressView.xsl")));
        this.SHIPPINGMETHODSXSL = Inheritance.upcast(?*String, String.plus(this.SHIPPINGDIR, String.literal("shippingMethods.xsl")));
        this.ORDERCUSTOMEREMAILVIEWXSL = Inheritance.upcast(?*String, String.plus(this.ORDEREMAILDIR, String.literal("orderCustomerEmailView.xsl")));
        this.ORDERMANAGEREMAILVIEWXSL = Inheritance.upcast(?*String, String.plus(this.ORDEREMAILDIR, String.literal("orderManagerEmailView.xsl")));
        this.EDITCUSTOMERXSL = Inheritance.upcast(?*String, String.plus(this.USERDIR, String.literal("editCustomerInputForm.xsl")));
        this.ORDERHISTORYXSL = Inheritance.upcast(?*String, String.plus(this.ORDERHISTORYDIR, String.literal("orderHistory.xsl")));
        this.PAYMENTVIEWXSL = Inheritance.upcast(?*String, String.plus(this.PAYMENTDIR, String.literal("paymentView.xsl")));
        this.SUMMARYXSL = Inheritance.upcast(?*String, String.plus(this.ITEMDIR, String.literal("summary/summary.xsl")));
        this.PAYMENTGATEWAYOPTIONSXSL = Inheritance.upcast(?*String, String.plus(this.PAYMENTDIR, String.literal("paymentGatewayOptions.xsl")));
        this.MAKEPAYMENTVIEWXSL = Inheritance.upcast(?*String, String.plus(String.plus(this.PAYMENTDIR, String.literal("invoice/")), String.literal("makePayment.xsl")));
    }
    

    pub fn getInstance() ?*BasicViewData {
        return Inheritance.upcast(?*BasicViewData, BasicViewData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

