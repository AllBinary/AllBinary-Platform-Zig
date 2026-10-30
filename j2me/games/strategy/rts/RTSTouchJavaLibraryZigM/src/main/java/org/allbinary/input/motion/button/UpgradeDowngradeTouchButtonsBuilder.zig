// 
// AllBinary Open License Version 1 
// Copyright (c) 2007 AllBinary 
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
const TouchButtonDowngradeResource = @import("org/allbinary/game/input/resource/TouchButtonDowngradeResource.zig").TouchButtonDowngradeResource;
const TouchButtonUpgradeResource = @import("org/allbinary/game/input/resource/TouchButtonUpgradeResource.zig").TouchButtonUpgradeResource;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CellPositionFactory = @import("org/allbinary/graphics/CellPositionFactory.zig").CellPositionFactory;
const BaseTouchInput = @import("org/allbinary/input/motion/button/BaseTouchInput.zig").BaseTouchInput;
const BasicTouchButtonCellPositionFactory = @import("org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory.zig").BasicTouchButtonCellPositionFactory;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;
const TouchButton = @import("org/allbinary/input/motion/button/TouchButton.zig").TouchButton;
const TouchButtonLocationHelper = @import("org/allbinary/input/motion/button/TouchButtonLocationHelper.zig").TouchButtonLocationHelper;

pub const UpgradeDowngradeTouchButtonsBuilder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.UpgradeDowngradeTouchButtonsBuilder";
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
            const cellPositionFactory: ?*CellPositionFactory = Inheritance.upcast(?*CellPositionFactory, CellPositionFactory.getInstance());
            const basicTouchButtonCellPositionFactory: ?*BasicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.create();
            if (!Object.same(basicTouchButtonCellPositionFactory.?.SECOND_FROM_TOP_LEFT, cellPositionFactory.?.NONE) and !Object.same(basicTouchButtonCellPositionFactory.?.SECOND_FROM_TOP_RIGHT, cellPositionFactory.?.NONE)) {
                const commonButtons: ?*CommonButtons = Inheritance.upcast(?*CommonButtons, CommonButtons.getInstance());
                const UP: ?*TouchButton = Inheritance.upcast(?*TouchButton, Inheritance.callStatic(TouchButton, "createButton", .{ BasicTouchInputFactory.getInstance().?.SPECIAL_BUTTON_TWO, TouchButtonUpgradeResource.getInstance(), commonButtons.?.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.?.SECOND_FROM_TOP_LEFT, touchButtonLocationHelper.?.getColumnsRemainderHalf(), touchButtonLocationHelper.?.getRowsRemainderHalf() }));
                const DOWN: ?*TouchButton = Inheritance.upcast(?*TouchButton, Inheritance.callStatic(TouchButton, "createButton", .{ BasicTouchInputFactory.getInstance().?.SPECIAL_BUTTON_ONE, TouchButtonDowngradeResource.getInstance(), commonButtons.?.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.?.SECOND_FROM_TOP_RIGHT, touchButtonLocationHelper.?.getColumnsRemainderHalf(), touchButtonLocationHelper.?.getRowsRemainderHalf() }));
                _ = Inheritance.call(list.?, "add", .{ UP });
                _ = Inheritance.call(list.?, "add", .{ DOWN });
            }
            return list;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CONSTRUCTOR, e });
//             return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }
};

