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
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFront = @import("org/allbinary/business/context/modules/storefront/StoreFront.zig").StoreFront;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const Portion = @import("org/allbinary/business/installer/Portion.zig").Portion;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const QuoteRequest = @import("org/allbinary/business/user/quoterequest/QuoteRequest.zig").QuoteRequest;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const QuoteRequestEntity = @import("org/allbinary/data/tables/user/quoterequest/QuoteRequestEntity.zig").QuoteRequestEntity;
const QuoteRequestEntityFactory = @import("org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory.zig").QuoteRequestEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;
const AdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons.zig").AdminUserEmailEventHandlerSingletons;
const StoreAdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons.zig").StoreAdminUserEmailEventHandlerSingletons;
const UserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons.zig").UserEmailEventHandlerSingletons;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const StoreEmailInfo = @import("org/allbinary/logic/communication/smtp/info/StoreEmailInfo.zig").StoreEmailInfo;
const AbSqlTableUtil = @import("org/allbinary/logic/communication/sql/AbSqlTableUtil.zig").AbSqlTableUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const BasicTable = @import("admin/taghelpers/BasicTable.zig").BasicTable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const QuoteHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.QuoteHelper";
    base: BasicTable = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    weblisketSession: ?*WeblisketSession = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    portion: ?*Portion = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        this.storeFrontInterface = null;
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicTable.create().*;
        this.initFields();
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        if (storeName != null) {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        } else {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), StoreFront.create());
        }
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        this.portion = Inheritance.callStatic(Portion, "create1", .{ hashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn emailUser(self: *Self, quoteRequest: ?*QuoteRequest) void {
        const user: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.call(UserEntityFactory.getInstance().?, "getUser", .{ quoteRequest.?.getUserName() }));
        const userEmailSubject: ?*String = String.literal("Quote Request Receipt");
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("This is just a verification email. ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("We usually respond to quote request within 24 hours.") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\n\nThank You For Your Business.") });
        const userEmailTextBody: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        const basicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(StoreEmailInfo, "create3", .{ self.storeFrontInterface, userEmailSubject, userEmailTextBody }));
        const emailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ basicEmailInfo });
        const userEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(UserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, UserEmailEventNameData.QUOTEREQUEST, user }));
        _ = Inheritance.call(userEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.QUOTEREQUEST, emailInfo });
    }
    

    // throws Exception
    pub fn emailAdmins(self: *Self, quoteRequest: ?*QuoteRequest) void {
        const adminEmailSubject: ?*String = String.literal("Quote Request");
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nUserName: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequest.?.getUserName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nProject Info: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequest.?.getProjectInfo() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nUser Comments: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequest.?.getUserComments() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nBudget: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequest.?.getBudget() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nTime Frame: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequest.?.getTimeFrame() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nComments: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequest.?.getComments() });
        const adminEmailTextBody: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        const basicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(StoreEmailInfo, "create3", .{ self.storeFrontInterface, adminEmailSubject, adminEmailTextBody }));
        const emailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ basicEmailInfo });
        const storeAdminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(AdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, UserEmailEventNameData.QUOTEREQUEST }));
        const adminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(StoreAdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ UserEmailEventNameData.QUOTEREQUEST, self.abeClientInformation, self.storeFrontInterface }));
        _ = Inheritance.call(storeAdminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.QUOTEREQUEST, emailInfo });
        _ = Inheritance.call(adminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.QUOTEREQUEST, emailInfo });
    }
    

    // throws Exception
    pub fn email(self: *Self) ?*String {
        { // try
            const quoteRequestEntity: ?*QuoteRequestEntity = Inheritance.upcast(?*QuoteRequestEntity, Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance());
            const userName: ?*String = Inheritance.upcast(?*String, self.weblisketSession.?.getUserName());
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(quoteRequestEntity.?, "getIds", .{ userName }));
            var id: i32 = 0;
            const size: i32 = vector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const nextId: i32 = Inheritance.receiverOf((Inheritance.cast(?*Integer, Inheritance.call(vector.?, "get", .{ index }))).?, "intValue").intValue();
                if (id < nextId) {
                    id = nextId;
                }
                }
            }
            const quoteRequest: ?*QuoteRequest = Inheritance.upcast(?*QuoteRequest, Inheritance.call(quoteRequestEntity.?, "get", .{ userName, id }));
            if (quoteRequest != null) {
                _ = Inheritance.call(self, "emailUser", .{ quoteRequest });
                _ = Inheritance.call(self, "emailAdmins", .{ quoteRequest });
                return String.literal("Thank You For Your Business.<p/>");
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No Quote Request"); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("email"), e });
//             }
//             return String.literal("Thank You For Your Business.<p>");
    }
    

    pub fn drop(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance().?, "dropTable").dropTable());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to drop QuoteRequest table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP, e });
//             }
//             return @"error";
    }
    

    pub fn create(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance().?, "createTable").createTable());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("create()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to create new QuoteRequest table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("create()"), e });
//             }
//             return @"error";
    }
    

    pub fn restore(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Restore Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "restoreTable", .{ Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance(), self.portion }));
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
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "backupTable", .{ Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance() }));
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

