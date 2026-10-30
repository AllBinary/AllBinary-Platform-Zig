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
// package org.allbinary.business.user.commerce.inventory.order.status

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;
const AdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons.zig").AdminUserEmailEventHandlerSingletons;
const StoreAdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons.zig").StoreAdminUserEmailEventHandlerSingletons;
const UserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons.zig").UserEmailEventHandlerSingletons;
const AdminEmailInfo = @import("org/allbinary/logic/communication/smtp/info/AdminEmailInfo.zig").AdminEmailInfo;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const StoreEmailInfo = @import("org/allbinary/logic/communication/smtp/info/StoreEmailInfo.zig").StoreEmailInfo;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const OrderStatusEmail = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    orderHistory: ?*OrderHistory = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    user: ?*UserInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
        
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, orderHistory: ?*OrderHistory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        this.orderHistory = orderHistory;
        const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(orderHistory.?, "getStoreName").getStoreName());
        this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        this.user = Inheritance.upcast(@TypeOf(this.user), Inheritance.call(UserEntityFactory.getInstance().?, "getUser", .{ Inheritance.receiver(orderHistory.?, "getUserName").getUserName() }));
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self.notifyStoreAdmin();
        _ = self.notifyUser();
    }
    

    // throws Exception
    pub fn notifyStoreAdmin(self: *Self) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Order Email"), self, String.literal("emailStoreAdmin") });
            }
            const adminEmailSubject: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Order "), Inheritance.receiver(self.orderHistory.?, "getStatus").getStatus()), String.literal(" Attempt")));
            const adminEmailTextBody: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.literal("Order attempt: "), Inheritance.receiver(self.orderHistory.?, "getId").getId()), String.literal(" Preprocessing by: ")), Inheritance.receiver(self.user.?, "getUserName").getUserName()));
            const adminBasicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(AdminEmailInfo, "create2", .{ adminEmailSubject, adminEmailTextBody }));
            const storeAdminBasicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(StoreEmailInfo, "create3", .{ self.storeFrontInterface, adminEmailSubject, adminEmailTextBody }));
            const storeAdminEmailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ storeAdminBasicEmailInfo });
            const adminEmailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ adminBasicEmailInfo });
            const userEmailEventNameData: ?*UserEmailEventNameData = Inheritance.upcast(?*UserEmailEventNameData, Inheritance.callStatic(UserEmailEventNameData, "getInstance", .{ Inheritance.receiver(self.orderHistory.?, "getStatus").getStatus() }));
            const adminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(AdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, userEmailEventNameData }));
            const storeAdminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(StoreAdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ userEmailEventNameData, self.abeClientInformation, self.storeFrontInterface }));
            _ = Inheritance.call(storeAdminUserEmailEventHandler.?, "receiveEmailInfo", .{ userEmailEventNameData, storeAdminEmailInfo });
            _ = Inheritance.call(adminUserEmailEventHandler.?, "receiveEmailInfo", .{ userEmailEventNameData, adminEmailInfo });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("emailAdmin"), e });
//             }
    }
    

    // throws Exception
    pub fn notifyUser(self: *Self) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Email User"), self, String.literal("notifyUser()") });
            }
            const subject: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Order "), Inheritance.receiver(self.orderHistory.?, "getStatus").getStatus()), String.literal(" Attempt")));
            const textBody: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.literal("Order attempt: "), Inheritance.receiver(self.orderHistory.?, "getId").getId()), String.literal(" Preprocessing by: ")), Inheritance.receiver(self.user.?, "getUserName").getUserName()));
            const basicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(StoreEmailInfo, "create3", .{ self.storeFrontInterface, subject, textBody }));
            const emailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ basicEmailInfo });
            const userEmailEventNameData: ?*UserEmailEventNameData = Inheritance.upcast(?*UserEmailEventNameData, Inheritance.callStatic(UserEmailEventNameData, "getInstance", .{ Inheritance.receiver(self.orderHistory.?, "getStatus").getStatus() }));
            const userEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(UserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, userEmailEventNameData, self.user }));
            _ = Inheritance.call(userEmailEventHandler.?, "receiveEmailInfo", .{ userEmailEventNameData, emailInfo });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("notifyUser"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

