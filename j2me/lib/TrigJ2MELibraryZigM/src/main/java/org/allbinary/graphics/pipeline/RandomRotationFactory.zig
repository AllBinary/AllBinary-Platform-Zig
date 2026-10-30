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
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicGraphicsPipeline = @import("org/allbinary/graphics/pipeline/BasicGraphicsPipeline.zig").BasicGraphicsPipeline;

pub const RandomRotationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.pipeline.RandomRotationFactory";
    myRandomFactory: ?*MyRandomFactory = null,
    angleFactory: ?*AngleFactory = null,
    var instance: ?*RandomRotationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RandomRotationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.myRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
        this.angleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RandomRotationFactory {
        return Inheritance.upcast(?*RandomRotationFactory, RandomRotationFactory.instance);
    }
    

    // throws Exception
    pub fn getInstanceList(self: *Self, vector: ?*BasicArrayList, howMuch: i32) ?*BasicArrayList {
        const graphicsPipe: ?*BasicGraphicsPipeline = Inheritance.callStatic(BasicGraphicsPipeline, "create1", .{ vector });
        _ = graphicsPipe.?.createMatrix();
        _ = Inheritance.call(graphicsPipe.?, "rotateToAngle", .{ Inheritance.call(self.angleFactory.?, "getAt", .{ Inheritance.call(self, "getNextRandomAngle", .{ howMuch }) }) });
        return Inheritance.upcast(?*BasicArrayList, graphicsPipe.?.getMatrix());
    }
    

    pub fn getNextRandomAngle(self: *Self, howMuch: i32) i32 {
        return Inheritance.call(self.myRandomFactory.?, "getNextInt", .{ howMuch * 10 });
    }
};

