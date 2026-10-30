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
// package org.allbinary.globals

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GLOBALS2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.GLOBALS2";
    pub const GETCURRENTLOCATION: ?*String = String.literal("Get Current Location");
    pub const GETCURRENTHOMELOCATION: ?*String = String.literal("Get Current Home Location");
    pub const GENERATEALLSTORES: ?*String = String.literal("Generate All Stores");
    pub const LICENSEAGREEMENT: ?*String = String.literal("License Agreement");
    pub const CREATEDATABASES: ?*String = String.literal("Create Databases");
    pub const VIEWNAME: ?*String = String.literal("VIEW_NAME");
    pub const SETSHIPPINGTYPE: ?*String = String.literal("Set Shipping Type");
    pub const VIEWSUMMARY: ?*String = String.literal("View Summary");
    pub const SET: ?*String = String.literal("Set");
    pub const SELECT: ?*String = String.literal("Select");
    pub const SELECTNEW: ?*String = String.literal("Select New");
    pub const SELECTEXISTING: ?*String = String.literal("Select Existing");
    pub const PROCESS: ?*String = String.literal("Process");
    pub const LOGINSUCCESS: ?*String = String.literal("Login Successful");
    pub const LOGINFAILED: ?*String = String.literal("Login Failed");
    pub const NONE: ?*String = String.literal("None");
    pub const TOP: ?*String = String.literal("Top");
    pub const LEFT: ?*String = String.literal("Left");
    pub const RIGHT: ?*String = String.literal("Right");
    pub const BACK: ?*String = String.literal("Back");
    pub const BOTTOM: ?*String = String.literal("Bottom");
    pub const FRONT: ?*String = String.literal("Front");
    pub const AUTHORIZE: ?*String = String.literal("Authorize");
    pub const AUTHORIZEANDEVALBODY: ?*String = String.literal("Authorize AND EVAL BODY");
    pub const AUTHORIZEANDEVALBODYONERROR: ?*String = String.literal("Authorize AND EVAL BODY On Error");
    pub const AUTHORIZEORDEREVALBODYONERROR: ?*String = String.literal("Authorize Order Eval On Error");
    pub const AUTHORIZEFORMEVALBODYONERROR: ?*String = String.literal("Authorize Form Eval On Error");
    pub const AUTHORIZEORDERANDSKIPBODY: ?*String = String.literal("Authorize Order Skip");
    pub const AUTHORIZEORDERANDEVALBODY: ?*String = String.literal("Authorize Order Eval");
    pub const EDITPRICING: ?*String = String.literal("Edit Pricing");
    pub const UPDATEPRICING: ?*String = String.literal("Update Pricing");
    pub const SETPAYMENTMETHOD: ?*String = String.literal("Set Payment Method");
    pub const BACKUP: ?*String = String.literal("Backup");
    pub const RESTORE: ?*String = String.literal("Restore");
    pub const SUMMARY: ?*String = String.literal("Summary");
    pub const DESCRIPTION: ?*String = String.literal("Description");
    pub const IMG: ?*String = String.literal("img");
    pub const HREF: ?*String = String.literal("href");
    pub const KEYWORD: ?*String = String.literal("keyword");
    pub const TYPE: ?*String = String.literal("TYPE");
    pub const DATA: ?*String = String.literal("DATA");
    pub const NUM: ?*String = String.literal("NUM");
    pub const PRICE: ?*String = String.literal("PRICE");
    pub const REGISTER: ?*String = String.literal("Register");
    pub const CHECKOUT: ?*String = String.literal("Checkout");
    pub const ADMINCOMMAND: ?*String = String.literal("AdminCommand");
    pub const PROCESSBODYIFNOTAUTHENTICATED: ?*String = String.literal("Not Authenticated");
    pub const PROCESSBODYIFAUTHENTICATED: ?*String = String.literal("Authenticated");
    pub const PROCESSTRANSACTION: ?*String = String.literal("Process Transaction");
    pub const NEWPASSWORD: ?*String = String.literal("New Password");
    pub const CHANGEPASSWORD: ?*String = String.literal("Change Password");
    pub const JDBCDRIVER: ?*String = String.literal("Jdbc Driver");
    pub const WEBAPPPATH: ?*String = String.literal("Webapp Path");
    pub const AMOUNTVALUE: ?*String = String.literal("Amount Value");
    pub const GETORDERIDFROMSESSION: ?*String = String.literal("Get Order Id From Session");
    pub const SETUPPAYMENTMETHODS: ?*String = String.literal("Setup Payment Methods");
    pub const CANCELSTOREFRONT: ?*String = String.literal("Cancel Store Front");
    pub const ADJUST: ?*String = String.literal("Adjust");
    pub const ISASUBSET: ?*String = String.literal("Is a Subset");
    pub const NOTASUBSET: ?*String = String.literal("Not a Subset");
    pub const GENERATE: ?*String = String.literal("Generate");
    pub const VIEW: ?*String = String.literal("View");
    pub const EDIT: ?*String = String.literal("Edit");
    pub const NEW: ?*String = String.literal("New");
    pub const SEARCH: ?*String = String.literal("Search");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

