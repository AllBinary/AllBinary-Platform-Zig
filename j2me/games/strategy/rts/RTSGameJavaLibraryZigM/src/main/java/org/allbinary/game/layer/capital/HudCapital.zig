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
// package org.allbinary.game.layer.capital

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NumberStringHud = @import("org/allbinary/game/ag/layer/hud/basic/NumberStringHud.zig").NumberStringHud;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;

pub const HudCapital = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.capital.HudCapital";
    base: Capital = undefined,
    capitalGraphic: ?*NumberStringHud = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(moneyGraphic: ?*NumberStringHud) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Capital.create().*;
        this.initFields();
        this.capitalGraphic = moneyGraphic;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn removeMoney(self: *Self, points: i32) void {
        _ = Inheritance.call(&self.base, "removeMoney", .{ points });
        _ = Inheritance.call(self.capitalGraphic.?, "reduce", .{ points });
    }
    

    pub fn getTotalMoney(self: *Self) i32 {
        return Inheritance.receiver(self.capitalGraphic.?, "get").get();
    }
    

    pub fn addMoney(self: *Self, points: i32) void {
        _ = Inheritance.call(&self.base, "addMoney", .{ points });
        _ = Inheritance.call(self.capitalGraphic.?, "add", .{ points });
    }
};

