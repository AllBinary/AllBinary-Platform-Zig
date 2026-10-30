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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GameInitializedEvent = @import("org/allbinary/game/configuration/event/GameInitializedEvent.zig").GameInitializedEvent;
const GameInitializedEventHandler = @import("org/allbinary/game/configuration/event/GameInitializedEventHandler.zig").GameInitializedEventHandler;
const GameInitializedListenerInterface = @import("org/allbinary/game/configuration/event/GameInitializedListenerInterface.zig").GameInitializedListenerInterface;
const FeatureResourceInitializationUtil = @import("org/allbinary/game/resource/FeatureResourceInitializationUtil.zig").FeatureResourceInitializationUtil;
const SWTJOGLProcessor = @import("org/allbinary/graphics/threed/SWTJOGLProcessor.zig").SWTJOGLProcessor;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const DefaultGameInitializationListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.init.DefaultGameInitializationListener";
    logUtil: ?*LogUtil = null,
    swtJOGLProcessor: ?*SWTJOGLProcessor = null,
    firstTime: bool = false,
    // Implements GameInitializedListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.swtJOGLProcessor = Inheritance.upcast(?*SWTJOGLProcessor, SWTJOGLProcessor.getInstance());
        this.firstTime = true;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const gameInitializedEventHandler: ?*GameInitializedEventHandler = Inheritance.upcast(?*GameInitializedEventHandler, GameInitializedEventHandler.getInstance());
        _ = Inheritance.receiver(gameInitializedEventHandler.?, "removeAllListeners").removeAllListeners();
        _ = Inheritance.call(gameInitializedEventHandler.?, "addListenerInterface", .{ Inheritance.cast(?*GameInitializedListenerInterface, this) });
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onGameInitialized(self: *Self, gameInitializedEvent: ?*GameInitializedEvent) void {
        const ON_GAME_INITIALIZED: ?*String = String.literal("onGameInitialized");
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.START, self, ON_GAME_INITIALIZED });
            while (!self.swtJOGLProcessor.?.isHolderCreated()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.UPDATE, self, ON_GAME_INITIALIZED });
                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(20), .awake) catch {});
            }
            _ = Inheritance.call(FeatureResourceInitializationUtil.getInstance().?, "init", .{ Inheritance.receiver(gameInitializedEvent.?, "getLevel").getLevel() });
            if (self.firstTime) {
                self.firstTime = false;
            } else {
                _ = self.swtJOGLProcessor.?.onSurfaceChanged();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, ON_GAME_INITIALIZED, e });
    }
};

