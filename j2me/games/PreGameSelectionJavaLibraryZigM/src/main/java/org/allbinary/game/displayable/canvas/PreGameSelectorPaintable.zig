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
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const CanvasDrawLineString = @import("org/allbinary/graphics/draw/CanvasDrawLineString.zig").CanvasDrawLineString;
const InitUpdatePaintable = @import("org/allbinary/graphics/paint/InitUpdatePaintable.zig").InitUpdatePaintable;
const PreGameScrollSelectionForm = @import("org/allbinary/game/displayable/canvas/PreGameScrollSelectionForm.zig").PreGameScrollSelectionForm;

pub const PreGameSelectorPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.PreGameSelectorPaintable";
    base: InitUpdatePaintable = undefined,
    title: ?*String = null,
    canvasDrawLineString: ?*CanvasDrawLineString = null,
    preGameScrollSelectionForm: ?*PreGameScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create2(title: ?*String, preGameScrollSelectionForm: ?*PreGameScrollSelectionForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitUpdatePaintable.create().*;
        this.initFields();
        this.title = title;
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.canvasDrawLineString = Inheritance.callStatic(CanvasDrawLineString, "create2", .{ displayInfo.?.getLastHalfWidth(), 0 });
        this.preGameScrollSelectionForm = preGameScrollSelectionForm;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        self.canvasDrawLineString = Inheritance.callStatic(CanvasDrawLineString, "create2", .{ displayInfo.?.getLastHalfWidth(), 0 });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(BasicColorFactory.getInstance().?.WHITE.?, "intValue").intValue() });
        _ = Inheritance.call(self.canvasDrawLineString.?, "paint", .{ graphics, self.title, 0 });
        _ = Inheritance.call(self.getPreGameSelectionForm().?, "paint", .{ graphics });
    }
    

    pub fn getPreGameSelectionForm(self: *Self) ?*PreGameScrollSelectionForm {
        return self.preGameScrollSelectionForm;
    }
};

