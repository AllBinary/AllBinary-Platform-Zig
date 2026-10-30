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
const PaymentFactory = @import("org/allbinary/business/user/commerce/money/payment/PaymentFactory.zig").PaymentFactory;
const PaymentInterface = @import("org/allbinary/business/user/commerce/money/payment/PaymentInterface.zig").PaymentInterface;
const PaymentEntity = @import("org/allbinary/data/tables/user/commerce/money/payment/PaymentEntity.zig").PaymentEntity;
const PaymentEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityFactory.zig").PaymentEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlTableUtil = @import("org/allbinary/logic/communication/sql/AbSqlTableUtil.zig").AbSqlTableUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const Table = @import("admin/taghelpers/Table.zig").Table;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const PaymentHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.PaymentHelper";
    base: Table = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    request: ?*HttpServletRequest = null,
    value: ?*String = null,
    portion: ?*Portion = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        this.value = null;
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Table.create().*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        this.portion = Inheritance.callStatic(Portion, "create1", .{ hashMap });
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.value = Inheritance.upcast(@TypeOf(self.value), Inheritance.call(self.request.?, "getParameter", .{ String.literal("VALUE") }));
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Added Payment");
            const paymentEntity: ?*PaymentEntity = Inheritance.upcast(?*PaymentEntity, Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance());
            const paymentInterface: ?*PaymentInterface = Inheritance.upcast(?*PaymentInterface, Inheritance.callStatic(PaymentFactory, "getInstance", .{ self.request }));
            _ = Inheritance.call(paymentEntity.?, "add", .{ self.weblisketSession.?.getUserName(), paymentInterface });
            _ = Inheritance.call(paymentEntity.?, "setDefault", .{ self.weblisketSession.?.getUserName(), Inheritance.callStatic(Integer, "create1", .{ Inheritance.call(paymentEntity.?, "getLastId", .{ self.weblisketSession.?.getUserName() }) }) });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("addPayment()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add Payment"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("addPayment()"), e });
//             }
//             return @"error";
    }
    

    pub fn select(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Selected Payment");
            const paymentEntity: ?*PaymentEntity = Inheritance.upcast(?*PaymentEntity, Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance());
            _ = Inheritance.call(paymentEntity.?, "setDefault", .{ self.weblisketSession.?.getUserName(), Inheritance.callStatic(Integer, "create1", .{ self.value }) });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("selectPayment()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to select Payment"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("selectPayment()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Removed Payment");
            const paymentEntity: ?*PaymentEntity = Inheritance.upcast(?*PaymentEntity, Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance());
            _ = Inheritance.call(paymentEntity.?, "remove", .{ self.weblisketSession.?.getUserName(), Inheritance.callStatic(Integer, "create1", .{ self.value }) });
            const paymentInterface: ?*PaymentInterface = Inheritance.upcast(?*PaymentInterface, Inheritance.call(paymentEntity.?, "getDefault", .{ self.weblisketSession.?.getUserName() }));
            if (paymentInterface == null) {
                _ = Inheritance.call(paymentEntity.?, "setDefault", .{ self.weblisketSession.?.getUserName(), Inheritance.callStatic(Integer, "create1", .{ Inheritance.call(paymentEntity.?, "getLastId", .{ self.weblisketSession.?.getUserName() }) }) });
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("removePayment()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to remove Payment"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("removePayment()"), e });
//             }
//             return @"error";
    }
    

    pub fn drop(self: *Self) ?*String {
        { // try
            const paymentEntity: ?*PaymentEntity = Inheritance.upcast(?*PaymentEntity, Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance());
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(paymentEntity.?, "dropTable").dropTable());
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
            const paymentEntity: ?*PaymentEntity = Inheritance.upcast(?*PaymentEntity, Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance());
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(paymentEntity.?, "createTable").createTable());
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
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "restoreTable", .{ Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance(), self.portion }));
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
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "backupTable", .{ Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance() }));
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
    

    // throws LicensingException
    pub fn update(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED);
    }
};

