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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;

pub const TagWorkFlowFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.workflow.TagWorkFlowFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*TagWorkFlowFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TagWorkFlowFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TagWorkFlowFactory {
        return Inheritance.upcast(?*TagWorkFlowFactory, TagWorkFlowFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception, LicensingException
    pub fn getInstance3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*WorkFlowInterface {
        _ = self;
        { // try
            const workFlowClassName: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ DynamicObjectData.NAME }));
            const params: []?Object = array_N66150: { const array_N66150_array = allocator.alloc(?Object, @intCast(2)) catch unreachable; @memset(array_N66150_array, null); break :array_N66150 array_N66150_array; };
            const classes: []?*anyopaque = array_N66212: { const array_N66212_array = allocator.alloc(?*anyopaque, @intCast(2)) catch unreachable; @memset(array_N66212_array, null); break :array_N66212 array_N66212_array; };
            classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(propertiesHashMap).?.class))));
            classes[@intCast(1)] = Inheritance.upcast(@TypeOf(classes[@intCast(1)]), Inheritance.call(AbeFactory.getInstance().?, "getClass", .{ abeClientInformation, String.literal("javax.servlet.jsp.PageContext") }));
            params[@intCast(0)] = Inheritance.cast(?Object, propertiesHashMap);
            params[@intCast(1)] = Inheritance.cast(?Object, pageContext);
            return Inheritance.cast(?*WorkFlowInterface, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, workFlowClassName, classes, params }));
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const workFlowClassName: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ DynamicObjectData.NAME }));
//                 const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failed To Get Instance: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ workFlowClassName });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("->") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(TagWorkFlowFactory.instance).?.class))).?))).name) });
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const workFlowClassName: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ DynamicObjectData.NAME }));
//                 const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failed To Get Instance: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ workFlowClassName });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("->") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(TagWorkFlowFactory.instance).?.class))).?))).name) });
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

