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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const Portion = @import("org/allbinary/business/installer/Portion.zig").Portion;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const BillingAddressesEntity = @import("org/allbinary/data/tables/user/address/billing/BillingAddressesEntity.zig").BillingAddressesEntity;
const BillingAddressesEntityFactory = @import("org/allbinary/data/tables/user/address/billing/BillingAddressesEntityFactory.zig").BillingAddressesEntityFactory;
const ShippingAddressesEntityFactory = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory.zig").ShippingAddressesEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const WeblisketSessionData = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionData.zig").WeblisketSessionData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlTableUtil = @import("org/allbinary/logic/communication/sql/AbSqlTableUtil.zig").AbSqlTableUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Table = @import("admin/taghelpers/Table.zig").Table;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BillingAddressHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.BillingAddressHelper";
    base: Table = undefined,
    logUtil: ?*LogUtil = null,
    stringUtil: ?*StringUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    request: ?*HttpServletRequest = null,
    userName: ?*String = null,
    streetAddress: ?*StreetAddress = null,
    portion: ?*Portion = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        
        
        this.userName = null;
        this.streetAddress = null;
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Table.create().*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        this.portion = Inheritance.callStatic(Portion, "create1", .{ hashMap });
        _ = this.getAddressForm();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getAddressForm(self: *Self) void {
        self.userName = Inheritance.upcast(@TypeOf(self.userName), Inheritance.call(self.request.?, "getParameter", .{ UserData.USERNAME }));
        if (self.userName == null) {
            self.userName = Inheritance.upcast(@TypeOf(self.userName), Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEUSERNAME }));
        }
        self.streetAddress = Inheritance.callStatic(StreetAddress, "create1", .{ self.request });
    }
    

    pub fn drop(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(Inheritance.callStatic(BillingAddressesEntity, "create1", .{ self.stringUtil.?.EMPTY_STRING }), "drop").drop());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to drop Admin table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP, e });
//             }
//             return @"error";
    }
    

    pub fn create(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(Inheritance.callStatic(BillingAddressesEntity, "create1", .{ self.stringUtil.?.EMPTY_STRING }), "createTable").createTable());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("create()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to create user table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("create()"), e });
//             }
//             return @"error";
    }
    

    pub fn restore(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Restore Successful");
            const billingAddressesEntity: ?*BillingAddressesEntity = Inheritance.callStatic(BillingAddressesEntity, "create1", .{ StringUtil.getInstance().?.EMPTY_STRING });
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "restoreTable", .{ billingAddressesEntity, self.portion }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("restore()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to restore backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("restore()"), e });
//             }
//             return @"error";
    }
    

    pub fn backup(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Backup Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "backupTable", .{ Inheritance.callStatic(BillingAddressesEntity, "create1", .{ StringUtil.getInstance().?.EMPTY_STRING }) }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("backup()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to make backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("backup()"), e });
//             }
//             return @"error";
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Added Billing Address");
            _ = Inheritance.call(Inheritance.call(BillingAddressesEntityFactory.getInstance().?, "getInstance", .{ self.weblisketSession.?.getUserName() }).?, "add", .{ self.streetAddress });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("add()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add Billing Address"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("add()"), e });
//             }
//             return @"error";
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Updated Billing Address");
            _ = Inheritance.call(Inheritance.call(BillingAddressesEntityFactory.getInstance().?, "getInstance", .{ self.weblisketSession.?.getUserName() }).?, "update", .{ self.streetAddress });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Successfull update of a user Billing Address table"), self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed update of a User Billing Address Table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
    

    pub fn setToShippingAddress(self: *Self) ?*String {
        { // try
            const shippingAddressesEntityFactory: ?*ShippingAddressesEntityFactory = Inheritance.upcast(?*ShippingAddressesEntityFactory, ShippingAddressesEntityFactory.getInstance());
            const streetAddress: ?*StreetAddress = Inheritance.upcast(?*StreetAddress, Inheritance.receiverOf(Inheritance.call(shippingAddressesEntityFactory.?, "getInstance", .{ self.weblisketSession.?.getUserName() }).?, "getDefault").getDefault());
            if (streetAddress != null) {
                _ = Inheritance.call(Inheritance.call(shippingAddressesEntityFactory.?, "getInstance", .{ self.weblisketSession.?.getUserName() }).?, "add", .{ streetAddress });
            } else {
                return String.literal("No Shipping Address");
            }
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to Set Billing address to Shipping Address"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setToShippingAddress()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Removed Billing Address");
            _ = Inheritance.call(Inheritance.call(BillingAddressesEntityFactory.getInstance().?, "getInstance", .{ self.weblisketSession.?.getUserName() }).?, "remove", .{ Inheritance.callStatic(Integer, "create1", .{ self.streetAddress.?.getId() }) });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to remove Billing Address"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//             }
//             return @"error";
    }
    

    pub fn set(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Set Billing Address");
            _ = Inheritance.call(Inheritance.call(BillingAddressesEntityFactory.getInstance().?, "getInstance", .{ self.weblisketSession.?.getUserName() }).?, "setDefault", .{ self.streetAddress.?.getId() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("set()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set billing Address"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("set()"), e });
//             }
//             return @"error";
    }
};

