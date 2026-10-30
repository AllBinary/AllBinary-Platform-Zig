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
// package org.allbinary.logic.visual.transform.info.objectConfig.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const InputOutputTypeData = @import("org/allbinary/logic/io/InputOutputTypeData.zig").InputOutputTypeData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicGenerator = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/BasicGenerator.zig").BasicGenerator;
const StoreFileGenerator = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator.zig").StoreFileGenerator;
const TransformInfoObjectConfigGenerator = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator.zig").TransformInfoObjectConfigGenerator;
const TransformInfoObjectConfigGeneratorFactoryInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactoryInterface.zig").TransformInfoObjectConfigGeneratorFactoryInterface;

pub const TransformInfoObjectConfigGeneratorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory";
    pub const java_interfaces = .{ TransformInfoObjectConfigGeneratorFactoryInterface };
    logUtil: ?*LogUtil = null,
    // Implements TransformInfoObjectConfigGeneratorFactoryInterface
    var instance: ?*TransformInfoObjectConfigGeneratorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoObjectConfigGeneratorFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformInfoObjectConfigGeneratorFactory {
        return Inheritance.upcast(?*TransformInfoObjectConfigGeneratorFactory, TransformInfoObjectConfigGeneratorFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInfoObjectConfigGenerator {
        const @"type": ?*String = Inheritance.cast(?*String, Inheritance.receiverOf(Inheritance.receiver(transformInfoInterface.?, "getObjectConfigInterface").getObjectConfigInterface().?, "getOutputTypeName").getOutputTypeName());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Generating Instance for type: "), @"type"), self, commonStrings.?.GET_INSTANCE });
        }
        if (@"type" == null or Inheritance.call(@"type".?, "compareTo", .{ InputOutputTypeData.getInstance().?.RESPONSE }) == 0 or Inheritance.receiver(transformInfoInterface.?, "isChild").isChild()) {
            return Inheritance.upcast(?*TransformInfoObjectConfigGenerator, BasicGenerator.create());
        } else if (Inheritance.call(@"type".?, "compareTo", .{ InputOutputTypeData.getInstance().?.FILE }) == 0) {
            return Inheritance.upcast(?*TransformInfoObjectConfigGenerator, Inheritance.callStatic(StoreFileGenerator, "create1", .{ transformInfoInterface }));
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Such TransformInfoObjectConfigGenerator Type"); break :exception error.Exception; }});
        }
    }
};

