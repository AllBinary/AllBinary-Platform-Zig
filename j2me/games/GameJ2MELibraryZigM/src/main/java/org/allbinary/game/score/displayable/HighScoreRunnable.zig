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
// package org.allbinary.game.score.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const HighScoresCanvas = @import("org/allbinary/game/score/displayable/HighScoresCanvas.zig").HighScoresCanvas;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const HighScoreRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.displayable.HighScoreRunnable";
    base: ARunnable = undefined,
    highScoresCanvas: ?*HighScoresCanvas = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(highScoresCanvas: ?*HighScoresCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ARunnable.create().*;
        this.initFields();
        this.highScoresCanvas = highScoresCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const highScoresCanvas: ?*HighScoresCanvas = self.highScoresCanvas;
        { // try
            const isHTML: bool = J2MEUtil.isHTML();
            if (!isHTML) {
                while (!Inheritance.fieldPointer(highScoresCanvas.?, "hasPainted").*) {
                }
                Inheritance.fieldPointer(highScoresCanvas.?, "hasPainted").* = false;
            }
            const stringMaker: ?*StringMaker = StringMaker.create();
            const systemWrapper: ?*ABSystemWrapper = Inheritance.upcast(?*ABSystemWrapper, ABSystemWrapper.getInstance());
            const currentTimeMillis: i64 = systemWrapper.?.currentTimeMillis();
            _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("HighScoresCanvas - Request repaint to be sure: ") }).?, "appendlong", .{ currentTimeMillis }))), self, Inheritance.fieldPointer(commonStrings.?, "RUN").* });
            _ = Inheritance.call(Inheritance.fieldPointer(highScoresCanvas.?, "repaintBehavior").*.?, "onChangeRepaint", .{ highScoresCanvas });
            if (!isHTML) {
                while (!Inheritance.fieldPointer(highScoresCanvas.?, "hasPainted").*) {
                }
            }
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ") }).?, "appendlong", .{ currentTimeMillis }))), self, Inheritance.fieldPointer(commonStrings.?, "RUN").* });
            _ = Inheritance.receiver(highScoresCanvas.?, "executeUpdate").executeUpdate();
        }
        // catch (Exception e):
//             _ = Inheritance.call(logUtil.?, "put", .{ Inheritance.fieldPointer(commonStrings.?, "EXCEPTION").*, self, Inheritance.fieldPointer(commonStrings.?, "RUN").*, e });
    }
};

