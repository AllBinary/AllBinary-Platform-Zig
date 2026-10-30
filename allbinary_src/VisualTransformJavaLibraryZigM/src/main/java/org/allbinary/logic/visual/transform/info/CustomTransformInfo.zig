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
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const CustomTransformInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.CustomTransformInfo";
    pub const java_interfaces = .{ TransformInfoInterface };
    base: TransformInfo = undefined,
    // Implements TransformInfoInterface
    

    pub fn create8(outputTypeName: ?*String, inputOutputTypeName: ?*String, inputOutputTypeFile: ?*String, name: ?*String, objectFileName: ?*String, objectConfigFileName: ?*String, templateFileName: ?*String, dataFileName: ?*String) *Self {
        _ = outputTypeName;
        _ = inputOutputTypeName;
        _ = inputOutputTypeFile;
        _ = name;
        _ = objectFileName;
        _ = objectConfigFileName;
        _ = templateFileName;
        _ = dataFileName;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TransformInfo.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

