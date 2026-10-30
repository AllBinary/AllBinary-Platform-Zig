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
// package org.allbinary.logic.control.workflow

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DynamicObjectData = @import("org/allbinary/business/DynamicObjectData.zig").DynamicObjectData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;
const WorkFlowWrapper = @import("org/allbinary/logic/control/workflow/WorkFlowWrapper.zig").WorkFlowWrapper;

pub const DbWorkFlowFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.workflow.DbWorkFlowFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*DbWorkFlowFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DbWorkFlowFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*DbWorkFlowFactory {
        return Inheritance.upcast(?*DbWorkFlowFactory, DbWorkFlowFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception, LicensingException
    pub fn getInstance2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, hashMap: ?*HashMap) ?*WorkFlowInterface {
        _ = self;
        { // try
            const className: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DynamicObjectData.NAME }));
            const params: []?Object = array_N66095: { const array_N66095_array = allocator.alloc(?Object, @intCast(1)) catch unreachable; @memset(array_N66095_array, null); break :array_N66095 array_N66095_array; };
            const classes: []?*anyopaque = array_N66161: { const array_N66161_array = allocator.alloc(?*anyopaque, @intCast(1)) catch unreachable; @memset(array_N66161_array, null); break :array_N66161 array_N66161_array; };
            classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(hashMap).?.class))));
            params[@intCast(0)] = Inheritance.cast(?Object, hashMap);
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, className, classes, params }));
            return Inheritance.cast(?*WorkFlowInterface, Inheritance.callStatic(WorkFlowWrapper, "create1", .{ anyType }));
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("getInstance(HashMap)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("getInstance(HashMap)"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

