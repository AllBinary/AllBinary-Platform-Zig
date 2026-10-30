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
// package org.allbinary.graphics.pipeline

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicGraphicsPipeline = @import("org/allbinary/graphics/pipeline/BasicGraphicsPipeline.zig").BasicGraphicsPipeline;

pub const RandomTranslation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.pipeline.RandomTranslation";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(vector: ?*BasicArrayList, howMuch: i32) ?*BasicArrayList {
        const myRandomFactory: ?*MyRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
        const x: i32 = -Inheritance.call(myRandomFactory.?, "getNextInt", .{ howMuch });
        const y: i32 = Inheritance.call(myRandomFactory.?, "getNextInt", .{ howMuch });
        const graphicsPipe: ?*BasicGraphicsPipeline = Inheritance.callStatic(BasicGraphicsPipeline, "create1", .{ vector });
        _ = graphicsPipe.?.createMatrix();
        _ = Inheritance.call(graphicsPipe.?, "translate", .{ x, y });
        return Inheritance.upcast(?*BasicArrayList, graphicsPipe.?.getMatrix());
    }
};

