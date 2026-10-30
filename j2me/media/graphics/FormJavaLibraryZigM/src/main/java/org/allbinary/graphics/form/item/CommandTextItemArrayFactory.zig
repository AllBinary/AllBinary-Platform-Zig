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
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const ImageItem = @import("javax/microedition/lcdui/ImageItem.zig").ImageItem;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const ScreenInfo = @import("org/allbinary/graphics/form/ScreenInfo.zig").ScreenInfo;
const VectorUtil = @import("org/allbinary/logic/VectorUtil.zig").VectorUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const CommandTextItem = @import("org/allbinary/graphics/form/item/CommandTextItem.zig").CommandTextItem;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const CommandTextItemArrayFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.CommandTextItemArrayFactory";
    list: ?*BasicArrayList = null,
    visitorInterface: ?*Visitor = null,

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
    }
    

    pub fn create1(visitorInterface: ?*Visitor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.visitorInterface = visitorInterface;
        return this;
    }
    

    pub fn getInstance(self: *Self, vector: ?Object, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) []?*ABCustomItem {
        const vectorUtil: ?*VectorUtil = Inheritance.upcast(?*VectorUtil, VectorUtil.getInstance());
        const size: i32 = Inheritance.call(vectorUtil.?, "getSize", .{ vector });
        _ = self.list.?.clear();
        var textItem: ?*CommandTextItem = null;
        var priorityLimit: i32 = 7;
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const isLargeEnoughDisplayForBigMenu: bool = (displayInfo.?.isPortrait() and displayInfo.?.getLastHeight() >= ScreenInfo.getInstance().?.MEDIUM_WIDTH) or (!displayInfo.?.isPortrait() and displayInfo.?.getLastWidth() >= ScreenInfo.getInstance().?.MEDIUM_WIDTH);
        if (!isLargeEnoughDisplayForBigMenu and size > 3) {
            priorityLimit = 3;
        }
        var command: ?*Command = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            command = Inheritance.cast(?*Command, Inheritance.call(vectorUtil.?, "elementAt", .{ vector, index }));
            if (command.?.getPriority() < priorityLimit) {
                const aBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(self.visitorInterface.?, "visit", .{ command }));
                if (aBoolean.?.booleanValue()) {
                    textItem = Inheritance.callStatic(CommandTextItem, "create5", .{ command, ImageItem.LAYOUT_DEFAULT, StringUtil.getInstance().?.EMPTY_STRING, backgroundBasicColor, foregroundBasicColor });
                    _ = Inheritance.call(self.list.?, "add", .{ textItem });
                }
            }
            }
        }
        const textItemArray: []?*ABCustomItem = array_N66975: { const array_N66975_array = allocator.alloc(?*ABCustomItem, @intCast(self.list.?.size())) catch unreachable; @memset(array_N66975_array, null); break :array_N66975 array_N66975_array; };
        const size2: i32 = @as(i32, @intCast(textItemArray.len));
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            textItemArray[@intCast(index)] = Inheritance.cast(?*ABCustomItem, self.list.?.objectArray[@intCast(index)]);
            }
        }
        return textItemArray;
    }
};

