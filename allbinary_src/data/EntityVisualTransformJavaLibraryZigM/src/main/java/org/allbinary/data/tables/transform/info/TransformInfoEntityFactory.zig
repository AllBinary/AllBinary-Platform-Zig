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
// package org.allbinary.data.tables.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoFactoryInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoFactoryInterface.zig").TransformInfoFactoryInterface;
const TransformInfoObjectConfigAndManipulatorFactoryBase = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryBase.zig").TransformInfoObjectConfigAndManipulatorFactoryBase;
const TransformInfoObjectConfigGeneratorFactoryInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactoryInterface.zig").TransformInfoObjectConfigGeneratorFactoryInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TransformInfoEntity = @import("org/allbinary/data/tables/transform/info/TransformInfoEntity.zig").TransformInfoEntity;

pub const TransformInfoEntityFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.transform.info.TransformInfoEntityFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(transformInfoObjectConfigGeneratorFactoryInterface: ?*TransformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface: ?*TransformInfoObjectConfigAndManipulatorFactoryBase, transformInfoFactoryInterface: ?*TransformInfoFactoryInterface) ?*TransformInfoEntity {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            return Inheritance.callStatic(TransformInfoEntity, "create3", .{ transformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("TransformInfoEntityFactory"), commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};

