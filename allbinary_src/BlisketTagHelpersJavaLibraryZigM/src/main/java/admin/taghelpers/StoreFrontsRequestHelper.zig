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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFront = @import("org/allbinary/business/context/modules/storefront/StoreFront.zig").StoreFront;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const Portion = @import("org/allbinary/business/installer/Portion.zig").Portion;
const StoreFrontsEntityFactory = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory.zig").StoreFrontsEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;
const AdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons.zig").AdminUserEmailEventHandlerSingletons;
const StoreAdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons.zig").StoreAdminUserEmailEventHandlerSingletons;
const AdminEmailInfo = @import("org/allbinary/logic/communication/smtp/info/AdminEmailInfo.zig").AdminEmailInfo;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const StoreEmailInfo = @import("org/allbinary/logic/communication/smtp/info/StoreEmailInfo.zig").StoreEmailInfo;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;

pub const StoreFrontsRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.StoreFrontsRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    pageContext: ?*PageContext = null,
    request: ?*HttpServletRequest = null,
    weblisketSession: ?*WeblisketSession = null,
    storeName: ?*String = null,
    modifyingStoreFrontInterface: ?*StoreFrontInterface = null,
    portion: ?*Portion = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        
        
        this.storeName = null;
        this.modifyingStoreFrontInterface = null;
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        this.pageContext = pageContext;
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        this.portion = Inheritance.callStatic(Portion, "create1", .{ hashMap });
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self) void {
        self.storeName = Inheritance.upcast(@TypeOf(self.storeName), self.weblisketSession.?.getStoreName());
        self.modifyingStoreFrontInterface = Inheritance.cast(?*StoreFrontInterface, Inheritance.callStatic(StoreFront, "create1", .{ self.request }));
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Updated Successfully");
            const hashMapData: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.modifyingStoreFrontInterface.?, "toHashMap").toHashMap());
            _ = Inheritance.call(Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance().?, "update", .{ hashMapData });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to update storefronts table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
    

    // throws Exception
    pub fn sendStoreCreatedEmails(self: *Self) void {
        const storeManagerEmailSubject: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Store Manager Nofification For Store: "), Inheritance.receiver(self.modifyingStoreFrontInterface.?, "getName").getName()));
        const adminEmailSubject: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Admin Notification For Store: "), Inheritance.receiver(self.modifyingStoreFrontInterface.?, "getName").getName()));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Store Created: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.modifyingStoreFrontInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\n\n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Click here for the Admin Interface:\n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.modifyingStoreFrontInterface.?, "getCurrentHomeHostName").getCurrentHomeHostName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("/admin/login.jsp\n\n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Goto Your Store:\n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.modifyingStoreFrontInterface.?, "getCurrentHomeHostName").getCurrentHomeHostName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.modifyingStoreFrontInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("/index.jsp") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\n\n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("UserName: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.weblisketSession.?.getUserName() });
        const adminEmailTextBody: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        const adminBasicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(AdminEmailInfo, "create2", .{ adminEmailSubject, adminEmailTextBody }));
        const storeAdminBasicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(StoreEmailInfo, "create3", .{ self.modifyingStoreFrontInterface, storeManagerEmailSubject, adminEmailTextBody }));
        const storeAdminEmailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ storeAdminBasicEmailInfo });
        const adminEmailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ adminBasicEmailInfo });
        const adminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(AdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, UserEmailEventNameData.STORECREATED }));
        const storeAdminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(StoreAdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ UserEmailEventNameData.STORECREATED, self.abeClientInformation, self.modifyingStoreFrontInterface }));
        _ = Inheritance.call(storeAdminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.STORECREATED, storeAdminEmailInfo });
        _ = Inheritance.call(adminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.STORECREATED, adminEmailInfo });
    }
    

    pub fn install(self: *Self) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Intall StoreFront Successfully: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.portion.?.getCurrent().?, "intValue").intValue())) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" of ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.portion.?.getTotal().?, "intValue").intValue())) });
            const success: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self.modifyingStoreFrontInterface.?, "install", .{ Inheritance.receiverOf(self.portion.?.getCurrent().?, "intValue").intValue(), Inheritance.receiverOf(self.portion.?.getTotal().?, "intValue").intValue() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("install()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to Install storefront"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("install()"), e });
//             }
//             return @"error";
    }
    

    pub fn insert(self: *Self) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const success: ?*String = String.literal("Added Successfully");
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.modifyingStoreFrontInterface.?, "toVector").toVector());
            _ = Inheritance.call(Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance().?, "insert", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("insert()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add storefront"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("insert()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Delete Successfully");
            _ = Inheritance.call(Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance().?, "delete", .{ self.storeName });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to delete storefronts table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//             }
//             return @"error";
    }
};

