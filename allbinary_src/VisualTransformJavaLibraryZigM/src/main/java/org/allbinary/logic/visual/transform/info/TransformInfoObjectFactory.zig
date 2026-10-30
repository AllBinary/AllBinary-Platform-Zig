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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const TransformInfoObjectFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*TransformInfoObjectFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoObjectFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformInfoObjectFactory {
        return Inheritance.upcast(?*TransformInfoObjectFactory, TransformInfoObjectFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInterface {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Creating View: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, commonStrings.?.GET_INSTANCE });
            }
            const params: []?Object = array_N66326: { const array_N66326_array = allocator.alloc(?Object, @intCast(1)) catch unreachable; @memset(array_N66326_array, null); break :array_N66326 array_N66326_array; };
            const classes: []?*anyopaque = array_N66385: { const array_N66385_array = allocator.alloc(?*anyopaque, @intCast(1)) catch unreachable; @memset(array_N66385_array, null); break :array_N66385 array_N66385_array; };
            classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), TransformInfoInterface);
            params[@intCast(0)] = Inheritance.cast(?Object, transformInfoInterface);
            const anyType: ?*TransformInterface = Inheritance.cast(?*TransformInterface, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, Inheritance.receiver(transformInfoInterface.?, "getObjectFile").getObjectFile(), classes, params }));
            if (anyType == null) {
                if (transformInfoInterface != null) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nNo Such View Name: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(transformInfoInterface.?, "getName").getName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nNo Such View Object: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(transformInfoInterface.?, "getObjectFile").getObjectFile() });
                    std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("No Such View Object since transformInfo is null"); break :exception error.Exception; }});
                }
            }
            return anyType;
        }
        // catch (LicensingException e):
//             var @"error": ?*String = String.literal("Failed To Get Instance: "); _ = @"error";
//             if (transformInfoInterface != null) {
//                 @"error" = Inheritance.upcast(@TypeOf(@"error"), String.plus(@"error", Inheritance.receiver(transformInfoInterface.?, "getName").getName()));
//             }
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ @"error", self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             var @"error": ?*String = String.literal("Failed To Get Instance: "); _ = @"error";
//             if (transformInfoInterface != null) {
//                 @"error" = Inheritance.upcast(@TypeOf(@"error"), String.plus(@"error", Inheritance.receiver(transformInfoInterface.?, "getName").getName()));
//             }
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ @"error", self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

