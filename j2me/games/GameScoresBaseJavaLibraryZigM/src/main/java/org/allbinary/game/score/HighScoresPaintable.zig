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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ColorChangeEvent = @import("org/allbinary/graphics/color/ColorChangeEvent.zig").ColorChangeEvent;
const ColorChangeListener = @import("org/allbinary/graphics/color/ColorChangeListener.zig").ColorChangeListener;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const NullHighScoresSingletonFactory = @import("org/allbinary/game/score/NullHighScoresSingletonFactory.zig").NullHighScoresSingletonFactory;

pub const HighScoresPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresPaintable";
    base: Paintable = undefined,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    myFontProcessor: ?*MyFontProcessor = null,
    basicColor: ?*BasicColor = null,
    highScores: ?*HighScores = null,
    anchor: i32 = 0,
    charHeight: i32 = 0,
    // Implements ColorChangeListener
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
        this.highScores = Inheritance.upcast(?*HighScores, NullHighScoresSingletonFactory.getInstance());
        this.anchor = Anchor.TOP_LEFT;
        this.charHeight = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.charHeight = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        const colorChangeEvent: ?*ColorChangeEvent = Inheritance.cast(?*ColorChangeEvent, eventObject);
        self.basicColor = Inheritance.upcast(@TypeOf(self.basicColor), Inheritance.receiver(colorChangeEvent.?, "getBasicColorP").getBasicColorP());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const width: i32 = self.displayInfoSingleton.?.getLastWidth();
        const height: i32 = self.displayInfoSingleton.?.getLastHeight();
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(self.getBasicColorP().?, "intValue").intValue() });
        const heading: ?*String = Inheritance.upcast(?*String, self.highScores.?.getHeading());
        const topScoresWidth: i32 = (Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ heading }) >> @intCast(1));
        const charHeight: i32 = self.charHeight;
        _ = Inheritance.call(graphics.?, "drawString", .{ heading, (width >> @intCast(1)) - topScoresWidth, charHeight, self.anchor });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.highScores.?.getColumnOneHeading(), 10, charHeight * 3, self.anchor });
        const columnTwoHeading: ?*String = Inheritance.upcast(?*String, self.highScores.?.getColumnTwoHeading());
        const columnTwoHeadingWidth: i32 = Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ columnTwoHeading });
        _ = Inheritance.call(graphics.?, "drawString", .{ columnTwoHeading, width - 10 - columnTwoHeadingWidth, charHeight * 3, self.anchor });
        var index: i32 = 4;
        var largestSecondColumnWidth: i32 = columnTwoHeadingWidth;
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.highScores.?.getList());
        const size: i32 = list.?.size();
        var vectorIndex: i32 = 0;
        var highScore: ?*HighScore = null;
        while (vectorIndex < size and charHeight * index < height - (charHeight * 2)) {
            highScore = Inheritance.cast(?*HighScore, list.?.objectArray[@intCast(vectorIndex)]);
            const nextScoreWidth: i32 = Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ highScore.?.getScoreString() });
            if (nextScoreWidth > largestSecondColumnWidth) {
                largestSecondColumnWidth = nextScoreWidth;
            }
            vectorIndex += 1;
        }
        vectorIndex = 0;
        while (vectorIndex < size and charHeight * index < height - (charHeight * 2)) {
            highScore = Inheritance.cast(?*HighScore, list.?.objectArray[@intCast(vectorIndex)]);
            _ = Inheritance.call(graphics.?, "drawString", .{ highScore.?.getName(), 10, charHeight * index, self.anchor });
            _ = Inheritance.call(graphics.?, "drawString", .{ highScore.?.getScoreString(), width - 10 - largestSecondColumnWidth, charHeight * index, self.anchor });
            index += 1;
            vectorIndex += 1;
        }
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn setHighScores(self: *Self, highScores: ?*HighScores) void {
        self.highScores = highScores;
    }
};

