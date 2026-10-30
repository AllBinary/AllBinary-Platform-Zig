// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
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
// package org.allbinary.data.tables.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const IdGeneratorEntity = @import("org/allbinary/data/tables/generator/IdGeneratorEntity.zig").IdGeneratorEntity;
const IdGeneratorEntityInterface = @import("org/allbinary/data/tables/generator/IdGeneratorEntityInterface.zig").IdGeneratorEntityInterface;

pub const IdGeneratorEntityFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.generator.IdGeneratorEntityFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*IdGeneratorEntityInterface {
        { // try
            return Inheritance.cast(?*IdGeneratorEntityInterface, IdGeneratorEntity.create());
        }
        // catch (Exception e):
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("ServerLicenseRequestEntityFactory"), commonStrings.?.GET_INSTANCE, e });
//             return null;
    }
};

