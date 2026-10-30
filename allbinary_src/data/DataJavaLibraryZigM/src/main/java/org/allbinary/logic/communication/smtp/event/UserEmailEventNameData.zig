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
// package org.allbinary.logic.communication.smtp.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;

pub const UserEmailEventNameData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.event.UserEmailEventNameData";
    eventNameId: i32 = 0,
    eventHandlerName: ?*String = null,
    var userNameEvenNameHashMap: ?*HashMap = undefined;
    var nextId: i32 = 0;
    pub var INSTALLER: ?*UserEmailEventNameData = undefined;
    pub var EXCEPTION: ?*UserEmailEventNameData = undefined;
    pub var LOGGEDEXCEPTION: ?*UserEmailEventNameData = undefined;
    pub var ERROR: ?*UserEmailEventNameData = undefined;
    pub var OUTOFMEMORY: ?*UserEmailEventNameData = undefined;
    pub var ADMINGENERATINGSTATICPAGES: ?*UserEmailEventNameData = undefined;
    pub var STOREERROROCCURRED: ?*UserEmailEventNameData = undefined;
    pub var STOREOUTOFMEMORY: ?*UserEmailEventNameData = undefined;
    pub var STORECREATED: ?*UserEmailEventNameData = undefined;
    pub var STOREOPENED: ?*UserEmailEventNameData = undefined;
    pub var STORECLOSED: ?*UserEmailEventNameData = undefined;
    pub var STOREGENERATINGSTATICPAGES: ?*UserEmailEventNameData = undefined;
    pub var PRODUCTISOUT: ?*UserEmailEventNameData = undefined;
    pub var PRODUCTISAVAILABLE: ?*UserEmailEventNameData = undefined;
    pub var PRODUCTISOLD: ?*UserEmailEventNameData = undefined;
    pub var PRODUCTISONSALE: ?*UserEmailEventNameData = undefined;
    pub var PRODUCTSALEISOVER: ?*UserEmailEventNameData = undefined;
    pub var ORDERPREPROCESSING: ?*UserEmailEventNameData = undefined;
    pub var ORDERPROCESSING: ?*UserEmailEventNameData = undefined;
    pub var ORDERCANCELLED: ?*UserEmailEventNameData = undefined;
    pub var ORDERPARTIALLYSHIPPED: ?*UserEmailEventNameData = undefined;
    pub var ORDERSHIPPED: ?*UserEmailEventNameData = undefined;
    pub var QUOTEREQUEST: ?*UserEmailEventNameData = undefined;
    pub var NEWPASSWORD: ?*UserEmailEventNameData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        userNameEvenNameHashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        INSTALLER = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Installer") });
        EXCEPTION = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Exception") });
        LOGGEDEXCEPTION = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Logged Exception") });
        ERROR = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Error") });
        OUTOFMEMORY = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Out Of Memory Error") });
        ADMINGENERATINGSTATICPAGES = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Admin Generating Static Pages") });
        STOREERROROCCURRED = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Store Error Occurred") });
        STOREOUTOFMEMORY = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Store Out Of Memory Error") });
        STORECREATED = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Store Created") });
        STOREOPENED = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Store Opened") });
        STORECLOSED = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Store Closed") });
        STOREGENERATINGSTATICPAGES = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Store Generating Static Pages") });
        PRODUCTISOUT = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Product Is Out") });
        PRODUCTISAVAILABLE = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Product Is Available") });
        PRODUCTISOLD = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Product Is Old") });
        PRODUCTISONSALE = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Product Is On Sale") });
        PRODUCTSALEISOVER = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Product Sale Is Over") });
        ORDERPREPROCESSING = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ OrderHistoryData.PREPROCESSING });
        ORDERPROCESSING = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ OrderHistoryData.PROCESSING });
        ORDERCANCELLED = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ OrderHistoryData.CANCELLED });
        ORDERPARTIALLYSHIPPED = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ OrderHistoryData.PARTIALLYSHIPPED });
        ORDERSHIPPED = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ OrderHistoryData.SHIPPED });
        QUOTEREQUEST = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("Quote Request") });
        NEWPASSWORD = Inheritance.callStatic(UserEmailEventNameData, "create1", .{ String.literal("New Password") });
    }

    fn initFields(this: *Self) void {
        this.eventNameId = 0;
        
    }
    

    pub fn create1(eventHandlerName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.eventHandlerName = eventHandlerName;
        _ = this.initNextId();
        _ = Inheritance.call(UserEmailEventNameData.userNameEvenNameHashMap.?, "put", .{ this.eventHandlerName, this });
        return this;
    }
    

    pub fn initNextId(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.eventNameId = UserEmailEventNameData.nextId;
        UserEmailEventNameData.nextId += 1;
    }
    

    pub fn isEvent(self: *Self, userEmailEventNameString: ?*String) bool {
        _ = self;
        return Inheritance.call(UserEmailEventNameData.userNameEvenNameHashMap.?, "containsKey", .{ userEmailEventNameString });
    }
    

    // throws Exception
    pub fn getInstance(userEmailEventNameString: ?*String) ?*UserEmailEventNameData {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const userEmailEventNameData: ?*UserEmailEventNameData = Inheritance.cast(?*UserEmailEventNameData, Inheritance.call(UserEmailEventNameData.userNameEvenNameHashMap.?, "get", .{ userEmailEventNameString }));
        if (userEmailEventNameData == null) {
            std.debug.panic("{any}", .{error.Exception});
        } else {
            return userEmailEventNameData;
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.eventHandlerName;
    }
};

