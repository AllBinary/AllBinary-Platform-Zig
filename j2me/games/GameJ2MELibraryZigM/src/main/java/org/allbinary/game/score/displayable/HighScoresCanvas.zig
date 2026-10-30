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
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GameCommandCanvas = @import("org/allbinary/game/displayable/canvas/GameCommandCanvas.zig").GameCommandCanvas;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const ColorFillBasePaintable = @import("org/allbinary/game/paint/ColorFillBasePaintable.zig").ColorFillBasePaintable;
const ColorFillPaintableFactory = @import("org/allbinary/game/paint/ColorFillPaintableFactory.zig").ColorFillPaintableFactory;
const HighScoreCommandsFactory = @import("org/allbinary/game/score/HighScoreCommandsFactory.zig").HighScoreCommandsFactory;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresCanvasInputProcessor = @import("org/allbinary/game/score/HighScoresCanvasInputProcessor.zig").HighScoresCanvasInputProcessor;
const HighScoresCanvasInputProcessorFactoryInterface = @import("org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface.zig").HighScoresCanvasInputProcessorFactoryInterface;
const HighScoresFactoryInterface = @import("org/allbinary/game/score/HighScoresFactoryInterface.zig").HighScoresFactoryInterface;
const HighScoresHelperBase = @import("org/allbinary/game/score/HighScoresHelperBase.zig").HighScoresHelperBase;
const HighScoresPaintable = @import("org/allbinary/game/score/HighScoresPaintable.zig").HighScoresPaintable;
const HighScoresResultsListener = @import("org/allbinary/game/score/HighScoresResultsListener.zig").HighScoresResultsListener;
const NoHighScoresFactory = @import("org/allbinary/game/score/NoHighScoresFactory.zig").NoHighScoresFactory;
const NullHighScoresSingletonFactory = @import("org/allbinary/game/score/NullHighScoresSingletonFactory.zig").NullHighScoresSingletonFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const SimpleTextPaintable = @import("org/allbinary/graphics/paint/SimpleTextPaintable.zig").SimpleTextPaintable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const SecondaryThreadPool = @import("org/allbinary/thread/SecondaryThreadPool.zig").SecondaryThreadPool;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;

pub const HighScoresCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.displayable.HighScoresCanvas";
    base: GameCommandCanvas = undefined,
    paintable: ?*Paintable = null,
    highScoreCommandsFactory: ?*HighScoreCommandsFactory = null,
    waitPaintable: ?*SimpleTextPaintable = null,
    highScoresPaintable: ?*HighScoresPaintable = null,
    highScoresFactoryInterface: ?*HighScoresFactoryInterface = null,
    colorFillPaintable: ?*ColorFillBasePaintable = null,
    highScoresHelper: ?*HighScoresHelperBase = null,
    gameInfo: ?*GameInfo = null,
    highScoresCanvasInputProcessor: ?*HighScoresCanvasInputProcessor = null,
    currentCommand: ?*Command = null,
    hasPainted: bool = false,
    // Implements HighScoresResultsListener
    pub const NAME: ?*String = String.literal("HighScoresCanvas");

    fn initFields(this: *Self) void {
        this.paintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.highScoreCommandsFactory = Inheritance.upcast(?*HighScoreCommandsFactory, HighScoreCommandsFactory.getInstance());
        this.waitPaintable = Inheritance.callStatic(SimpleTextPaintable, "create2", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().?.WHITE });
        
        
        
        this.highScoresHelper = HighScoresHelperBase.create();
        
        
        this.currentCommand = Inheritance.upcast(?*Command, this.highScoreCommandsFactory.?.HIGH_SCORE_COMMANDS[@intCast(0)]);
        this.hasPainted = false;
    }
    

    pub fn create6(commandListener: ?*CommandListener, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, gameInfo: ?*GameInfo, paintable: ?*HighScoresPaintable, highScoresFactoryInterface: ?*HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface: ?*HighScoresCanvasInputProcessorFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameCommandCanvas, "create4", .{ commandListener, HighScoresCanvas.NAME, Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(allBinaryGameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        this.highScoresPaintable = Inheritance.upcast(@TypeOf(this.highScoresPaintable), paintable);
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresCanvasInputProcessor = Inheritance.upcast(@TypeOf(this.highScoresCanvasInputProcessor), Inheritance.call(highScoresCanvasInputProcessorFactoryInterface.?, "getInstance", .{ this }));
        this.gameInfo = gameInfo;
        _ = Inheritance.call(this.waitPaintable.?, "setBasicColorP", .{ Inheritance.receiver(allBinaryGameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(this.getHighScoresPaintable().?, "setBasicColorP", .{ Inheritance.receiver(allBinaryGameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() });
        this.colorFillPaintable = Inheritance.upcast(@TypeOf(this.colorFillPaintable), Inheritance.call(ColorFillPaintableFactory.getInstance().?, "getInstance", .{ Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), false }));
        if (Object.same(this.highScoresHelper.?.getHighScoresArray(), NoHighScoresFactory.getInstance().?.NO_HIGH_SCORES)) {
            _ = Inheritance.call(this, "setPaintable", .{ this.waitPaintable });
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ String.literal("Show HighScores that are already loaded"), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
            _ = Inheritance.call(this, "updateCommand", .{ this.currentCommand });
            _ = Inheritance.call(this, "setPaintable", .{ this.getHighScoresPaintable() });
        }
        const HighScoreRunnable = struct {
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
                Inheritance.fieldPointer(this, "highScoresCanvas").* = highScoresCanvas;
                Inheritance.bindOverrides(this);
                return this;
            }
            

            pub fn run(self: *Self) void {
                const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
                const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
                const highScoresCanvas: ?*HighScoresCanvas = Inheritance.fieldPointer(self, "highScoresCanvas").*;
                { // try
                    const isHTML: bool = J2MEUtil.isHTML();
                    if (!isHTML) {
                        while (!highScoresCanvas.?.hasPainted) {
                        }
                        highScoresCanvas.?.hasPainted = false;
                    }
                    const stringMaker: ?*StringMaker = StringMaker.create();
                    const systemWrapper: ?*ABSystemWrapper = Inheritance.upcast(?*ABSystemWrapper, ABSystemWrapper.getInstance());
                    const currentTimeMillis: i64 = systemWrapper.?.currentTimeMillis();
                    _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("HighScoresCanvas - Request repaint to be sure: ") }).?, "appendlong", .{ currentTimeMillis }))), self, commonStrings.?.RUN });
                    _ = Inheritance.call(highScoresCanvas.?.repaintBehavior.?, "onChangeRepaint", .{ highScoresCanvas });
                    if (!isHTML) {
                        while (!highScoresCanvas.?.hasPainted) {
                        }
                    }
                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                    _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ") }).?, "appendlong", .{ currentTimeMillis }))), self, commonStrings.?.RUN });
                    _ = Inheritance.receiver(highScoresCanvas.?, "executeUpdate").executeUpdate();
                }
                // catch (Exception e):
//                     _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
            }
        };
        _ = Inheritance.call(SecondaryThreadPool.getInstance().?, "runTask", .{ Inheritance.callStatic(HighScoreRunnable, "create1", .{ this }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ GameCommandsFactory.getInstance().?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    pub fn open(self: *Self) void {
        _ = self.base.open();
        _ = Inheritance.receiver(self.highScoresCanvasInputProcessor.?, "open").open();
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = self.base.close();
        _ = Inheritance.receiver(self.highScoresCanvasInputProcessor.?, "close").close();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.colorFillPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.paintable.?, "paint", .{ graphics });
        if (!Object.same(self.waitPaintable, self.paintable)) {
            _ = Inheritance.call(self.highScoresCanvasInputProcessor.?, "paint", .{ graphics });
        }
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        self.hasPainted = true;
    }
    

    pub fn executeUpdate(self: *Self) void {
        { // try
            _ = Inheritance.call(self.highScoresFactoryInterface.?, "fetchHighScores", .{ self.getGameInfo(), self });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE, e });
    }
    

    pub fn getHighScoresPaintable(self: *Self) ?*HighScoresPaintable {
        return self.highScoresPaintable;
    }
    

    pub fn setHighScoresArray(self: *Self, highScoresArray: []?*HighScores) void {
        { // try
            if (highScoresArray != null) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START }).?, "appendint", .{ @as(i32, @intCast(highScoresArray.len)) }))), self, String.literal("setHighScoresArray") });
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("setHighScoresArray") });
            }
            _ = Inheritance.call(self.highScoresHelper.?, "setHighScoresArray", .{ highScoresArray });
            _ = Inheritance.call(self, "updateCommand", .{ self.currentCommand });
            _ = Inheritance.call(self, "setPaintable", .{ self.getHighScoresPaintable() });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE, e });
    }
    

    // throws Exception
    pub fn updateCommand(self: *Self, command: ?*Command) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ command }) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE });
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        if (Inheritance.call(self.highScoreCommandsFactory.?, "isHighScoreCommand", .{ command })) {
            const index: i32 = Inheritance.call(self.highScoreCommandsFactory.?, "getIndex", .{ command });
            var nextIndex: i32 = index + 1;
            const highScoresArray: []?*HighScores = self.highScoresHelper.?.getHighScoresArray();
            if (nextIndex >= @as(i32, @intCast(highScoresArray.len))) {
                nextIndex = 0;
            }
            if (@as(i32, @intCast(highScoresArray.len)) > 0) {
                _ = Inheritance.call(self.getHighScoresPaintable().?, "setHighScores", .{ highScoresArray[@intCast(index)] });
            } else {
                _ = Inheritance.call(self.getHighScoresPaintable().?, "setHighScores", .{ NullHighScoresSingletonFactory.getInstance() });
            }
            if (index != nextIndex) {
                _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
                _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.CLOSE_AND_SHOW_GAME_CANVAS });
                _ = Inheritance.call(self, "addCommand", .{ self.highScoreCommandsFactory.?.HIGH_SCORE_COMMANDS[@intCast(nextIndex)] });
            }
        }
        self.currentCommand = command;
        _ = self.close();
        _ = self.base.initMenu();
        _ = self.open();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
    }
    

    pub fn getGameInfo(self: *Self) ?*GameInfo {
        return self.gameInfo;
    }
    

    pub fn setPaintable(self: *Self, paintable: ?*Paintable) void {
        self.paintable = paintable;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
    }
};

