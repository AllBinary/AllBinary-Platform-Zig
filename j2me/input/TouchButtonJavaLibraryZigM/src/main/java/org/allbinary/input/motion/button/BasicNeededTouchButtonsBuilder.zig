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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const BaseTouchInput = @import("org/allbinary/input/motion/button/BaseTouchInput.zig").BaseTouchInput;
const BasicTouchButtonCellPositionFactory = @import("org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory.zig").BasicTouchButtonCellPositionFactory;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;
const TouchButton = @import("org/allbinary/input/motion/button/TouchButton.zig").TouchButton;
const TouchButtonLocationHelper = @import("org/allbinary/input/motion/button/TouchButtonLocationHelper.zig").TouchButtonLocationHelper;

pub const BasicNeededTouchButtonsBuilder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.BasicNeededTouchButtonsBuilder";
    base: BaseTouchInput = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseTouchInput.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CONSTRUCTOR });
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const touchButtonLocationHelper: ?*TouchButtonLocationHelper = TouchButtonLocationHelper.create();
            const basicTouchButtonCellPositionFactory: ?*BasicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.create();
            const commonButtons: ?*CommonButtons = Inheritance.upcast(?*CommonButtons, CommonButtons.getInstance());
            const animationInterface: ?*Animation = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
            const UP: ?*TouchButton = Inheritance.callStatic(TouchButton, "create7", .{ BasicTouchInputFactory.getInstance().?.UP, animationInterface, animationInterface, commonButtons.?.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.?.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.?.getColumnsRemainderHalf(), touchButtonLocationHelper.?.getRowsRemainderHalf() });
            const DOWN: ?*TouchButton = Inheritance.callStatic(TouchButton, "create7", .{ BasicTouchInputFactory.getInstance().?.DOWN, animationInterface, animationInterface, commonButtons.?.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.?.BOTTOM_LEFT, touchButtonLocationHelper.?.getColumnsRemainderHalf(), touchButtonLocationHelper.?.getRowsRemainderHalf() });
            const LEFT: ?*TouchButton = Inheritance.callStatic(TouchButton, "create7", .{ BasicTouchInputFactory.getInstance().?.LEFT, animationInterface, animationInterface, commonButtons.?.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.?.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.?.getColumnsRemainderHalf(), touchButtonLocationHelper.?.getRowsRemainderHalf() });
            const RIGHT: ?*TouchButton = Inheritance.callStatic(TouchButton, "create7", .{ BasicTouchInputFactory.getInstance().?.RIGHT, animationInterface, animationInterface, commonButtons.?.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.?.BOTTOM_RIGHT, touchButtonLocationHelper.?.getColumnsRemainderHalf(), touchButtonLocationHelper.?.getRowsRemainderHalf() });
            _ = Inheritance.call(list.?, "add", .{ UP });
            _ = Inheritance.call(list.?, "add", .{ DOWN });
            _ = Inheritance.call(list.?, "add", .{ LEFT });
            _ = Inheritance.call(list.?, "add", .{ RIGHT });
            return list;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET_LIST, e });
//             return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }
};

