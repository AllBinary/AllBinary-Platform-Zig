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
// package org.allbinary.logic.communication.smtp.event.handler

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const UserConfigurationInterface = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterface.zig").UserConfigurationInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface.zig").UserEmailConfigurationInterface;
const UserEmailEventsConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface.zig").UserEmailEventsConfigurationInterface;
const UserEmailEventListenerInterface = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface.zig").UserEmailEventListenerInterface;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const LogUserEmailEventListenerModule = @import("org/allbinary/logic/communication/smtp/event/modules/log/LogUserEmailEventListenerModule.zig").LogUserEmailEventListenerModule;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;

pub const EmailEventHandlerUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*EmailEventHandlerUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = EmailEventHandlerUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*EmailEventHandlerUtil {
        return Inheritance.upcast(?*EmailEventHandlerUtil, EmailEventHandlerUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getEventHandler(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, userEmailEventNameData: ?*UserEmailEventNameData, userVector: ?*BasicArrayList) ?*UserEmailEventHandler {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Returning UserEmailEventHandler for ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ userVector.?.size() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" users.") });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("getEventHandler") });
        }
        const userEmailEventHandler: ?*UserEmailEventHandler = UserEmailEventHandler.create();
        _ = Inheritance.call(userEmailEventHandler.?, "addListener", .{ LogUserEmailEventListenerModule.create() });
        const size: i32 = userVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const userInterface: ?*UserInterface = Inheritance.cast(?*UserInterface, Inheritance.call(userVector.?, "get", .{ index }));
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(EmailEventHandlerUtil, "getUserEmailEventListenerVector", .{ abeClientInformation, userEmailEventNameData, userInterface }));
            _ = Inheritance.call(userEmailEventHandler.?, "addListener", .{ vector });
            }
        }
        return userEmailEventHandler;
    }
    

    // throws Exception
    pub fn getUserEmailEventListenerVector(abeClientInformation: ?*AbeClientInformationInterface, userEmailEventNameData: ?*UserEmailEventNameData, userInterface: ?*UserInterface) ?*BasicArrayList {
        const userConfigurationInterface: ?*UserConfigurationInterface = Inheritance.upcast(?*UserConfigurationInterface, Inheritance.receiver(userInterface.?, "getUserConfigurationInterface").getUserConfigurationInterface());
        const userEmailConfigurationInterface: ?*UserEmailConfigurationInterface = Inheritance.upcast(?*UserEmailConfigurationInterface, userConfigurationInterface.?.getUserEmailConfigurationInterface());
        const userEmailEventsConfigurationInterface: ?*UserEmailEventsConfigurationInterface = Inheritance.upcast(?*UserEmailEventsConfigurationInterface, userEmailConfigurationInterface.?.getUserEmailEventsConfigurationInterface());
        const userEmailEventListenerInterface: ?*UserEmailEventListenerInterface = Inheritance.upcast(?*UserEmailEventListenerInterface, Inheritance.call(userEmailEventsConfigurationInterface.?, "getEventListener", .{ abeClientInformation, userEmailEventNameData, userInterface }));
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ userEmailEventListenerInterface });
        return vector;
    }
};

