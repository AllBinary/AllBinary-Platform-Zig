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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
// const MIDletStateChangeException = @import("javax/microedition/midlet/MIDletStateChangeException.zig").MIDletStateChangeException;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const GameAdStateFactory = @import("org/allbinary/business/advertisement/GameAdStateFactory.zig").GameAdStateFactory;
const FullScreenUtil = @import("org/allbinary/canvas/FullScreenUtil.zig").FullScreenUtil;
const GameStatisticsFactory = @import("org/allbinary/canvas/GameStatisticsFactory.zig").GameStatisticsFactory;
const DebugFactory = @import("org/allbinary/debug/DebugFactory.zig").DebugFactory;
const DebugInterface = @import("org/allbinary/debug/DebugInterface.zig").DebugInterface;
const GameAdState = @import("org/allbinary/game/GameAdState.zig").GameAdState;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const GameMode = @import("org/allbinary/game/GameMode.zig").GameMode;
const GameStrings = @import("org/allbinary/game/GameStrings.zig").GameStrings;
const GameTypeFactory = @import("org/allbinary/game/GameTypeFactory.zig").GameTypeFactory;
const PlayerTypesFactory = @import("org/allbinary/game/PlayerTypesFactory.zig").PlayerTypesFactory;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GameOptionsForm = @import("org/allbinary/game/configuration/GameOptionsForm.zig").GameOptionsForm;
const GameOptionsFormFactory = @import("org/allbinary/game/configuration/GameOptionsFormFactory.zig").GameOptionsFormFactory;
const InGameFeatures = @import("org/allbinary/game/configuration/InGameFeatures.zig").InGameFeatures;
const InGameOptionsForm = @import("org/allbinary/game/configuration/InGameOptionsForm.zig").InGameOptionsForm;
const InGameOptionsFormFactory = @import("org/allbinary/game/configuration/InGameOptionsFormFactory.zig").InGameOptionsFormFactory;
const LoadGameForm = @import("org/allbinary/game/configuration/LoadGameForm.zig").LoadGameForm;
const ChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/ChangedGameFeatureListener.zig").ChangedGameFeatureListener;
const GameFeatureEventHandler = @import("org/allbinary/game/configuration/event/GameFeatureEventHandler.zig").GameFeatureEventHandler;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFormUtil = @import("org/allbinary/game/configuration/feature/GameFeatureFormUtil.zig").GameFeatureFormUtil;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const GamePersistanceSingleton = @import("org/allbinary/game/configuration/persistance/GamePersistanceSingleton.zig").GamePersistanceSingleton;
const KeyValuePersistance = @import("org/allbinary/game/configuration/persistance/KeyValuePersistance.zig").KeyValuePersistance;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const BasicPaintablesCanvas = @import("org/allbinary/game/displayable/canvas/BasicPaintablesCanvas.zig").BasicPaintablesCanvas;
const DemoCanvas = @import("org/allbinary/game/displayable/canvas/DemoCanvas.zig").DemoCanvas;
const GameCanvasRunnableInterface = @import("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.zig").GameCanvasRunnableInterface;
const GameEventHandlerUtil = @import("org/allbinary/game/displayable/canvas/GameEventHandlerUtil.zig").GameEventHandlerUtil;
const GameInputMappingCanvas = @import("org/allbinary/game/displayable/canvas/GameInputMappingCanvas.zig").GameInputMappingCanvas;
const GameInputMappingInstructionsCanvas = @import("org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.zig").GameInputMappingInstructionsCanvas;
const MenuListener = @import("org/allbinary/game/displayable/canvas/MenuListener.zig").MenuListener;
const NullGameCanvasRunnable = @import("org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.zig").NullGameCanvasRunnable;
const TextNotificationUtil = @import("org/allbinary/game/input/TextNotificationUtil.zig").TextNotificationUtil;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const HelpPaintable = @import("org/allbinary/game/paint/help/HelpPaintable.zig").HelpPaintable;
const HighScoreCommands = @import("org/allbinary/game/score/HighScoreCommands.zig").HighScoreCommands;
const HighScoreCommandsFactory = @import("org/allbinary/game/score/HighScoreCommandsFactory.zig").HighScoreCommandsFactory;
const HighScoreTextBox = @import("org/allbinary/game/score/displayable/HighScoreTextBox.zig").HighScoreTextBox;
const HighScoreUtil = @import("org/allbinary/game/score/displayable/HighScoreUtil.zig").HighScoreUtil;
const HighScoresCanvas = @import("org/allbinary/game/score/displayable/HighScoresCanvas.zig").HighScoresCanvas;
const GameStateFactory = @import("org/allbinary/game/state/GameStateFactory.zig").GameStateFactory;
const ResizableListenerHandler = @import("org/allbinary/graphics/ResizableListenerHandler.zig").ResizableListenerHandler;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ColorChangeEventHandler = @import("org/allbinary/graphics/color/ColorChangeEventHandler.zig").ColorChangeEventHandler;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const MyCommandsFactory = @import("org/allbinary/graphics/displayable/command/MyCommandsFactory.zig").MyCommandsFactory;
const AboutCommandProcessor = @import("org/allbinary/graphics/displayable/screen/AboutCommandProcessor.zig").AboutCommandProcessor;
const AboutPaintableFactory = @import("org/allbinary/graphics/displayable/screen/AboutPaintableFactory.zig").AboutPaintableFactory;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const WebCommandProcessor = @import("org/allbinary/graphics/displayable/screen/WebCommandProcessor.zig").WebCommandProcessor;
const AllBinarySensorManager = @import("org/allbinary/input/AllBinarySensorManager.zig").AllBinarySensorManager;
const VirtualKeyboardEventHandler = @import("org/allbinary/input/event/VirtualKeyboardEventHandler.zig").VirtualKeyboardEventHandler;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ClientInformationFactory = @import("org/allbinary/logic/system/security/licensing/ClientInformationFactory.zig").ClientInformationFactory;
const InApplicationPurchaseFactory = @import("org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.zig").InApplicationPurchaseFactory;
const LockableFeature = @import("org/allbinary/logic/system/security/licensing/LockableFeature.zig").LockableFeature;
const LockableFeatureFactory = @import("org/allbinary/logic/system/security/licensing/LockableFeatureFactory.zig").LockableFeatureFactory;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const AllBinaryMediaManager = @import("org/allbinary/media/audio/AllBinaryMediaManager.zig").AllBinaryMediaManager;
const MidletStrings = @import("org/allbinary/midlet/MidletStrings.zig").MidletStrings;
const ProgressMidlet = @import("org/allbinary/midlet/ProgressMidlet.zig").ProgressMidlet;
const NullThread = @import("org/allbinary/thread/NullThread.zig").NullThread;
const ThreadFactoryUtil = @import("org/allbinary/thread/ThreadFactoryUtil.zig").ThreadFactoryUtil;
const ThreadUtil = @import("org/allbinary/thread/ThreadUtil.zig").ThreadUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const DemoGameMidletEvent = @import("org/allbinary/game/midlet/DemoGameMidletEvent.zig").DemoGameMidletEvent;
const DemoGameMidletStateFactory = @import("org/allbinary/game/midlet/DemoGameMidletStateFactory.zig").DemoGameMidletStateFactory;
const GameMidletEventHandler = @import("org/allbinary/game/midlet/GameMidletEventHandler.zig").GameMidletEventHandler;
const GameMidletStateFactory = @import("org/allbinary/game/midlet/GameMidletStateFactory.zig").GameMidletStateFactory;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const GameMidlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.GameMidlet";
    base: ProgressMidlet = undefined,
    enumerationUtil: ?*EnumerationUtil = null,
    basicColorFactory: ?*BasicColorFactory = null,
    features: ?*Features = null,
    midletStrings: ?*MidletStrings = null,
    myCommandsFactory: ?*MyCommandsFactory = null,
    gameStrings: ?*GameStrings = null,
    gameAdStateFactory: ?*GameAdStateFactory = null,
    gameStateFactory: ?*GameStateFactory = null,
    tsUtil: ?*TsUtil = null,
    DISPLAYABLE: ?*String = null,
    COMMAND_NAME: ?*String = null,
    NO_COMMAND: ?*String = null,
    NO_DISPLAYABLE: ?*String = null,
    COMMAND_ACTION: ?*String = null,
    PAUSE_APP_BACKGROUND: ?*String = null,
    UN_PAUSE_APP_BACKGROUND: ?*String = null,
    aboutCommandProcessor: ?*AboutCommandProcessor = null,
    webCommandProcessor: ?*WebCommandProcessor = null,
    gameMidletStateFactory: ?*GameMidletStateFactory = null,
    gameStartTimeHelper: ?*TimeDelayHelper = null,
    fullScreenUtil: ?*FullScreenUtil = null,
    debugInterface: ?*DebugInterface = null,
    allbinaryGameCanvasRunnableInterface: ?*GameCanvasRunnableInterface = null,
    thread: ?*Thread = null,
    loadGameForm: ?*CommandForm = null,
    isFullScreen: bool = false,
    resized: bool = false,
    startedBefore: bool = false,
    // Implements CommandListener

    fn initFields(this: *Self) void {
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.features = Inheritance.upcast(?*Features, Features.getInstance());
        this.midletStrings = Inheritance.upcast(?*MidletStrings, MidletStrings.getInstance());
        this.myCommandsFactory = Inheritance.upcast(?*MyCommandsFactory, MyCommandsFactory.getInstance());
        this.gameStrings = Inheritance.upcast(?*GameStrings, GameStrings.getInstance());
        this.gameAdStateFactory = Inheritance.upcast(?*GameAdStateFactory, GameAdStateFactory.getInstance());
        this.gameStateFactory = Inheritance.upcast(?*GameStateFactory, GameStateFactory.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.DISPLAYABLE = String.literal(" Displayable: ");
        this.COMMAND_NAME = String.literal("command Name/Label: ");
        this.NO_COMMAND = String.literal("No Command");
        this.NO_DISPLAYABLE = String.literal("No Displayable");
        this.COMMAND_ACTION = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("GameMidlet::") }).?, "append", .{ this.midletStrings.?.COMMAND_ACTION }))));
        this.PAUSE_APP_BACKGROUND = String.literal("pauseAppBackground");
        this.UN_PAUSE_APP_BACKGROUND = String.literal("unPauseAppBackground");
        this.aboutCommandProcessor = Inheritance.upcast(?*AboutCommandProcessor, AboutCommandProcessor.getInstance());
        this.webCommandProcessor = Inheritance.upcast(?*WebCommandProcessor, WebCommandProcessor.getInstance());
        this.gameMidletStateFactory = Inheritance.upcast(?*GameMidletStateFactory, GameMidletStateFactory.getInstance());
        this.gameStartTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 240 });
        this.fullScreenUtil = Inheritance.upcast(?*FullScreenUtil, FullScreenUtil.getInstance());
        
        this.allbinaryGameCanvasRunnableInterface = Inheritance.upcast(?*GameCanvasRunnableInterface, NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
        this.thread = Inheritance.upcast(?*Thread, NullThread.NULL_THREAD);
        
        this.isFullScreen = false;
        this.resized = false;
        this.startedBefore = false;
    }
    

    pub fn create1(clientInformationFactory: ?*ClientInformationFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProgressMidlet, "create1", .{ clientInformationFactory }).*;
        this.initFields();
        _ = Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "initWithRange", .{ 0x291, 6 });
        this.loadGameForm = Inheritance.upcast(@TypeOf(this.loadGameForm), CommandForm.getNullCommandForm());
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.call(progressCanvas.?, "init", .{ this });
        _ = Inheritance.call(GameFeatureEventHandler.getInstance().?, "addListenerInterface", .{ ChangedGameFeatureListener.getInstance() });
        _ = Inheritance.receiverOf(GamePersistanceSingleton.getInstance().?, "clear").clear();
        this.debugInterface = Inheritance.upcast(@TypeOf(this.debugInterface), DebugFactory.getInstance());
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn setDemo(self: *Self) void {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn createGame(self: *Self) void {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn mediaShutdown(self: *Self) void {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn stopAll(self: *Self) void {
        _ = self;
    }
    

    pub fn pauseApp(self: *Self) void {
        _ = Inheritance.call(self, "pauseAppBackground", .{ true });
        const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
        _ = Inheritance.receiverOf(Inheritance.receiver(gameAdState.?, "getAdvertisements").getAdvertisements().?, "stopAll").stopAll();
    }
    

    pub fn pauseAppBackground(self: *Self, background: bool) void {
        _ = background;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.PAUSE_APP_BACKGROUND });
        if (!Object.same(self.allbinaryGameCanvasRunnableInterface, NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            _ = Inheritance.receiver(self.allbinaryGameCanvasRunnableInterface.?, "pause").pause();
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("<<<<<< Null"), self, self.PAUSE_APP_BACKGROUND });
        }
        _ = Inheritance.receiverOf(AllBinarySensorManager.getInstance().?, "shutdown").shutdown();
    }
    

    pub fn unPauseApp(self: *Self) void {
        _ = Inheritance.call(self, "unPauseAppBackground", .{ true });
        const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
        _ = Inheritance.receiverOf(Inheritance.receiver(gameAdState.?, "getAdvertisements").getAdvertisements().?, "startAll").startAll();
    }
    

    pub fn unPauseAppBackground(self: *Self, background: bool) void {
        _ = background;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.UN_PAUSE_APP_BACKGROUND });
        _ = Inheritance.receiverOf(AllBinarySensorManager.getInstance().?, "init").init();
        const gameCanvasRunnableInterface: ?*GameCanvasRunnableInterface = self.allbinaryGameCanvasRunnableInterface;
        if (!Object.same(gameCanvasRunnableInterface, NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            _ = Inheritance.receiver(gameCanvasRunnableInterface.?, "unPause").unPause();
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("<<<<<< Null"), self, self.UN_PAUSE_APP_BACKGROUND });
        }
    }
    

    pub fn destroyAppInRunnable(self: *Self, unconditional: bool, isProgress: bool) void {
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        if (isProgress) {
            _ = Inheritance.receiver(progressCanvas.?, "start").start();
            _ = Inheritance.call(self, "commandAction", .{ self.myCommandsFactory.?.SET_DISPLAYABLE, progressCanvas });
        }
        _ = Inheritance.call(self, "destroyApp", .{ unconditional });
        if (isProgress) {
            _ = Inheritance.receiver(progressCanvas.?, "end").end();
        }
    }
    

    pub fn destroyApp(self: *Self, unconditional: bool) void {
        _ = unconditional;
        const METHOD_NAME: ?*String = String.literal("GameMidlet::destroyApp");
        { // try
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(GameStatisticsFactory.getInstance())), self, METHOD_NAME });
            const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
            _ = Inheritance.receiverOf(Inheritance.receiver(gameAdState.?, "getAdvertisements").getAdvertisements().?, "stopAll").stopAll();
            if (!Inheritance.receiver(self, "isDestroyed").isDestroyed()) {
                _ = self.stopGameCanvasRunnableInterface();
                _ = Inheritance.call(self, "setGameCanvasRunnableInterface", .{ NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE });
                _ = self.mediaShutdown();
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Midlet Managment Error: Midlet Should Only Be Destroyed Once"), self, METHOD_NAME });
            }
            _ = Inheritance.call(&self.base, "destroyApp", .{ true });
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END, self, METHOD_NAME });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, METHOD_NAME, e });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END, self, METHOD_NAME });
    }
    

    // throws MIDletStateChangeException
    pub fn startApp(self: *Self) void {
        { // try
            const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
            _ = Inheritance.receiverOf(Inheritance.receiver(gameAdState.?, "getAdvertisements").getAdvertisements().?, "startAll").startAll();
            const START_APP: ?*String = String.literal("startApp");
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, START_APP });
            const gameCanvasRunnableInterface: ?Object = Inheritance.upcast(?Object, self.allbinaryGameCanvasRunnableInterface);
            if (Object.same(gameCanvasRunnableInterface, NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
                _ = Inheritance.call(self.gameMidletStateFactory.?, "setCurrentGameState", .{ self.gameStateFactory.?.NO_GAME_STATE });
                _ = self.setDemo();
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("GameCanvasRunnableInterface is available"), self, START_APP });
                if (Object.same(gameCanvasRunnableInterface, Inheritance.receiver(self, "getCurrentDisplayable").getCurrentDisplayable())) {
                    _ = Inheritance.call(self, "unPauseAppBackground", .{ false });
                } else {
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("GameCanvasRunnableInterface is not current displayable"), self, START_APP });
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("startApp"), e });
//             _ = Inheritance.call(self, "destroyApp", .{ false });
//             _ = Inheritance.receiver(self, "notifyDestroyed").notifyDestroyed();
    }
    

    pub fn commandAction(self: *Self, command: ?*Command, displayable: ?*Displayable) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            var displayableAsString: ?*String = self.NO_DISPLAYABLE;
            if (displayable != null) {
                displayableAsString = Inheritance.upcast(@TypeOf(displayableAsString), Object.toString(Object.of(displayable)));
            }
            var label: ?*String = self.NO_COMMAND;
            if (command != null) {
                label = Inheritance.upcast(@TypeOf(label), command.?.getLabel());
            }
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.COMMAND_NAME }).?, "append", .{ label }).?, "append", .{ self.DISPLAYABLE }).?, "append", .{ displayableAsString }))), self, self.COMMAND_ACTION });
            const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
            const allbinaryGameCanvasRunnableInterface: ?*GameCanvasRunnableInterface = self.allbinaryGameCanvasRunnableInterface;
            const gameCanvasRunnableInterface: ?Object = Inheritance.upcast(?Object, allbinaryGameCanvasRunnableInterface);
            if (Object.same(command, gameCommandsFactory.?.SHOW_GAME_CANVAS)) {
                if (!Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getDisplay").getDisplay().?, "getCurrent").getCurrent(), gameCanvasRunnableInterface) and !Object.same(Inheritance.receiver(allbinaryGameCanvasRunnableInterface.?, "getType").getType(), Inheritance.receiverOf(NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.?, "getType").getType())) {
                    _ = Inheritance.call(self, "setDisplay", .{ Inheritance.cast(?*Displayable, gameCanvasRunnableInterface) });
                }
                _ = Inheritance.call(self, "unPauseAppBackground", .{ false });
            } else if (Object.same(command, gameCommandsFactory.?.CLOSE_AND_SHOW_GAME_CANVAS)) {
                const menuListener: ?*MenuListener = Inheritance.cast(?*MenuListener, displayable);
                _ = Inheritance.receiver(menuListener.?, "close").close();
                _ = Inheritance.call(self, "setDisplay", .{ Inheritance.cast(?*Displayable, gameCanvasRunnableInterface) });
                _ = Inheritance.call(self, "unPauseAppBackground", .{ false });
            } else if (Object.same(command, gameCommandsFactory.?.EXIT_COMMAND)) {
                if (Inheritance.receiverOf(Inheritance.receiverOf(GameMidletEventHandler.getInstance().?, "getEventListenerInterfaceListP").getEventListenerInterfaceListP().?, "size").size() == 0) {
                    _ = Inheritance.call(self, "exitProgress", .{ true });
                }
                _ = Inheritance.call(GameMidletEventHandler.getInstance().?, "fireEvent", .{ Inheritance.callStatic(DemoGameMidletEvent, "create2", .{ self, DemoGameMidletStateFactory.getInstance().?.NONE }) });
            } else if (Object.same(command, gameCommandsFactory.?.EXIT_WITHOUT_PROGRESS_COMMAND)) {
                _ = Inheritance.call(self, "exitProgress", .{ false });
            } else if (Object.same(command, gameCommandsFactory.?.START_COMMAND) or Object.same(command, gameCommandsFactory.?.RESTART_COMMAND) or Object.same(command, gameCommandsFactory.?.CONTINUE_COMMAND)) {
                if (!Object.same(self.gameMidletStateFactory.?.getCurrentGameState(), self.gameStateFactory.?.PLAYING_GAME_STATE) or Object.same(command, gameCommandsFactory.?.RESTART_COMMAND)) {
                    if (self.gameStartTimeHelper.?.isTimeTNT()) {
                        if (Object.same(command, gameCommandsFactory.?.START_COMMAND) and self.isDemoLoading()) {
                            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Trying to Start Game Before Loading Complete"), self, self.midletStrings.?.COMMAND_ACTION });
                        } else {
                            self.startedBefore = true;
                            _ = self.createGame();
                            _ = Inheritance.call(self.gameMidletStateFactory.?, "setCurrentGameState", .{ self.gameStateFactory.?.PLAYING_GAME_STATE });
                        }
                    } else {
                        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Starting Game Too Often"), self, self.midletStrings.?.COMMAND_ACTION });
                    }
                } else {
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Already in playing state"), self, self.COMMAND_ACTION });
                }
            } else if (Object.same(command, gameCommandsFactory.?.BUY_COMMAND)) {
                const inApplicationPurchaseFactory: ?*InApplicationPurchaseFactory = Inheritance.upcast(?*InApplicationPurchaseFactory, InApplicationPurchaseFactory.getInstance());
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(LockableFeatureFactory.getInstance().?, "getList").getList());
                const lockableFeature: ?*LockableFeature = Inheritance.cast(?*LockableFeature, Inheritance.call(list.?, "get", .{ 0 }));
                if (list.?.size() > 0 and !Inheritance.call(inApplicationPurchaseFactory.?, "isPurchased", .{ lockableFeature })) {
                    _ = Inheritance.call(inApplicationPurchaseFactory.?, "purchase", .{ lockableFeature });
                } else {
                    _ = Inheritance.call(TextNotificationUtil.getInstance().?, "fireSuccess", .{ String.literal("Already Purchased") });
                }
            } else if (Object.same(command, gameCommandsFactory.?.QUIT_COMMAND)) {
                if (self.gameStartTimeHelper.?.isTimeTNT()) {
                    if (Object.instanceOf(Object.of(displayable), HighScoreTextBox)) {
                        const menuListener: ?*MenuListener = Inheritance.cast(?*MenuListener, displayable);
                        _ = Inheritance.receiver(menuListener.?, "close").close();
                    }
                    _ = self.stopGameCanvasRunnableInterface();
                    _ = Inheritance.call(self.gameMidletStateFactory.?, "setCurrentGameState", .{ self.gameStateFactory.?.NO_GAME_STATE });
                    _ = self.setDemo();
                }
            } else if (Object.same(command, self.myCommandsFactory.?.RESUME_COMMAND)) {
                _ = Inheritance.call(self, "unPauseAppBackground", .{ false });
            } else if (Object.same(command, self.myCommandsFactory.?.PAUSE_COMMAND)) {
                _ = Inheritance.call(self, "pauseAppBackground", .{ false });
            } else if (Object.same(command, self.myCommandsFactory.?.SET_DISPLAYABLE)) {
                _ = Inheritance.call(self, "pauseAppBackground", .{ false });
                _ = Inheritance.call(self, "setDisplay", .{ displayable });
            } else if (Object.same(command, gameCommandsFactory.?.SET_MENU_DISPLAYABLE)) {
                _ = Inheritance.call(self, "pauseAppBackground", .{ false });
                const menuListener: ?*MenuListener = Inheritance.cast(?*MenuListener, displayable);
                _ = Inheritance.receiver(menuListener.?, "open").open();
                _ = Inheritance.call(self, "setDisplay", .{ displayable });
            } else if (Object.same(command, gameCommandsFactory.?.START_TRACE)) {
                _ = self.debugInterface.?.start();
                const gameCanvas: ?*AllBinaryGameCanvas = Inheritance.cast(?*AllBinaryGameCanvas, allbinaryGameCanvasRunnableInterface);
                _ = Inheritance.call(gameCanvas.?, "addCommand", .{ gameCommandsFactory.?.STOP_TRACE });
                _ = Inheritance.call(gameCanvas.?, "removeCommand", .{ gameCommandsFactory.?.START_TRACE });
            } else if (Object.same(command, gameCommandsFactory.?.STOP_TRACE)) {
                _ = Inheritance.call(self, "pauseAppBackground", .{ false });
                _ = self.debugInterface.?.stop();
                _ = Inheritance.call(self, "unPauseAppBackground", .{ false });
                const gameCanvas: ?*AllBinaryGameCanvas = Inheritance.cast(?*AllBinaryGameCanvas, allbinaryGameCanvasRunnableInterface);
                _ = Inheritance.call(gameCanvas.?, "addCommand", .{ gameCommandsFactory.?.START_TRACE });
                _ = Inheritance.call(gameCanvas.?, "removeCommand", .{ gameCommandsFactory.?.STOP_TRACE });
            } else if (Object.same(command, gameCommandsFactory.?.DEFAULT_OPTIONS)) {
                const tempDisplayable: ?*Displayable = displayable;
                if (Object.instanceOf(Object.of(tempDisplayable), GameOptionsForm)) {
                    _ = Inheritance.call(GameFeatureFormUtil.getInstance().?, "setDefault", .{ Inheritance.cast(?*CommandForm, tempDisplayable) });
                }
            } else if (Object.same(command, GameInputMappingInstructionsCanvas.DISPLAY)) {
                const tempDisplayable: ?*Displayable = displayable;
                if (Object.instanceOf(Object.of(tempDisplayable), GameInputMappingCanvas)) {
                    const gameInputMappingCanvas: ?*GameInputMappingCanvas = Inheritance.cast(?*GameInputMappingCanvas, tempDisplayable);
                    _ = Inheritance.receiver(gameInputMappingCanvas.?, "update").update();
                }
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.SET_MENU_DISPLAYABLE, self.getInputMappingInstructionsCanvas() });
            } else if (Inheritance.call(HighScoreCommandsFactory.getInstance().?, "isHighScoreCommand", .{ command })) {
                const tempDisplayable: ?*Displayable = displayable;
                if (Object.instanceOf(Object.of(tempDisplayable), HighScoresCanvas)) {
                    const highScoresCanvas: ?*HighScoresCanvas = Inheritance.cast(?*HighScoresCanvas, tempDisplayable);
                    _ = Inheritance.call(highScoresCanvas.?, "updateCommand", .{ command });
                }
            } else if (Object.same(command, HighScoreCommands.getInstance().?.DISPLAY)) {
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.SET_MENU_DISPLAYABLE, self.createHighScoresCanvas() });
            } else if (Object.same(command, GameInputMappingInstructionsCanvas.CLOSE)) {
                const menuListener: ?*MenuListener = Inheritance.cast(?*MenuListener, displayable);
                _ = Inheritance.receiver(menuListener.?, "close").close();
                _ = Inheritance.call(self, "commandAction", .{ GameInputMappingCanvas.DISPLAY, NullCanvas.NULL_CANVAS });
            } else if (Object.same(command, GameInputMappingCanvas.DISPLAY)) {
                if (J2MEUtil.isHTML()) {
                    _ = Inheritance.call(self, "pauseAppBackground", .{ false });
                }
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.SET_MENU_DISPLAYABLE, self.getInputMappingCanvas() });
            } else if (Object.same(command, GameInputMappingCanvas.DEFAULT)) {
                const tempDisplayable: ?*Displayable = displayable;
                if (Object.instanceOf(Object.of(tempDisplayable), GameInputMappingCanvas)) {
                    const gameInputMappingCanvas: ?*GameInputMappingCanvas = Inheritance.cast(?*GameInputMappingCanvas, tempDisplayable);
                    _ = Inheritance.receiver(gameInputMappingCanvas.?, "setDefault").setDefault();
                }
            } else if (Object.same(command, InGameOptionsForm.DISPLAY)) {
                _ = Inheritance.call(self, "pauseAppBackground", .{ false });
                const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
                _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("In Game Options") });
                const layerManager: ?*AllBinaryGameLayerManager = Inheritance.upcast(?*AllBinaryGameLayerManager, self.createGameLayerManager());
                const inGameOptionsFormFactory: ?*InGameOptionsFormFactory = Inheritance.upcast(?*InGameOptionsFormFactory, InGameOptionsFormFactory.getInstance());
                _ = Inheritance.call(inGameOptionsFormFactory.?, "init", .{ self, InGameFeatures.create(), String.literal("Options In Game"), Inheritance.receiver(layerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(layerManager.?, "getForegroundBasicColor").getForegroundBasicColor() });
                const inGameOptionsForm: ?*CommandForm = Inheritance.upcast(?*CommandForm, inGameOptionsFormFactory.?.get());
                _ = Inheritance.call(inGameOptionsForm.?, "setItemStateListener", .{ allbinaryGameCanvasRunnableInterface });
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.SET_MENU_DISPLAYABLE, inGameOptionsForm });
            } else if (Object.same(command, InGameOptionsForm.DEFAULT)) {
                const inGameOptionsForm: ?*InGameOptionsForm = Inheritance.cast(?*InGameOptionsForm, Inheritance.receiverOf(InGameOptionsFormFactory.getInstance().?, "get").get());
                _ = Inheritance.call(GameFeatureFormUtil.getInstance().?, "setDefault", .{ inGameOptionsForm });
            } else if (Object.same(command, gameCommandsFactory.?.DISPLAY_OPTIONS)) {
                _ = Inheritance.callStatic(AllBinaryMediaManager, "setMuted", .{ true });
                _ = self.stopAll();
                const mainFeatureFactory: ?*MainFeatureFactory = Inheritance.upcast(?*MainFeatureFactory, MainFeatureFactory.getInstance());
                self.isFullScreen = Inheritance.call(self.features.?, "isFeature", .{ mainFeatureFactory.?.FULL_SCREEN });
                _ = Inheritance.call(ResizableListenerHandler.getInstance().?, "fireEvent", .{ true });
                _ = Inheritance.call(self, "setResized", .{ false });
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.SET_MENU_DISPLAYABLE, self.getGameOptionsForm() });
            } else if (Object.same(command, gameCommandsFactory.?.CLOSE_OPTIONS)) {
                _ = Inheritance.call(ResizableListenerHandler.getInstance().?, "fireEvent", .{ false });
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.CLOSE_AND_SHOW_GAME_CANVAS, displayable });
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Close isFullScreen/change: ") });
                _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isFullScreen });
                _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(self.fullScreenUtil.?, "isScreenChange", .{ self.isFullScreen }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isResized: ") });
                _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isResized() });
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, self.COMMAND_ACTION });
                if (self.isResized() or Inheritance.call(self.fullScreenUtil.?, "isScreenChange", .{ self.isFullScreen })) {
                    _ = self.updateFullScreen();
                }
                _ = Inheritance.callStatic(AllBinaryMediaManager, "setMuted", .{ false });
            } else if (Object.same(command, gameCommandsFactory.?.DISPLAY_LOAD_FORM)) {
                _ = Inheritance.call(self, "pauseAppBackground", .{ false });
                const keyValuePersistance: ?*KeyValuePersistance = Inheritance.upcast(?*KeyValuePersistance, GamePersistanceSingleton.getInstance());
                _ = Inheritance.receiver(keyValuePersistance.?, "clear").clear();
                _ = Inheritance.call(keyValuePersistance.?, "loadAll", .{ Inheritance.fieldPointer(self, "abeClientInformation").* });
                if (Object.same(self.getLoadGameForm(), CommandForm.getNullCommandForm())) {
                    const layerManager: ?*AllBinaryGameLayerManager = Inheritance.upcast(?*AllBinaryGameLayerManager, self.createGameLayerManager());
                    _ = Inheritance.call(self, "setLoadGameForm", .{ Inheritance.callStatic(LoadGameForm, "create4", .{ self, String.literal("Load Game"), Inheritance.receiver(layerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(layerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }) });
                } else {
                    _ = Inheritance.receiverOf(self.getLoadGameForm().?, "update").update();
                }
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.SET_MENU_DISPLAYABLE, self.getLoadGameForm() });
            } else if (Object.same(command, gameCommandsFactory.?.LOAD_FILE)) {
                const loadGameForm: ?*LoadGameForm = Inheritance.cast(?*LoadGameForm, self.getLoadGameForm());
                const index: i32 = Inheritance.receiver(loadGameForm.?, "getSelectedId").getSelectedId();
                if (index != -1) {
                    const keyValuePersistance: ?*KeyValuePersistance = Inheritance.upcast(?*KeyValuePersistance, GamePersistanceSingleton.getInstance());
                    _ = Inheritance.call(self, "setStartStateHashtable", .{ Inheritance.call(keyValuePersistance.?, "get", .{ index }) });
                    const menuListener: ?*MenuListener = Inheritance.upcast(?*MenuListener, self.getLoadGameForm());
                    _ = Inheritance.receiver(menuListener.?, "close").close();
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(BasicMotionGesturesHandler.getInstance())), self, self.COMMAND_ACTION });
                    _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.START_COMMAND, NullCanvas.NULL_CANVAS });
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(BasicMotionGesturesHandler.getInstance())), self, self.COMMAND_ACTION });
                }
            } else if (Object.same(command, gameCommandsFactory.?.DELETE_FILE)) {
                const loadGameForm: ?*LoadGameForm = Inheritance.cast(?*LoadGameForm, self.getLoadGameForm());
                const index: i32 = Inheritance.receiver(loadGameForm.?, "getSelectedText").getSelectedText();
                if (index != -1) {
                    const keyValuePersistance: ?*KeyValuePersistance = Inheritance.upcast(?*KeyValuePersistance, GamePersistanceSingleton.getInstance());
                    _ = Inheritance.call(keyValuePersistance.?, "delete", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, index });
                    _ = Inheritance.receiver(keyValuePersistance.?, "clear").clear();
                    _ = Inheritance.call(keyValuePersistance.?, "loadAllSize", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, 1 });
                    _ = Inheritance.receiverOf(self.getLoadGameForm().?, "update").update();
                }
            } else if (Object.same(command, gameCommandsFactory.?.SAVE)) {
                const keyValuePersistance: ?*KeyValuePersistance = Inheritance.upcast(?*KeyValuePersistance, GamePersistanceSingleton.getInstance());
                _ = Inheritance.call(self, "pauseAppBackground", .{ false });
                _ = Inheritance.call(keyValuePersistance.?, "save", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, self.getCurrentStateHashtable() });
                _ = Inheritance.call(self, "unPauseAppBackground", .{ false });
            } else if (Object.same(command, HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Submitted Score"), self, self.COMMAND_ACTION });
                if (Object.instanceOf(Object.of(displayable), HighScoreTextBox)) {
                    const highScoreTextBox: ?*HighScoreTextBox = Inheritance.cast(?*HighScoreTextBox, displayable);
                    highScoreTextBox.?.submitted = true;
                }
                _ = Inheritance.call(allbinaryGameCanvasRunnableInterface.?, "setHighScoreSubmitted", .{ true });
                _ = Inheritance.call(self, "commandAction", .{ gameCommandsFactory.?.CLOSE_AND_SHOW_GAME_CANVAS, displayable });
            } else if (Object.same(command, gameCommandsFactory.?.DISPLAY_ABOUT)) {
                _ = Inheritance.call(self.aboutCommandProcessor.?, "process", .{ self, gameCommandsFactory.?.SET_MENU_DISPLAYABLE, self.getAboutCanvas() });
            } else if (Object.same(command, gameCommandsFactory.?.OPEN_WEB_URL)) {
                _ = Inheritance.call(self.webCommandProcessor.?, "process", .{ self, gameCommandsFactory.?.OPEN_WEB_URL, NullCanvas.NULL_CANVAS });
            } else if (Object.same(command, gameCommandsFactory.?.TOGGLE_KEYBOARD)) {
                const virtualKeyboardEventHandler: ?*VirtualKeyboardEventHandler = Inheritance.upcast(?*VirtualKeyboardEventHandler, VirtualKeyboardEventHandler.getInstance());
                _ = Inheritance.call(virtualKeyboardEventHandler.?, "fireEvent", .{ virtualKeyboardEventHandler.?.SHOW_EVENT });
            } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ command.?.getLabel(), Inheritance.receiverOf(gameCommandsFactory.?.TOGGLE_FULLSCREEN.?, "getLabel").getLabel() }) == 0) {
                const mainFeatureFactory: ?*MainFeatureFactory = Inheritance.upcast(?*MainFeatureFactory, MainFeatureFactory.getInstance());
                const isFullScreen: bool = Inheritance.call(self.features.?, "isFeature", .{ mainFeatureFactory.?.FULL_SCREEN });
                if (isFullScreen) {
                    _ = Inheritance.call(self.features.?, "removeDefault", .{ mainFeatureFactory.?.FULL_SCREEN });
                } else {
                    _ = Inheritance.call(self.features.?, "addDefault", .{ mainFeatureFactory.?.FULL_SCREEN });
                }
                _ = self.updateFullScreen();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION_LABEL }).?, "append", .{ command.?.getLabel() }))), self, self.midletStrings.?.COMMAND_ACTION, e });
//             if (!Object.same(command, GameCommandsFactory.getInstance().?.EXIT_COMMAND)) {
//                 _ = Inheritance.call(self, "exitProgress", .{ false });
//             }
    }
    

    pub fn updateFullScreen(self: *Self) void {
        const mainFeatureFactory: ?*MainFeatureFactory = Inheritance.upcast(?*MainFeatureFactory, MainFeatureFactory.getInstance());
        const isFullScreen: bool = Inheritance.call(self.features.?, "isFeature", .{ mainFeatureFactory.?.FULL_SCREEN });
        const displayable: ?*Displayable = Inheritance.upcast(?*Displayable, Inheritance.receiverOf(Inheritance.receiver(self, "getDisplay").getDisplay().?, "getCurrent").getCurrent());
        if (Object.instanceOf(Object.of(displayable), Canvas)) {
            const canvas: ?*Canvas = Inheritance.cast(?*Canvas, displayable);
            _ = Inheritance.call(canvas.?, "setFullScreenMode", .{ isFullScreen });
        }
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn getInputMappingInstructionsCanvas(self: *Self) ?*MyCanvas {
        return Inheritance.upcast(?*MyCanvas, Inheritance.callStatic(GameInputMappingInstructionsCanvas, "create2", .{ self, self.createGameLayerManager() }));
    }
    

    // throws Exception
    pub fn getInputMappingCanvas(self: *Self) ?*MyCanvas {
        return Inheritance.upcast(?*MyCanvas, Inheritance.callStatic(GameInputMappingCanvas, "create4", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, self, self.createGameLayerManager(), self.getHelpPaintable() }));
    }
    

    // throws Exception
    pub fn getAboutCanvas(self: *Self) ?*MyCanvas {
        return Inheritance.upcast(?*MyCanvas, Inheritance.callStatic(BasicPaintablesCanvas, "create4", .{ self, CanvasStrings.getInstance().?.ABOUT, self.createGameLayerManager(), AboutPaintableFactory.getInstance().?.paintableArray }));
    }
    

    // throws Exception
    pub fn getHelpPaintable(self: *Self) ?*HelpPaintable {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn createHighScoresCanvas(self: *Self) ?*HighScoresCanvas {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn startGameCanvasRunnableInterface(self: *Self) void {
        const threadFactoryUtil: ?*ThreadFactoryUtil = Inheritance.upcast(?*ThreadFactoryUtil, ThreadFactoryUtil.getInstance());
        self.thread = Inheritance.upcast(@TypeOf(self.thread), Inheritance.call(threadFactoryUtil.?, "getInstanceGameCanvasRunnable", .{ self.allbinaryGameCanvasRunnableInterface }));
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Thread Priority: ") }).?, "appendint", .{ @as(i32, @intCast(self.thread.?.getPriority())) }))), self, String.literal("startGameCanvasRunnableInterface") });
        _ = Inheritance.call(self.allbinaryGameCanvasRunnableInterface.?, "setThread", .{ self.thread });
        _ = Inheritance.call(threadFactoryUtil.?, "start", .{ self.thread });
    }
    

    // throws Exception
    pub fn stopGameCanvasRunnableInterface(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.gameStrings.?.STOP_GAME_CANVAS_RUNNABLE_INTERFACE });
        _ = Inheritance.receiverOf(GameNotificationEventHandler.getInstance().?, "removeAllListeners").removeAllListeners();
        _ = Inheritance.receiverOf(ColorChangeEventHandler.getInstance().?, "removeAllListeners").removeAllListeners();
        _ = GameEventHandlerUtil.removeAllListeners();
        const gameCanvasRunnableInterface: ?*GameCanvasRunnableInterface = self.allbinaryGameCanvasRunnableInterface;
        if (!Object.same(gameCanvasRunnableInterface, NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Set Running False: ") }).?, "append", .{ Object.toString(Object.of(gameCanvasRunnableInterface)) }))), self, self.gameStrings.?.STOP_GAME_CANVAS_RUNNABLE_INTERFACE });
            _ = Inheritance.call(gameCanvasRunnableInterface.?, "setRunning", .{ false });
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("StopGame - Could Not Stop"), self, self.gameStrings.?.STOP_GAME_CANVAS_RUNNABLE_INTERFACE });
        }
        _ = Inheritance.call(ThreadUtil.getInstance().?, "join", .{ self.thread });
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        if (Inheritance.call(self.features.?, "isFeature", .{ MainFeatureFactory.getInstance().?.LOAD_ALL })) {
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Stopped Game Runnable") });
        } else {
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Stopped Main Runnable") });
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END, self, self.gameStrings.?.STOP_GAME_CANVAS_RUNNABLE_INTERFACE });
    }
    

    pub fn getGameCanvasRunnableInterface(self: *Self) ?*GameCanvasRunnableInterface {
        return self.allbinaryGameCanvasRunnableInterface;
    }
    

    pub fn setGameCanvasRunnableInterface(self: *Self, gameCanvasRunnableInterface: ?*GameCanvasRunnableInterface) void {
        self.allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface;
    }
    

    pub fn createGameLayerManager(self: *Self) ?*AllBinaryGameLayerManager {
        const gameInfo: ?*GameInfo = Inheritance.callStatic(GameInfo, "create5", .{ GameTypeFactory.getInstance().?.SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().?.PLAYER_TYPE_ONE, 1, 1 });
        return Inheritance.callStatic(AllBinaryGameLayerManager, "create3", .{ self.basicColorFactory.?.BLACK, self.basicColorFactory.?.WHITE, gameInfo });
    }
    

    pub fn getGameOptionsForm(self: *Self) ?*CommandForm {
        const layerManager: ?*AllBinaryGameLayerManager = Inheritance.upcast(?*AllBinaryGameLayerManager, self.createGameLayerManager());
        return Inheritance.upcast(?*CommandForm, Inheritance.call(GameOptionsFormFactory.getInstance().?, "init", .{ self, String.literal("Game Options"), Inheritance.receiver(layerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(layerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }));
    }
    

    // throws Exception
    pub fn save(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.SAVE });
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, self.getCurrentStateHashtable());
        _ = Inheritance.call(GamePersistanceSingleton.getInstance().?, "save", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, hashtable });
    }
    

    // throws Exception
    pub fn getCurrentStateHashtable(self: *Self) ?*ABHashtable {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("getCurrentStateHashtable") });
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        if (!Object.same(self.allbinaryGameCanvasRunnableInterface, NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            const currentHashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiver(self.allbinaryGameCanvasRunnableInterface.?, "getCurrentStateHashtable").getCurrentStateHashtable());
            const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(currentHashtable.?, "keys").keys());
            var key: ?Object = null;
            while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
                key = Inheritance.upcast(@TypeOf(key), Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }));
                _ = Inheritance.call(hashtable.?, "put", .{ key, Inheritance.call(currentHashtable.?, "get", .{ key }) });
            }
        }
        return hashtable;
    }
    

    pub fn setLoadGameForm(self: *Self, loadGameForm: ?*LoadGameForm) void {
        self.loadGameForm = loadGameForm;
    }
    

    pub fn getLoadGameForm(self: *Self) ?*CommandForm {
        return self.loadGameForm;
    }
    

    pub fn setResized(self: *Self, resized: bool) void {
        self.resized = resized;
    }
    

    pub fn isResized(self: *Self) bool {
        return self.resized;
    }
    

    pub fn isDemoLoading(self: *Self) bool {
        if (self.startedBefore) {
            return false;
        }
        const displayable: ?*Displayable = Inheritance.upcast(?*Displayable, Inheritance.receiverOf(Inheritance.receiver(self, "getDisplay").getDisplay().?, "getCurrent").getCurrent());
        if (Object.instanceOf(Object.of(displayable), DemoCanvas)) {
            const demoCanvas: ?*DemoCanvas = Inheritance.cast(?*DemoCanvas, displayable);
            if (Inheritance.receiver(demoCanvas.?, "isDemoLoading").isDemoLoading()) {
                return true;
            }
        }
        return false;
    }
};

