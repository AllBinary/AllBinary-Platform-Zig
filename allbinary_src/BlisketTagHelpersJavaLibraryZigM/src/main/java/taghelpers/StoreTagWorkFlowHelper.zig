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
// package taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StoreTagWorkFlowFactory = @import("org/allbinary/logic/control/workflow/StoreTagWorkFlowFactory.zig").StoreTagWorkFlowFactory;
const StoreWorkFlowInterface = @import("org/allbinary/logic/control/workflow/StoreWorkFlowInterface.zig").StoreWorkFlowInterface;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const StoreTagWorkFlowHelper = struct {
    const Self = @This();
    pub const java_name = "taghelpers.StoreTagWorkFlowHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    storeWorkFlowInterface: ?*StoreWorkFlowInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties: "), Object.toString(Object.of(hashMap))), this, String.literal("StoreTagWorkFlowHelper()") });
        }
        this.storeWorkFlowInterface = Inheritance.upcast(@TypeOf(this.storeWorkFlowInterface), Inheritance.call(StoreTagWorkFlowFactory.getInstance().?, "getInstance", .{ this.abeClientInformation, hashMap, pageContext }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) ?*Integer {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Process"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS });
            }
            return Inheritance.upcast(?*Integer, Inheritance.receiver(self.storeWorkFlowInterface.?, "process").process());
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to process workflow: "); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

