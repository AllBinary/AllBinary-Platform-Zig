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
// package org.allbinary.android.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnalogLocationInput = @import("org/allbinary/game/input/analog/AnalogLocationInput.zig").AnalogLocationInput;
const AnalogLocationInputFactory = @import("org/allbinary/game/input/analog/AnalogLocationInputFactory.zig").AnalogLocationInputFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AnalogControllerVisitor = @import("org/allbinary/android/input/motion/AnalogControllerVisitor.zig").AnalogControllerVisitor;
const AnalogLocationInputProcessor = @import("org/allbinary/android/input/motion/AnalogLocationInputProcessor.zig").AnalogLocationInputProcessor;

pub const AllAnalogControllerVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.AllAnalogControllerVisitor";
    base: AnalogControllerVisitor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AnalogControllerVisitor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, analogLocationInputProcessor: ?*AnalogLocationInputProcessor) void {
        _ = self;
        const analogLocationInputList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(AnalogLocationInputFactory.getInstance().?, "getList").getList());
        var analogLocationInput: ?*AnalogLocationInput = null;
        {
            var index: i32 = analogLocationInputList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            analogLocationInput = Inheritance.cast(?*AnalogLocationInput, Inheritance.call(analogLocationInputList.?, "get", .{ index }));
            _ = Inheritance.call(analogLocationInputProcessor.?, "process", .{ allbinaryLayerManager, analogLocationInput });
            }
        }
    }
};

