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
const HighScoreTextBox = @import("org/allbinary/game/score/displayable/HighScoreTextBox.zig").HighScoreTextBox;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Runnable = @import("java/lang/Runnable.zig").Runnable;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const SaveHighScoreRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.SaveHighScoreRunnable";
    pub const java_interfaces = .{ Runnable };
    progressCanvas: ?*ProgressCanvas = null,
    isLast: bool = false,
    textBox: ?*HighScoreTextBox = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        this.progressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        
        
    }
    

    pub fn create2(isLast: bool, textBox: ?*HighScoreTextBox) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.isLast = isLast;
        this.textBox = textBox;
        return this;
    }
    

    pub fn run(self: *Self) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            if (self.isLast) {
                _ = Inheritance.receiver(self.textBox.?, "submit").submit();
            } else {
                _ = Inheritance.receiver(self.textBox.?, "saveHighScore").saveHighScore();
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(logUtil.?, "put", .{ Inheritance.fieldPointer(commonStrings.?, "EXCEPTION").*, self, String.literal("run"), e });
//             _ = Inheritance.receiver(self.progressCanvas.?, "end").end();
    }
};

