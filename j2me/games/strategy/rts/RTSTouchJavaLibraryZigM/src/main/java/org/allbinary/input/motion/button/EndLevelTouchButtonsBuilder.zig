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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicTouchButtonsBuilder = @import("org/allbinary/input/motion/button/BasicTouchButtonsBuilder.zig").BasicTouchButtonsBuilder;
const BuildingScrollTouchButtonsBuilder = @import("org/allbinary/input/motion/button/BuildingScrollTouchButtonsBuilder.zig").BuildingScrollTouchButtonsBuilder;
const TouchButtonsListBuilder = @import("org/allbinary/input/motion/button/TouchButtonsListBuilder.zig").TouchButtonsListBuilder;
const UpgradeDowngradeTouchButtonsBuilder = @import("org/allbinary/input/motion/button/UpgradeDowngradeTouchButtonsBuilder.zig").UpgradeDowngradeTouchButtonsBuilder;

pub const EndLevelTouchButtonsBuilder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.EndLevelTouchButtonsBuilder";
    base: TouchButtonsListBuilder = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TouchButtonsListBuilder.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CONSTRUCTOR });
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(list.?, "addAllList", .{ Inheritance.receiver(BasicTouchButtonsBuilder.create(), "getList").getList() });
            _ = Inheritance.call(list.?, "addAllList", .{ Inheritance.receiver(BuildingScrollTouchButtonsBuilder.create(), "getList").getList() });
            _ = Inheritance.call(list.?, "addAllList", .{ Inheritance.receiver(UpgradeDowngradeTouchButtonsBuilder.create(), "getList").getList() });
            _ = Inheritance.call(self, "addList", .{ list });
            return list;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CONSTRUCTOR, e });
//             return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }
};

