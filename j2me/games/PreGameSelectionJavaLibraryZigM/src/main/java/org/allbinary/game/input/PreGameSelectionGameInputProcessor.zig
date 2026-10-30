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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const LockedFeatureNotificationUtil = @import("org/allbinary/logic/system/security/licensing/LockedFeatureNotificationUtil.zig").LockedFeatureNotificationUtil;
const LockedUtil = @import("org/allbinary/logic/system/security/licensing/LockedUtil.zig").LockedUtil;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const PreGameSelectorPaintable = @import("org/allbinary/game/displayable/canvas/PreGameSelectorPaintable.zig").PreGameSelectorPaintable;
const GameKeyEventHandler = @import("org/allbinary/game/input/event/GameKeyEventHandler.zig").GameKeyEventHandler;
const GameKeyEventUtil = @import("org/allbinary/game/input/event/GameKeyEventUtil.zig").GameKeyEventUtil;
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const SelectSound = @import("org/allbinary/media/audio/SelectSound.zig").SelectSound;
const ABRunnable = @import("org/allbinary/thread/ABRunnable.zig").ABRunnable;
const ThreadObjectUtil = @import("org/allbinary/thread/ThreadObjectUtil.zig").ThreadObjectUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const GameInputProcessorComposite = @import("org/allbinary/game/input/GameInputProcessorComposite.zig").GameInputProcessorComposite;
const GameInputProcessorInterface = @import("org/allbinary/game/input/GameInputProcessorInterface.zig").GameInputProcessorInterface;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const PlayerGameInputCompositeInterface = @import("org/allbinary/game/input/PlayerGameInputCompositeInterface.zig").PlayerGameInputCompositeInterface;

pub const PreGameSelectionGameInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PreGameSelectionGameInputProcessor";
    pub const java_interfaces = .{ GameInputProcessorInterface, PlayerGameInputCompositeInterface };
    base: Processor = undefined,
    logUtil: ?*LogUtil = null,
    gameCanvas: ?*AllBinaryGameCanvas = null,
    preGameSelectorPaintable: ?*PreGameSelectorPaintable = null,
    inputTimeHelper: ?*TimeDelayHelper = null,
    nextGameState: ?*GameState = null,
    playerGameInput: ?*PlayerGameInput = null,
    lockedIndex: i32 = 0,
    abRunnable: ?*ABRunnable = null,
    // Implements GameInputProcessorInterface
    // Implements PlayerGameInputCompositeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        this.inputTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 650 });
        
        
        
        this.abRunnable = ABRunnable.create() // Java anonymous class body: implement it as a named type
//         
// 
//         pub fn run(self: *Self) void {
//             { // try
//                 _ = Inheritance.call(self, "setRunning", .{ true });
//                 _ = Inheritance.call(SecondaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
//                 _ = Inheritance.call(self.gameCanvas.?, "setGameState", .{ self.nextGameState });
//                 _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "removeListener", .{ self.getPlayerGameInput() });
//                 _ = Inheritance.call(self, "setRunning", .{ false });
//             }
//             // catch (Exception e):
// //                 _ = Inheritance.call(self, "setRunning", .{ false });
// //                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
// //                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
// //                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//         }
;
    }
    

    pub fn create4(gameCanvas: ?*AllBinaryGameCanvas, preGameSelectorPaintable: ?*PreGameSelectorPaintable, nextGameState: ?*GameState, lockedIndex: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        this.initFields();
        this.gameCanvas = gameCanvas;
        this.preGameSelectorPaintable = preGameSelectorPaintable;
        this.nextGameState = nextGameState;
        this.playerGameInput = Inheritance.upcast(@TypeOf(this.playerGameInput), Inheritance.callStatic(GameInputProcessorComposite, "create2", .{ String.literal("Pre Game Selection"), this }));
        this.lockedIndex = lockedIndex;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.receiverOf(self.getPlayerGameInput().?, "update").update();
    }
    

    // throws Exception
    pub fn onInput(self: *Self, list: ?*BasicArrayList) void {
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(list.?, "get", .{ index }));
            const key: i32 = Inheritance.callStatic(GameKeyEventUtil, "getKey", .{ anyType });
            if (key == Canvas.LEFT or key == Canvas.RIGHT or key == Canvas.UP or key == Canvas.DOWN) {
                if (self.inputTimeHelper.?.isTimeTNT()) {
                    _ = Inheritance.call(SecondaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
                    _ = Inheritance.call(Inheritance.receiverOf(self.getPreGameSelectorPaintable().?, "getPreGameSelectionForm").getPreGameSelectionForm().?, "processInputKey", .{ key });
                    break;
                }
            } else if (key == Canvas.KEY_NUM0) {
                const selectedIndex: i32 = Inheritance.receiverOf(Inheritance.receiver(self.preGameSelectorPaintable.?, "getPreGameSelectionForm").getPreGameSelectionForm().?, "getSelectedIndex").getSelectedIndex();
                if (selectedIndex < self.lockedIndex or !Inheritance.receiverOf(LockedUtil.getInstance().?, "isLocked").isLocked()) {
                    if (!self.abRunnable.?.isRunning()) {
                        _ = Inheritance.call(self.abRunnable.?, "setRunning", .{ true });
                        _ = Inheritance.call(ThreadObjectUtil.getInstance().?, "processThread", .{ self.abRunnable });
                    }
                    break;
                } else {
                    _ = Inheritance.receiverOf(LockedFeatureNotificationUtil.getInstance().?, "fire").fire();
                }
            }
            }
        }
        _ = list.?.clear();
    }
    

    pub fn getPreGameSelectorPaintable(self: *Self) ?*PreGameSelectorPaintable {
        return self.preGameSelectorPaintable;
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        _ = self;
    }
    

    pub fn initInputProcessors(self: *Self) void {
        _ = self;
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self)));
    }
    

    pub fn getPlayerGameInput(self: *Self) ?*PlayerGameInput {
        return self.playerGameInput;
    }
};

