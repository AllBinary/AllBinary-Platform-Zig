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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;
const LockedResources = @import("org/allbinary/logic/system/security/licensing/LockedResources.zig").LockedResources;
const LockedUtil = @import("org/allbinary/logic/system/security/licensing/LockedUtil.zig").LockedUtil;
const LockablePaintable = @import("org/allbinary/graphics/form/LockablePaintable.zig").LockablePaintable;
const ScrollCurrentSelectionForm = @import("org/allbinary/graphics/form/ScrollCurrentSelectionForm.zig").ScrollCurrentSelectionForm;

pub const PreGameLockablePaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.PreGameLockablePaintable";
    base: LockablePaintable = undefined,
    halfWidth: i32 = 0,
    paintableForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(paintableForm: ?*ScrollCurrentSelectionForm, lockedIndex: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LockablePaintable, "create1", .{ lockedIndex }).*;
        this.initFields();
        this.paintableForm = paintableForm;
        this.halfWidth = (divide_N65927: { const left_N65927 = Inheritance.receiverOf(Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "getWithKey", .{ LockedResources.getInstance().?.LOCKED_DEMO_GAME_FEATURE_RESOURCE }).?, "getWidth").getWidth(); const right_N65927 = 2; break :divide_N65927 if (comptime @typeInfo(@TypeOf(left_N65927)) == .int or @TypeOf(left_N65927) == comptime_int) @divTrunc(left_N65927, right_N65927) else left_N65927 / right_N65927; });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics, currentIndex: i32, x: i32, y: i32) void {
        _ = currentIndex;
        _ = x;
        _ = y;
        if (Inheritance.receiverOf(LockedUtil.getInstance().?, "isLocked").isLocked() and Inheritance.receiverOf(self.getPaintableForm().?, "getSelectedIndex").getSelectedIndex() >= Inheritance.receiver(self, "getLockedIndex").getLockedIndex()) {
            _ = Inheritance.call(Inheritance.receiver(self, "getAnimation").getAnimation().?, "paintXY", .{ graphics, Inheritance.receiverOf(self.getPaintableForm().?, "getDx").getDx() - self.halfWidth, Inheritance.receiverOf(self.getPaintableForm().?, "getDy").getDy() + 34 });
        }
    }
    

    pub fn getPaintableForm(self: *Self) ?*ScrollCurrentSelectionForm {
        return self.paintableForm;
    }
};

