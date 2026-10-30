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
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GameKeyEventHandler = @import("org/allbinary/game/input/event/GameKeyEventHandler.zig").GameKeyEventHandler;
const GameKeyEventUtil = @import("org/allbinary/game/input/event/GameKeyEventUtil.zig").GameKeyEventUtil;
const HighScoresCanvas = @import("org/allbinary/game/score/displayable/HighScoresCanvas.zig").HighScoresCanvas;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HighScoresCanvasInputProcessor = @import("org/allbinary/game/score/HighScoresCanvasInputProcessor.zig").HighScoresCanvasInputProcessor;

pub const HighScoresCanvasLevelChangeInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor";
    base: HighScoresCanvasInputProcessor = undefined,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    INSTRUCTIONS: ?*String = null,
    myFontProcessor: ?*MyFontProcessor = null,
    anchor: i32 = 0,
    fontHeight: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.INSTRUCTIONS = String.literal("(Right = Next Track, Left = Previous Track)");
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.anchor = Anchor.TOP_LEFT;
        this.fontHeight = 0;
    }
    

    pub fn create1(highScoresCanvas: ?*HighScoresCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HighScoresCanvasInputProcessor, "create1", .{ highScoresCanvas }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn open(self: *Self) void {
        _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "addListener", .{ self });
    }
    

    pub fn close(self: *Self) void {
        _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "removeListener", .{ self });
    }
    

    pub fn update(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList());
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, list.?.objectArray[@intCast(index)]);
            const key: i32 = Inheritance.callStatic(GameKeyEventUtil, "getKey", .{ anyType });
            if (key == Canvas.RIGHT) {
                _ = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getHighScoresCanvas").getHighScoresCanvas().?, "getGameInfo").getGameInfo().?, "nextGameLevel").nextGameLevel();
            } else if (key == Canvas.LEFT) {
                _ = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getHighScoresCanvas").getHighScoresCanvas().?, "getGameInfo").getGameInfo().?, "previousGameLevel").previousGameLevel();
            }
            _ = Inheritance.receiverOf(Inheritance.receiver(self, "getHighScoresCanvas").getHighScoresCanvas().?, "executeUpdate").executeUpdate();
            }
        }
        _ = list.?.clear();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const width: i32 = self.displayInfoSingleton.?.getLastWidth();
        const topScoresWidth: i32 = (Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ self.INSTRUCTIONS }) >> @intCast(1));
        _ = Inheritance.call(graphics.?, "drawString", .{ self.INSTRUCTIONS, (width >> @intCast(1)) - topScoresWidth, self.fontHeight * 2, self.anchor });
    }
};

