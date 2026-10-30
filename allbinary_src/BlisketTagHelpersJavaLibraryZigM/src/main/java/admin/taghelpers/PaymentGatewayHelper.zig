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
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;
const PaymentGatewayInterfaceFactory = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactory.zig").PaymentGatewayInterfaceFactory;
const BasicPaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil.zig").BasicPaymentTypeUtil;
const PaymentGatewayEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory.zig").PaymentGatewayEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlTableUtil = @import("org/allbinary/logic/communication/sql/AbSqlTableUtil.zig").AbSqlTableUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicTable = @import("admin/taghelpers/BasicTable.zig").BasicTable;

pub const PaymentGatewayHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.PaymentGatewayHelper";
    base: BasicTable = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    httpServletRequest: ?*HttpServletRequest = null,
    portion: ?*Portion = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.weblisketSession = null;
        this.httpServletRequest = null;
        this.portion = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicTable.create().*;
        this.initFields();
        { // try
            this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
            this.httpServletRequest = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
            this.portion = Inheritance.callStatic(Portion, "create1", .{ hashMap });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENTERROR })) {
//                 _ = Inheritance.call(this.logUtil.?, "put", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.EXCEPTION, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, e });
//             }
//             std.debug.panic("{any}", .{e});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const paymentGatewayInterface: ?*PaymentGatewayInterface = Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(PaymentGatewayInterfaceFactory.create(), "getInstance", .{ self.httpServletRequest }));
            _ = Inheritance.call(paymentGatewayInterface.?, "setStoreName", .{ self.weblisketSession.?.getStoreName() });
            _ = Inheritance.call(PaymentGatewayEntityFactory.getInstance().?, "add", .{ paymentGatewayInterface });
            const success: ?*String = String.literal("Successfully Added New Payment Gateway");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("insert()") });
            }
            return Inheritance.upcast(?*String, String.plus(success, String.literal("<br/>")));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("add()"), e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(@"error", String.literal("<br>")), String.literal("Exception: ")), e), String.literal("<br>")));
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const paymentGatewayInterface: ?*PaymentGatewayInterface = Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(PaymentGatewayInterfaceFactory.create(), "getInstance", .{ self.httpServletRequest }));
            _ = Inheritance.call(paymentGatewayInterface.?, "setStoreName", .{ self.weblisketSession.?.getStoreName() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Gateway Name: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(paymentGatewayInterface.?, "getName").getName() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" HashMap=") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(Inheritance.call(paymentGatewayInterface.?, "toHashMap", .{ true }))) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("update()") });
            }
            _ = Inheritance.call(PaymentGatewayEntityFactory.getInstance().?, "update", .{ paymentGatewayInterface });
            const success: ?*String = String.literal("Successfully Updated Payment Gateway information");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return Inheritance.upcast(?*String, String.plus(success, String.literal("<br/>")));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to update payment gateway information"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(@"error", String.literal("<br/>")), String.literal("Exception: ")), e), String.literal("<br/>")));
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const paymentGatewayInterface: ?*PaymentGatewayInterface = Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(PaymentGatewayInterfaceFactory.create(), "getInstance", .{ self.httpServletRequest }));
            _ = Inheritance.call(paymentGatewayInterface.?, "setStoreName", .{ self.weblisketSession.?.getStoreName() });
            const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(paymentGatewayInterface.?, "getStoreName").getStoreName());
            const gatewayName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(paymentGatewayInterface.?, "getName").getName());
            _ = Inheritance.call(PaymentGatewayEntityFactory.getInstance().?, "remove", .{ storeName, Inheritance.call(BasicPaymentTypeUtil.getInstance().?, "get", .{ gatewayName }) });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Successfully Removed payment gateway where store name=") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ storeName });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and gateway name=") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ gatewayName });
            const success: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return Inheritance.upcast(?*String, String.plus(success, String.literal("<br/>")));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to remove payment gateway from table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("remove()"), e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(@"error", String.literal("<br/>")), String.literal("Exception: ")), e), String.literal("<br>")));
    }
    

    pub fn drop(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(PaymentGatewayEntityFactory.getInstance().?, "dropTable").dropTable());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to drop payment transaction result table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP, e });
//             }
//             return @"error";
    }
    

    pub fn create(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(PaymentGatewayEntityFactory.getInstance().?, "createTable").createTable());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("create()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to create payment transaction result table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("create()"), e });
//             }
//             return @"error";
    }
    

    pub fn restore(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Restore Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "restoreTable", .{ PaymentGatewayEntityFactory.getInstance(), self.portion }));
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
            const success: ?*String = String.literal("Restore Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "backupTable", .{ PaymentGatewayEntityFactory.getInstance() }));
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
};

