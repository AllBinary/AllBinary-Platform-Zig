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
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const DemoCanvas = @import("org/allbinary/game/displayable/canvas/DemoCanvas.zig").DemoCanvas;
const GameInputMappingCanvas = @import("org/allbinary/game/displayable/canvas/GameInputMappingCanvas.zig").GameInputMappingCanvas;
const GameInputMappingInstructionsCanvas = @import("org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.zig").GameInputMappingInstructionsCanvas;
const GameRunnable = @import("org/allbinary/game/displayable/canvas/GameRunnable.zig").GameRunnable;
const NullDisplayable = @import("org/allbinary/game/displayable/canvas/NullDisplayable.zig").NullDisplayable;
const NullWaitGameRunnable = @import("org/allbinary/game/displayable/canvas/NullWaitGameRunnable.zig").NullWaitGameRunnable;
const SWTUtil = @import("org/allbinary/game/layer/SWTUtil.zig").SWTUtil;
const HighScoresCanvas = @import("org/allbinary/game/score/displayable/HighScoresCanvas.zig").HighScoresCanvas;
const GraphicsStrings = @import("org/allbinary/graphics/GraphicsStrings.zig").GraphicsStrings;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NullRunnable = @import("org/allbinary/thread/NullRunnable.zig").NullRunnable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;

pub const CurrentDisplayableFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.CurrentDisplayableFactory";
    commonStrings: ?*CommonStrings = null,
    canvasStrings: ?*CanvasStrings = null,
    stringUtil: ?*StringUtil = null,
    SET_DISPLAYABLE: ?*String = null,
    SET_RUNNABLE: ?*String = null,
    CLEAR_RUNNABLE: ?*String = null,
    SET_USED_RUNNABLE: ?*String = null,
    RUNNABLE: ?*String = null,
    RUNNABLE_WAS_ALREADY_IN_USE: ?*String = null,
    DEFAULT_CHILD_NAME_LIST: ?*BasicArrayList = null,
    displayable: ?*Displayable = null,
    openGlReadydisplayable: ?*Displayable = null,
    runnable: ?*GameRunnable = null,
    usedRunnable: ?*GameRunnable = null,
    var instance: ?*CurrentDisplayableFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CurrentDisplayableFactory.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.canvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.SET_DISPLAYABLE = String.literal("setDisplayable");
        this.SET_RUNNABLE = String.literal("setRunnable");
        this.CLEAR_RUNNABLE = String.literal("clearRunnable");
        this.SET_USED_RUNNABLE = String.literal("setUsedRunnable");
        this.RUNNABLE = String.literal("Runnable: ");
        this.RUNNABLE_WAS_ALREADY_IN_USE = String.literal("Runnable was already in use: ");
        this.DEFAULT_CHILD_NAME_LIST = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.displayable = Inheritance.upcast(?*Displayable, NullDisplayable.getInstance());
        this.openGlReadydisplayable = Inheritance.upcast(?*Displayable, NullDisplayable.getInstance());
        this.runnable = Inheritance.upcast(?*GameRunnable, NullWaitGameRunnable.getInstance());
        this.usedRunnable = Inheritance.upcast(?*GameRunnable, NullWaitGameRunnable.getInstance());
    }
    

    pub fn getInstance() ?*CurrentDisplayableFactory {
        return Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.DEFAULT_CHILD_NAME_LIST.?, "add", .{ this.canvasStrings.?.ABOUT });
        _ = Inheritance.call(this.DEFAULT_CHILD_NAME_LIST.?, "add", .{ this.canvasStrings.?.OPTIONS });
        _ = Inheritance.call(this.DEFAULT_CHILD_NAME_LIST.?, "add", .{ GameInputMappingCanvas.NAME });
        _ = Inheritance.call(this.DEFAULT_CHILD_NAME_LIST.?, "add", .{ GameInputMappingInstructionsCanvas.NAME });
        _ = Inheritance.call(this.DEFAULT_CHILD_NAME_LIST.?, "add", .{ HighScoresCanvas.NAME });
        return this;
    }
    

    pub fn setMyCanvas(self: *Self, displayable: ?*MyCanvas) void {
        if (Object.instanceOf(Object.of(self.displayable), MyCanvas)) {
            if (Inheritance.call(displayable.?, "hasChild", .{ Inheritance.cast(?*MyCanvas, self.displayable) })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Child Displayable is already set for: ") }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ displayable }) }))), self, self.SET_DISPLAYABLE });
                return;
            }
        }
        _ = Inheritance.call(self, "setDisplayable", .{ displayable });
    }
    

    pub fn setDisplayable(self: *Self, displayable: ?*Displayable) void {
        self.displayable = displayable;
        _ = Inheritance.call(self, "setOpenGlReadydisplayable", .{ displayable });
    }
    

    pub fn setOpenGlReadydisplayable(self: *Self, openGlReadydisplayable: ?*Displayable) void {
        self.openGlReadydisplayable = openGlReadydisplayable;
        _ = self.update();
    }
    

    pub fn getOpenGlReadydisplayable(self: *Self) ?*Displayable {
        return self.openGlReadydisplayable;
    }
    

    pub fn setRunnable(self: *Self, runnable: ?*GameRunnable) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.RUNNABLE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ runnable }) }))), self, self.SET_RUNNABLE });
        self.runnable = runnable;
        if (!Object.same(self.usedRunnable, self.runnable)) {
            _ = self.update();
        } else {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.RUNNABLE_WAS_ALREADY_IN_USE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ runnable }) }))), self, self.SET_RUNNABLE });
        }
    }
    

    pub fn clearRunnable(self: *Self) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.RUNNABLE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ NullRunnable.getInstance() }) }))), self, self.CLEAR_RUNNABLE });
        _ = Inheritance.call(self, "setUsedRunnable", .{ NullWaitGameRunnable.getInstance() });
    }
    

    pub fn update(self: *Self) void {
        {
            const monitor_N68350 = Object.monitor(self).enter();
            defer monitor_N68350.exit();
            const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            const stringMaker: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringMaker.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ self.openGlReadydisplayable }) });
            if (SWTUtil.isSWT and !Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ SWTUtil.SWT }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ self.RUNNABLE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ NullRunnable.getInstance() }) }))), self, self.commonStrings.?.UPDATE });
                _ = Inheritance.call(self, "setUsedRunnable", .{ NullWaitGameRunnable.getInstance() });
            } else if (J2MEUtil.isHTML()) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ GraphicsStrings.getInstance().?.HTML }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ self.RUNNABLE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ self.runnable }) }))), self, self.commonStrings.?.UPDATE });
                _ = Inheritance.call(self, "setUsedRunnable", .{ self.runnable });
            } else if (Object.instanceOf(Object.of(self.openGlReadydisplayable), DemoCanvas) or Object.instanceOf(Object.of(self.openGlReadydisplayable), AllBinaryGameCanvas) or Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ Object.toString(Object.of(OpenGLFeatureFactory.getInstance().?.OPENGL)) }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ self.RUNNABLE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ self.runnable }) }))), self, self.commonStrings.?.UPDATE });
                _ = Inheritance.call(self, "setUsedRunnable", .{ self.runnable });
            } else {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.RUNNABLE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ NullRunnable.getInstance() }) }))), self, self.commonStrings.?.UPDATE });
                _ = Inheritance.call(self, "setUsedRunnable", .{ NullWaitGameRunnable.getInstance() });
            }
        }
    }
    

    pub fn getDisplayable(self: *Self) ?*Displayable {
        return self.displayable;
    }
    

    pub fn getUsedRunnable(self: *Self) ?*GameRunnable {
        return self.usedRunnable;
    }
    

    pub fn setUsedRunnable(self: *Self, usedRunnable: ?*GameRunnable) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.RUNNABLE }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ self.runnable }) }).?, "append", .{ CommonSeps.getInstance().?.COLON_SEP }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ usedRunnable }) }))), self, self.SET_USED_RUNNABLE });
        self.usedRunnable = usedRunnable;
    }
};

