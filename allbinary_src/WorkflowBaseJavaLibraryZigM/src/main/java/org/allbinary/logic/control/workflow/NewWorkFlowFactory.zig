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
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const DynamicObjectData = @import("org/allbinary/business/DynamicObjectData.zig").DynamicObjectData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;
const WorkFlowWrapper = @import("org/allbinary/logic/control/workflow/WorkFlowWrapper.zig").WorkFlowWrapper;

pub const NewWorkFlowFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.workflow.NewWorkFlowFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*NewWorkFlowFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NewWorkFlowFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*NewWorkFlowFactory {
        return Inheritance.upcast(?*NewWorkFlowFactory, NewWorkFlowFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception, LicensingException
    pub fn getInstance3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, hashMap: ?*HashMap, pageContext: ?*PageContext) ?*WorkFlowInterface {
        _ = self;
        { // try
            const className: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DynamicObjectData.NAME }));
            const params: []?Object = array_N66150: { const array_N66150_array = allocator.alloc(?Object, @intCast(2)) catch unreachable; @memset(array_N66150_array, null); break :array_N66150 array_N66150_array; };
            const classes: []?*anyopaque = array_N66216: { const array_N66216_array = allocator.alloc(?*anyopaque, @intCast(2)) catch unreachable; @memset(array_N66216_array, null); break :array_N66216 array_N66216_array; };
            classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(hashMap).?.class))));
            classes[@intCast(1)] = Inheritance.upcast(@TypeOf(classes[@intCast(1)]), Inheritance.call(AbeFactory.getInstance().?, "getClass", .{ abeClientInformation, String.literal("javax.servlet.jsp.PageContext") }));
            params[@intCast(0)] = Inheritance.cast(?Object, hashMap);
            params[@intCast(1)] = Inheritance.cast(?Object, pageContext);
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
    

    // throws Exception, LicensingException
    pub fn getInstance2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, className: ?*String) ?*WorkFlowInterface {
        _ = self;
        { // try
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            if (className != null and Inheritance.call(className.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) != 0) {
                const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, className, null, null }));
                return Inheritance.cast(?*WorkFlowInterface, Inheritance.callStatic(WorkFlowWrapper, "create1", .{ anyType }));
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No WorkFlow ClassName"); break :exception error.Exception; }});
            }
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

