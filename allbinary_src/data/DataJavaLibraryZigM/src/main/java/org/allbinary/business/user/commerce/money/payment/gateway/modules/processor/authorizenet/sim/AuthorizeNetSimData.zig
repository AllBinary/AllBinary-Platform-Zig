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
// package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AuthorizeNetSimData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData";
    pub const X_FP_HASH: ?*String = String.literal("x_fp_hash");
    pub const X_FP_SEQUENCE: ?*String = String.literal("x_fp_sequence");
    pub const X_FP_TIMESTAMP: ?*String = String.literal("x_fp_timestamp");
    pub const X_SHOW_FORM: ?*String = String.literal("x_show_form");
    pub const X_HEADER_HTML_PAYMENT_FORM: ?*String = String.literal("x_header_html_payment_form");
    pub const X_FOOTER_HTML_PAYMENT_FORM: ?*String = String.literal("x_footer_html_payment_form");
    pub const X_HEADER_HTML_RECEIPT: ?*String = String.literal("x_header_html_receipt");
    pub const X_FOOTER_HTML_RECEIPT: ?*String = String.literal("x_footer_html_receipt");
    pub const X_RECEIPT_LINK_TEXT: ?*String = String.literal("x_receipt_link_text");
    pub const X_RECEIPT_LINK_URL: ?*String = String.literal("x_receipt_link_url");
    pub const X_LOGO_URL: ?*String = String.literal("x_logo_url");
    pub const X_BACKGROUND_URL: ?*String = String.literal("x_background_url");
    pub const X_COLOR_BACKGROUND: ?*String = String.literal("x_color_background");
    pub const X_COLOR_LINK: ?*String = String.literal("x_color_link");
    pub const X_COLOR_TEXT: ?*String = String.literal("x_color_text");
    pub const X_RELAY_URL: ?*String = String.literal("x_relay_url");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

