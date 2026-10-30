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
// package org.allbinary.graphics.canvas.transition.progress

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
// const NullCommandListener = @import("javax/microedition/lcdui/NullCommandListener.zig").NullCommandListener;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const RunnableCanvas = @import("org/allbinary/canvas/RunnableCanvas.zig").RunnableCanvas;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const ABCustomGaugeItem = @import("org/allbinary/graphics/form/item/ABCustomGaugeItem.zig").ABCustomGaugeItem;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryMidlet = @import("org/allbinary/midlet/AllBinaryMidlet.zig").AllBinaryMidlet;
const PathFindingThreadPool = @import("org/allbinary/thread/PathFindingThreadPool.zig").PathFindingThreadPool;
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;
const ProgressEndListener = @import("org/allbinary/graphics/canvas/transition/progress/ProgressEndListener.zig").ProgressEndListener;

pub const ProgressCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.ProgressCanvas";
    base: RunnableCanvas = undefined,
    hasPainted: bool = false,
    backgroundBasicColor: ?*BasicColor = null,
    GAUGE_PAINTABLE: ?*Paintable = null,
    maxValue: f32 = 0.0,
    gauge: ?*ABCustomGaugeItem = null,
    TEXT: ?*String = null,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    allbinaryMidlet: ?*AllBinaryMidlet = null,
    value: f32 = 0.0,
    text: ?*String = null,
    background: bool = false,
    paintable: ?*PaintableInterface = null,
    inProgress: bool = false,
    IN_GAME_PROCESSOR: ?*Processor = null,
    inGameProcessor: ?*Processor = null,
    progressEndListener: ?*ProgressEndListener = null,
    backgroundLabel: ?*String = null,
    START_BACKGROUND: ?*String = null,
    ADD_PORTION: ?*String = null,
    ADD_EARLY_PORTION: ?*String = null,
    // Implements PaintableInterface
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.hasPainted = false;
        
        this.GAUGE_PAINTABLE = Inheritance.upcast(?*Paintable, Inheritance.callStatic(ProgressPaintable, "create1", .{ this }));
        this.maxValue = 100.0;
        
        this.TEXT = Inheritance.upcast(?*String, Inheritance.fieldPointer(this, "commonStrings").*.?.LOADING);
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.allbinaryMidlet = Inheritance.upcast(?*AllBinaryMidlet, AllBinaryMidlet.getNullInstance());
        this.value = 0.0;
        this.text = this.TEXT;
        this.background = true;
        this.paintable = Inheritance.upcast(?*PaintableInterface, this.GAUGE_PAINTABLE);
        this.inProgress = false;
        this.IN_GAME_PROCESSOR = Processor.create() // Java anonymous class body: implement it as a named type
//         this.pathFindingThreadPool = Inheritance.upcast(?*ThreadPool, PathFindingThreadPool.getInstance());
//         
// 
//         // throws Exception
//         pub fn process(self: *Self) void {
//             _ = Inheritance.fieldPointer(self, "pathFindingThreadPool").*.?.runAPriorityTask();
//         }
;
        this.inGameProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.progressEndListener = Inheritance.upcast(?*ProgressEndListener, ProgressEndListener.instance);
        this.backgroundLabel = String.literal("Background AI Game Loading...");
        this.START_BACKGROUND = String.literal("startBackground");
        this.ADD_PORTION = String.literal("addPortion");
        this.ADD_EARLY_PORTION = String.literal("addEarlyPortion");
    }
    

    pub fn create3(title: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = title;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RunnableCanvas, "create3", .{ NullCommandListener.NULL_COMMAND_LISTENER, CanvasStrings.getInstance().?.EMPTY_CHILD_NAME_LIST, false }).*;
        this.initFields();
        this.backgroundBasicColor = backgroundBasicColor;
        this.gauge = Inheritance.callStatic(ABCustomGaugeItem, "create5", .{ StringUtil.getInstance().?.EMPTY_STRING, @as(i32, @intFromFloat(this.maxValue)), 0, backgroundBasicColor, foregroundBasicColor });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        _ = Inheritance.call(self.gauge.?, "setHeight", .{ font.?.getHeight() + 2 });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn init(self: *Self, gameMidlet: ?*AllBinaryMidlet) void {
        self.allbinaryMidlet = gameMidlet;
    }
    

    // throws Exception
    pub fn update(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = cmdListener;
        _ = self;
    }
    

    pub fn getMaxValue(self: *Self) f32 {
        return self.maxValue;
    }
    

    pub fn start(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.START_METHOD_NAME });
        _ = Inheritance.call(self, "setBackground", .{ true });
        _ = Inheritance.call(self.gauge.?, "setHeight", .{ 30 });
        _ = Inheritance.call(self.gauge.?, "setLabel", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.PLEASE_WAIT });
        _ = Inheritance.call(self, "setText", .{ self.TEXT });
        _ = Inheritance.call(self, "setValue", .{ 0 });
        self.inGameProcessor = Inheritance.upcast(@TypeOf(self.inGameProcessor), Processor.getInstance());
        self.paintable = Inheritance.upcast(@TypeOf(self.paintable), self.GAUGE_PAINTABLE);
        self.inProgress = true;
    }
    

    pub fn startBackground(self: *Self, background: bool) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.START_BACKGROUND });
        _ = Inheritance.call(self, "setBackground", .{ background });
        self.myFontProcessor = self.updateMyFontProcessor;
        _ = Inheritance.call(self.gauge.?, "setLabel", .{ self.backgroundLabel });
        _ = Inheritance.call(self, "setText", .{ self.TEXT });
        _ = Inheritance.call(self, "setValue", .{ 0 });
        self.inGameProcessor = Inheritance.upcast(@TypeOf(self.inGameProcessor), Processor.getInstance());
        self.paintable = Inheritance.upcast(@TypeOf(self.paintable), self.GAUGE_PAINTABLE);
    }
    

    pub fn endActual(self: *Self) void {
        _ = Inheritance.call(self.allbinaryMidlet.?, "commandAction", .{ GameCommandsFactory.getInstance().?.SHOW_GAME_CANVAS, NullCanvas.NULL_CANVAS });
        self.inProgress = false;
        _ = self.inGame();
    }
    

    pub fn inGame(self: *Self) void {
        _ = self.progressEndListener.?.onEndEvent();
        self.inGameProcessor = self.IN_GAME_PROCESSOR;
    }
    

    pub fn end(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.END_METHOD_NAME });
        _ = Inheritance.call(self.gauge.?, "setValue", .{ self.getMaxValue() });
        _ = self.endActual();
        self.paintable = Inheritance.upcast(@TypeOf(self.paintable), NullPaintable.getInstance());
    }
    

    pub fn endFromInitialLazyLoadingComplete(self: *Self) void {
        _ = self.progressEndListener.?.onEndEvent();
        _ = Inheritance.call(self.gauge.?, "setValue", .{ self.getMaxValue() });
        self.inGameProcessor = self.IN_GAME_PROCESSOR;
    }
    

    pub fn isInGame(self: *Self) bool {
        if (Object.same(self.inGameProcessor, self.IN_GAME_PROCESSOR)) {
            return true;
        }
        return false;
    }
    

    pub fn endIfPaintedSinceStart(self: *Self) void {
        _ = self;
    }
    

    pub fn addEarlyPortion(self: *Self, value: i32, text: ?*String, index: i32) void {
        _ = Inheritance.call(self, "setText", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ text }).?, "append", .{ Object.toString(Object.of(Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ index }))) }))) });
        _ = Inheritance.call(self.gauge.?, "setValue", .{ Inheritance.receiver(self.gauge.?, "getValue").getValue() + self.getMaxValue() / @as(f32, @floatFromInt(value)) });
    }
    

    pub fn addPortion(self: *Self, value: i32, text: ?*String, index: i32) void {
        _ = Inheritance.call(self, "setText", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ text }).?, "append", .{ Object.toString(Object.of(Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ index }))) }))) });
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ self.text, self, self.ADD_PORTION });
        _ = Inheritance.call(self.gauge.?, "setValue", .{ Inheritance.receiver(self.gauge.?, "getValue").getValue() + self.getMaxValue() / @as(f32, @floatFromInt(value)) });
    }
    

    pub fn addNormalPortion(self: *Self, value: i32, text: ?*String) void {
        if (!Object.same(self.text, text)) {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ text, self, self.ADD_PORTION });
        }
        _ = Inheritance.call(self, "setText", .{ text });
        _ = Inheritance.call(self.gauge.?, "setValue", .{ Inheritance.receiver(self.gauge.?, "getValue").getValue() + self.getMaxValue() / @as(f32, @floatFromInt(value)) });
    }
    

    pub fn setValue(self: *Self, value: i32) void {
        self.value = @as(f32, @floatFromInt(value));
        _ = Inheritance.call(self.gauge.?, "setValue", .{ @as(f32, @floatFromInt(value)) });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.paintable.?, "paint", .{ graphics });
    }
    

    pub fn paint2(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(graphics.?, "setColor", .{ self.backgroundBasicColor.?.intValue() });
        _ = Inheritance.call(graphics.?, "fillRect", .{ 0, 0, Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastWidth").getLastWidth(), Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastHeight").getLastHeight() });
        _ = Inheritance.call(self.gauge.?, "paintXY", .{ graphics, 0, 0 });
        self.hasPainted = true;
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getValue(self: *Self) f32 {
        return self.value;
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        self.text = text;
    }
    

    pub fn getText(self: *Self) ?*String {
        return self.text;
    }
    

    pub fn setBackground(self: *Self, background: bool) void {
        self.background = background;
    }
    

    pub fn isBackground(self: *Self) bool {
        return self.background;
    }
    pub const ProgressPaintable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.canvas.transition.progress.ProgressPaintable";
        base: Paintable = undefined,
        progressCanvas: ?*ProgressCanvas = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(progressCanvas: ?*ProgressCanvas) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = Paintable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "progressCanvas").* = progressCanvas;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn paint(self: *Self, graphics: ?*Graphics) void {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "progressCanvas").*.?, "paint2", .{ graphics });
        }
    };
};

