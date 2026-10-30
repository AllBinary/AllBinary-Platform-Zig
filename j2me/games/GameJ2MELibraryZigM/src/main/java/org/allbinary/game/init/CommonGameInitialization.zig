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
// package org.allbinary.game.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const ResourceInitialization = @import("org/allbinary/game/resource/ResourceInitialization.zig").ResourceInitialization;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BaseGameInitialization = @import("org/allbinary/game/init/BaseGameInitialization.zig").BaseGameInitialization;

pub const CommonGameInitialization = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.init.CommonGameInitialization";
    base: BaseGameInitialization = undefined,
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create2(resourceInitializationArray: []?*ResourceInitialization, portion: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseGameInitialization, "create2", .{ resourceInitializationArray, portion }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, commandListener: ?*CommandListener, level: i32) void {
        _ = Inheritance.call(&self.base, "init", .{ abeClientInformation, commandListener, level });
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        if (!Inheritance.receiver(self, "isGameInitialized").isGameInitialized() and level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_ALL.?, "getLevel").getLevel()) {
            _ = Inheritance.call(self, "setGameInitialized", .{ true });
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            _ = Inheritance.receiverOf(SmallIntegerSingletonFactory.getInstance().?, "init").init();
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Integers") });
            _ = Inheritance.receiverOf(PointFactory.getInstance().?, "init").init();
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Points") });
            _ = AngleFactory.getInstance();
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Angles") });
            _ = self.initGame();
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "resourceInitializationArray").*[@intCast(Inheritance.fieldPointer(self, "GAME_RESOURCES").*)].?, "init").init();
        }
        _ = Inheritance.call(&self.base, "resourceInitialization", .{ level });
    }
    

    // throws Exception
    pub fn initGame(self: *Self) void {
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
};

