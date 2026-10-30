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
// package org.allbinary.logic.visual.transform.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const InputOutputTypeData = @import("org/allbinary/logic/io/InputOutputTypeData.zig").InputOutputTypeData;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformFactory = @import("org/allbinary/logic/visual/transform/TransformFactory.zig").TransformFactory;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const TransformInfoDomNode = @import("org/allbinary/logic/visual/transform/info/TransformInfoDomNode.zig").TransformInfoDomNode;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const StoreFileGenerator = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator.zig").StoreFileGenerator;

pub const TransformGeneratorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*TransformGeneratorUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformGeneratorUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformGeneratorUtil {
        return Inheritance.upcast(?*TransformGeneratorUtil, TransformGeneratorUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn generate(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, ownerTransformInfoInterface: ?*TransformInfoInterface) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Generating View: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("generate()") });
            }
            const componentInterface: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.call(TransformFactory.getInstance().?, "getInstance", .{ abeClientInformation, Inheritance.receiver(transformInfoInterface.?, "getName").getName(), ownerTransformInfoInterface }));
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(componentInterface.?, "view").view());
            const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface());
            const inputOutputTypeData: ?*InputOutputTypeData = Inheritance.upcast(?*InputOutputTypeData, InputOutputTypeData.getInstance());
            if (Inheritance.call(result.?, "indexOf", .{ String.literal("<HTML>") }) >= 0) {
                _ = Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ inputOutputTypeData.?.NAME, inputOutputTypeData.?.DEFAULT });
            } else {
                _ = Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ inputOutputTypeData.?.NAME, inputOutputTypeData.?.DEFAULT_FRAGMENT });
            }
            _ = Inheritance.call(Inheritance.callStatic(StoreFileGenerator, "create1", .{ Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface() }), "process", .{ result });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate a view"), self, String.literal("generate()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn generate(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoDomNode: ?*TransformInfoDomNode, ownerTransformInfoInterface: ?*TransformInfoInterface) void {
        _ = Inheritance.call(self, "generate", .{ abeClientInformation, transformInfoDomNode.?.getTransformInfoInterface(), ownerTransformInfoInterface });
    }
};

