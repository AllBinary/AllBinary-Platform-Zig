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
const TransformInfoHttpStoreFactory = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreFactory.zig").TransformInfoHttpStoreFactory;
const TransformInfoObjectConfigAndManipulatorFactory = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory.zig").TransformInfoObjectConfigAndManipulatorFactory;
const TransformInfoObjectConfigGeneratorFactory = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactory.zig").TransformInfoObjectConfigGeneratorFactory;
const TransformInfoEntity = @import("org/allbinary/data/tables/transform/info/TransformInfoEntity.zig").TransformInfoEntity;
const TransformInfoEntityFactory = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityFactory.zig").TransformInfoEntityFactory;

pub const TransformInfoEntityBuilder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*TransformInfoEntity {
        return Inheritance.upcast(?*TransformInfoEntity, Inheritance.callStatic(TransformInfoEntityFactory, "getInstance", .{ TransformInfoObjectConfigGeneratorFactory.getInstance(), TransformInfoObjectConfigAndManipulatorFactory.getInstance(), TransformInfoHttpStoreFactory.getInstance() }));
    }
};

