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
// package org.allbinary.logic.communication.smtp.event.handler.factory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const EmailEventHandlerUtil = @import("org/allbinary/logic/communication/smtp/event/handler/EmailEventHandlerUtil.zig").EmailEventHandlerUtil;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;
const LogUserEmailEventListenerModule = @import("org/allbinary/logic/communication/smtp/event/modules/log/LogUserEmailEventListenerModule.zig").LogUserEmailEventListenerModule;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const UserEmailEventHandlerSingletons = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    userEmailEventHandlerHashMap: ?*HashMap = null,
    var instance: ?*UserEmailEventHandlerSingletons = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = UserEmailEventHandlerSingletons.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.userEmailEventHandlerHashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
    }
    

    pub fn getInstance() ?*UserEmailEventHandlerSingletons {
        return Inheritance.upcast(?*UserEmailEventHandlerSingletons, UserEmailEventHandlerSingletons.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        }
        return this;
    }
    

    // throws Exception
    pub fn getInstance3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, userEmailEventNameData: ?*UserEmailEventNameData, userInterface: ?*UserInterface) ?*UserEmailEventHandler {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.GET_INSTANCE });
        }
        const userEmailEventHandler: ?*UserEmailEventHandler = Inheritance.cast(?*UserEmailEventHandler, Inheritance.call(self.userEmailEventHandlerHashMap.?, "get", .{ userEmailEventNameData }));
        if (userEmailEventHandler == null) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Creating New Named UserEmailEventHandler"), self, self.commonStrings.?.GET_INSTANCE });
            }
            const newUserEmailEventHandler: ?*UserEmailEventHandler = UserEmailEventHandler.create();
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(EmailEventHandlerUtil, "getUserEmailEventListenerVector", .{ abeClientInformation, userEmailEventNameData, userInterface }));
            _ = Inheritance.call(newUserEmailEventHandler.?, "addListener", .{ vector });
            _ = Inheritance.call(newUserEmailEventHandler.?, "addListener", .{ LogUserEmailEventListenerModule.create() });
            _ = Inheritance.call(self.userEmailEventHandlerHashMap.?, "put", .{ userEmailEventNameData, newUserEmailEventHandler });
            return newUserEmailEventHandler;
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Returning existing UserEmailEventHandler"), self, self.commonStrings.?.GET_INSTANCE });
            }
            return userEmailEventHandler;
        }
    }
};

