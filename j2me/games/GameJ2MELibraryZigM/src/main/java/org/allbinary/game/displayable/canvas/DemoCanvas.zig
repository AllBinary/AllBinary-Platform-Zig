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
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const IndexedAnimationBehavior = @import("org/allbinary/animation/IndexedAnimationBehavior.zig").IndexedAnimationBehavior;
const SpecialAnimation = @import("org/allbinary/animation/special/SpecialAnimation.zig").SpecialAnimation;
const GameAdStateFactory = @import("org/allbinary/business/advertisement/GameAdStateFactory.zig").GameAdStateFactory;
const BaseGameStatistics = @import("org/allbinary/canvas/BaseGameStatistics.zig").BaseGameStatistics;
const CustomGameMenuUtil = @import("org/allbinary/canvas/CustomGameMenuUtil.zig").CustomGameMenuUtil;
const FullScreenUtil = @import("org/allbinary/canvas/FullScreenUtil.zig").FullScreenUtil;
const GameStatisticsFactory = @import("org/allbinary/canvas/GameStatisticsFactory.zig").GameStatisticsFactory;
const RunnableCanvas = @import("org/allbinary/canvas/RunnableCanvas.zig").RunnableCanvas;
const GameAdState = @import("org/allbinary/game/GameAdState.zig").GameAdState;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const ChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/ChangedGameFeatureListener.zig").ChangedGameFeatureListener;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const BasicBuildGameInitializerFactory = @import("org/allbinary/game/init/BasicBuildGameInitializerFactory.zig").BasicBuildGameInitializerFactory;
const GameInitializationUtil = @import("org/allbinary/game/init/GameInitializationUtil.zig").GameInitializationUtil;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const DownGameKeyEventHandler = @import("org/allbinary/game/input/event/DownGameKeyEventHandler.zig").DownGameKeyEventHandler;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const GameKeyEventHandler = @import("org/allbinary/game/input/event/GameKeyEventHandler.zig").GameKeyEventHandler;
const UpGameKeyEventHandler = @import("org/allbinary/game/input/event/UpGameKeyEventHandler.zig").UpGameKeyEventHandler;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const SWTUtil = @import("org/allbinary/game/layer/SWTUtil.zig").SWTUtil;
const DemoGameMidlet = @import("org/allbinary/game/midlet/DemoGameMidlet.zig").DemoGameMidlet;
const HighScoreCommands = @import("org/allbinary/game/score/HighScoreCommands.zig").HighScoreCommands;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresFactoryInterface = @import("org/allbinary/game/score/HighScoresFactoryInterface.zig").HighScoresFactoryInterface;
const HighScoresHelper = @import("org/allbinary/game/score/HighScoresHelper.zig").HighScoresHelper;
const HighScoresHelperBase = @import("org/allbinary/game/score/HighScoresHelperBase.zig").HighScoresHelperBase;
const HighScoresPaintable = @import("org/allbinary/game/score/HighScoresPaintable.zig").HighScoresPaintable;
const NullHighScoresSingletonFactory = @import("org/allbinary/game/score/NullHighScoresSingletonFactory.zig").NullHighScoresSingletonFactory;
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;
const GameStateFactory = @import("org/allbinary/game/state/GameStateFactory.zig").GameStateFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const ResizableListenerHandler = @import("org/allbinary/graphics/ResizableListenerHandler.zig").ResizableListenerHandler;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const MyCommandsFactory = @import("org/allbinary/graphics/displayable/command/MyCommandsFactory.zig").MyCommandsFactory;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const DisplayChangeEventHandler = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.zig").DisplayChangeEventHandler;
const DisplayChangeEventListener = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventListener.zig").DisplayChangeEventListener;
const FullScreenPaintableFactory = @import("org/allbinary/graphics/displayable/screen/FullScreenPaintableFactory.zig").FullScreenPaintableFactory;
const CommandCurrentSelectionFormFactory = @import("org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.zig").CommandCurrentSelectionFormFactory;
const FormType = @import("org/allbinary/graphics/form/FormType.zig").FormType;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const ScrollSelectionFormNoneFactory = @import("org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.zig").ScrollSelectionFormNoneFactory;
const CommandTextItemArrayFactory = @import("org/allbinary/graphics/form/item/CommandTextItemArrayFactory.zig").CommandTextItemArrayFactory;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const CurrentDisplayableFactory = @import("org/allbinary/graphics/opengles/CurrentDisplayableFactory.zig").CurrentDisplayableFactory;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const OpenGLThreadUtil = @import("org/allbinary/graphics/opengles/OpenGLThreadUtil.zig").OpenGLThreadUtil;
const InitUpdatePaintable = @import("org/allbinary/graphics/paint/InitUpdatePaintable.zig").InitUpdatePaintable;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const StatePaintable = @import("org/allbinary/graphics/paint/StatePaintable.zig").StatePaintable;
const StatePaintableFactory = @import("org/allbinary/graphics/paint/StatePaintableFactory.zig").StatePaintableFactory;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const InApplicationPurchaseFactory = @import("org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.zig").InApplicationPurchaseFactory;
const LockableFeature = @import("org/allbinary/logic/system/security/licensing/LockableFeature.zig").LockableFeature;
const LockableFeatureFactory = @import("org/allbinary/logic/system/security/licensing/LockableFeatureFactory.zig").LockableFeatureFactory;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const AllBinaryMediaManager = @import("org/allbinary/media/audio/AllBinaryMediaManager.zig").AllBinaryMediaManager;
const EarlySoundsFactory = @import("org/allbinary/media/audio/EarlySoundsFactory.zig").EarlySoundsFactory;
const PrimaryPlayerQueueFactory = @import("org/allbinary/media/audio/PrimaryPlayerQueueFactory.zig").PrimaryPlayerQueueFactory;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const NullThread = @import("org/allbinary/thread/NullThread.zig").NullThread;
const ThreadFactoryUtil = @import("org/allbinary/thread/ThreadFactoryUtil.zig").ThreadFactoryUtil;
const ThreadUtil = @import("org/allbinary/thread/ThreadUtil.zig").ThreadUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const BasicMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.zig").BasicMenuInputProcessor;
const CommandFormInputProcessor = @import("org/allbinary/game/displayable/canvas/CommandFormInputProcessor.zig").CommandFormInputProcessor;
const DemoCanvasProgressUtil = @import("org/allbinary/game/displayable/canvas/DemoCanvasProgressUtil.zig").DemoCanvasProgressUtil;
const DemoGameRunnable = @import("org/allbinary/game/displayable/canvas/DemoGameRunnable.zig").DemoGameRunnable;
const DemoGameStartupRunnable = @import("org/allbinary/game/displayable/canvas/DemoGameStartupRunnable.zig").DemoGameStartupRunnable;
const DemoLimitedCommandTextItemArrayFactory = @import("org/allbinary/game/displayable/canvas/DemoLimitedCommandTextItemArrayFactory.zig").DemoLimitedCommandTextItemArrayFactory;
const DemoPaintableInterface = @import("org/allbinary/game/displayable/canvas/DemoPaintableInterface.zig").DemoPaintableInterface;
const FormUtil = @import("org/allbinary/game/displayable/canvas/FormUtil.zig").FormUtil;
const GameCanvasRunnableInterface = @import("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.zig").GameCanvasRunnableInterface;
const GameInputMappingCanvas = @import("org/allbinary/game/displayable/canvas/GameInputMappingCanvas.zig").GameInputMappingCanvas;
const GameRunnable = @import("org/allbinary/game/displayable/canvas/GameRunnable.zig").GameRunnable;
const MenuListener = @import("org/allbinary/game/displayable/canvas/MenuListener.zig").MenuListener;
const NoMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/NoMenuInputProcessor.zig").NoMenuInputProcessor;
const NullGameCanvas = @import("org/allbinary/game/displayable/canvas/NullGameCanvas.zig").NullGameCanvas;
const NullWaitGameRunnable = @import("org/allbinary/game/displayable/canvas/NullWaitGameRunnable.zig").NullWaitGameRunnable;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const DemoCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.DemoCanvas";
    pub const java_interfaces = .{ GameCanvasRunnableInterface, MenuListener, DemoPaintableInterface };
    base: RunnableCanvas = undefined,
    basicColorFactory: ?*BasicColorFactory = null,
    myCommandsFactory: ?*MyCommandsFactory = null,
    gameAdStateFactory: ?*GameAdStateFactory = null,
    gameInputStrings: ?*GameInputStrings = null,
    gameStateFactory: ?*GameStateFactory = null,
    threadFactoryUtil: ?*ThreadFactoryUtil = null,
    formUtil: ?*FormUtil = null,
    fullscreenPaintable: ?*Paintable = null,
    basicGameDemoPaintable: ?*StatePaintable = null,
    specialAnimationInterface: ?*SpecialAnimation = null,
    paintedSpecialAnimationInterface: ?*Animation = null,
    fullScreenUtil: ?*FullScreenUtil = null,
    gameCanvas: ?*AllBinaryGameCanvas = null,
    highScoresHelper: ?*HighScoresHelperBase = null,
    realHighScoresPaintable: ?*HighScoresPaintable = null,
    highScoresPaintable: ?*Paintable = null,
    state: i32 = 0,
    canvasThread: ?*Thread = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    basicColor: ?*BasicColor = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    highScoresFactoryInterface: ?*HighScoresFactoryInterface = null,
    menuInputProcessor: ?*BasicMenuInputProcessor = null,
    menuForm: ?*ScrollSelectionForm = null,
    gameInitializationInterfaceFactoryInterface: ?*BasicBuildGameInitializerFactory = null,
    initialized: bool = false,
    demoGameRunnable: ?*DemoGameStartupRunnable = null,
    defaultPaintableInterface: ?*Paintable = null,
    paintableInterface: ?*PaintableInterface = null,
    overlayPaintable: ?*InitUpdatePaintable = null,
    progressPaintable: ?*PaintableInterface = null,
    tempWait: i32 = 0,
    inputToGameKeyMapping: ?*InputToGameKeyMapping = null,
    gameRunnable: ?*GameRunnable = null,
    isSingleKeyRepeatableProcessing: bool = false,
    NONE: ?*GameKey = null,
    gameKeyEventFactory: ?*GameKeyEventFactory = null,
    lastKeyNotMapped: i32 = 0,
    SET_STATE: ?*String = null,
    baseGameStatistics: ?*BaseGameStatistics = null,
    // Implements GameCanvasRunnableInterface
    // Implements MenuListener
    // Implements DisplayChangeEventListener
    // Implements DemoPaintableInterface
    const id: i32 = 0;
    const BOT_GAME_STATS: ?*String = String.literal("Bot Game Statistics: ");
    pub const TYPE: i32 = 3;

    fn initFields(this: *Self) void {
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.myCommandsFactory = Inheritance.upcast(?*MyCommandsFactory, MyCommandsFactory.getInstance());
        this.gameAdStateFactory = Inheritance.upcast(?*GameAdStateFactory, GameAdStateFactory.getInstance());
        this.gameInputStrings = Inheritance.upcast(?*GameInputStrings, GameInputStrings.getInstance());
        this.gameStateFactory = Inheritance.upcast(?*GameStateFactory, GameStateFactory.getInstance());
        this.threadFactoryUtil = Inheritance.upcast(?*ThreadFactoryUtil, ThreadFactoryUtil.getInstance());
        this.formUtil = Inheritance.upcast(?*FormUtil, FormUtil.getInstance());
        this.fullscreenPaintable = Inheritance.upcast(?*Paintable, FullScreenPaintableFactory.getInstance().?.paintable);
        this.basicGameDemoPaintable = Inheritance.upcast(?*StatePaintable, StatePaintableFactory.getInstance());
        this.specialAnimationInterface = Inheritance.upcast(?*SpecialAnimation, SpecialAnimation.getInstance());
        this.paintedSpecialAnimationInterface = Inheritance.upcast(?*Animation, SpecialAnimation.getInstance());
        this.fullScreenUtil = Inheritance.upcast(?*FullScreenUtil, FullScreenUtil.getInstance());
        this.gameCanvas = Inheritance.upcast(?*AllBinaryGameCanvas, NullGameCanvas.getInstance());
        this.highScoresHelper = Inheritance.upcast(?*HighScoresHelperBase, HighScoresHelper.create());
        this.realHighScoresPaintable = HighScoresPaintable.create();
        this.highScoresPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.state = 0;
        this.canvasThread = Inheritance.upcast(?*Thread, NullThread.NULL_THREAD);
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 6000 });
        this.basicColor = Inheritance.upcast(?*BasicColor, this.basicColorFactory.?.RED);
        
        
        this.menuInputProcessor = Inheritance.upcast(?*BasicMenuInputProcessor, NoMenuInputProcessor.getInstance());
        this.menuForm = Inheritance.upcast(?*ScrollSelectionForm, ScrollSelectionForm.getNullScrollSelectionForm());
        
        this.initialized = false;
        
        this.defaultPaintableInterface = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.paintableInterface = Inheritance.upcast(?*PaintableInterface, NullPaintable.getInstance());
        
        this.progressPaintable = Inheritance.upcast(?*PaintableInterface, ProgressCanvasFactory.getLazyInstance());
        this.tempWait = NullWaitGameRunnable.getInstance().?.WAIT;
        this.inputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, Inheritance.receiverOf(Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance().?, "getInputMapping").getInputMapping());
        this.gameRunnable = Inheritance.upcast(?*GameRunnable, NullWaitGameRunnable.getInstance());
        this.isSingleKeyRepeatableProcessing = Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_REPEAT_PRESS });
        this.NONE = Inheritance.upcast(?*GameKey, GameKeyFactory.getInstance().?.NONE);
        this.gameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        this.lastKeyNotMapped = -1;
        this.SET_STATE = String.literal("setState");
        this.baseGameStatistics = Inheritance.upcast(?*BaseGameStatistics, GameStatisticsFactory.getInstance());
    }
    

    pub fn create7(abeClientInformation: ?*AbeClientInformationInterface, commandListener: ?*CommandListener, highScoresFactoryInterface: ?*HighScoresFactoryInterface, paintable: ?*Paintable, overlayPaintable: ?*InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: ?*BasicBuildGameInitializerFactory, isContinue: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RunnableCanvas, "create3", .{ commandListener, CurrentDisplayableFactory.getInstance().?.DEFAULT_CHILD_NAME_LIST, true }).*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        _ = Inheritance.call(this, "setWait", .{ NullWaitGameRunnable.getInstance().?.WAIT });
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        _ = Inheritance.call(GameInitializationUtil.getInstance().?, "initDemo", .{ abeClientInformation, this, gameInitializationInterfaceFactoryInterface });
        _ = Inheritance.call(ResizableListenerHandler.getInstance().?, "fireEvent", .{ false });
        this.overlayPaintable = overlayPaintable;
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        _ = Inheritance.call(this, "setDefaultPaintableInterface", .{ paintable });
        _ = Inheritance.call(this, "setPaintableInterface", .{ this.getDefaultPaintableInterface() });
        if (isContinue) {
            _ = Inheritance.call(this, "addCommand", .{ GameCommandsFactory.getInstance().?.CONTINUE_COMMAND });
        }
        if (Inheritance.call(ChangedGameFeatureListener.getInstance().?, "isChangedFeature", .{ GameFeatureFactory.getInstance().?.SOUND })) {
            _ = this.mediaInit();
        }
        this.demoGameRunnable = Inheritance.callStatic(DemoGameStartupRunnable, "create1", .{ this });
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "addListenerInterface", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = displayChangeEvent;
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonLabels").*.?.START_LABEL }).?, "append", .{ Object.toString(Object.of(Inheritance.fieldPointer(self, "displayInfo").*)) }))), self, Inheritance.fieldPointer(self, "canvasStrings").*.?.ON_DISPLAY_CHANGE_EVENT });
            const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, self.getMenuForm());
            if (scrollSelectionForm != null) {
                const formType: ?*FormType = Inheritance.upcast(?*FormType, Inheritance.receiverOf(FormTypeFactory.getInstance().?, "getFormType").getFormType());
                const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.formUtil.?.createFormRectangle());
                _ = Inheritance.call(scrollSelectionForm.?, "init", .{ rectangle, formType });
            }
            _ = Inheritance.receiver(self.overlayPaintable.?, "init").init();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "canvasStrings").*.?.ON_DISPLAY_CHANGE_EVENT, e });
    }
    

    pub fn getCustomCommands(self: *Self) []?Object {
        _ = self;
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        if (J2MEUtil.isHTML()) {
            const commandArray: []?Object = @constCast(&[_]?Object{ gameCommandsFactory.?.START_COMMAND, HighScoreCommands.getInstance().?.DISPLAY, GameInputMappingCanvas.DISPLAY, gameCommandsFactory.?.DISPLAY_ABOUT })[0..];
            return commandArray;
        } else {
            const commandList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(commandList.?, "add", .{ gameCommandsFactory.?.START_COMMAND });
            const inApplicationPurchaseFactory: ?*InApplicationPurchaseFactory = Inheritance.upcast(?*InApplicationPurchaseFactory, InApplicationPurchaseFactory.getInstance());
            if (inApplicationPurchaseFactory.?.isEnabled()) {
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(LockableFeatureFactory.getInstance().?, "getList").getList());
                if (list.?.size() > 0 and !Inheritance.call(inApplicationPurchaseFactory.?, "isPurchased", .{ Inheritance.cast(?*LockableFeature, Inheritance.call(list.?, "get", .{ 0 })) })) {
                    _ = Inheritance.call(commandList.?, "add", .{ gameCommandsFactory.?.BUY_COMMAND });
                }
            }
            _ = Inheritance.call(commandList.?, "add", .{ HighScoreCommands.getInstance().?.DISPLAY });
            { // try
                const isOverScan: bool = Inheritance.receiverOf(Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance().?, "isOverScan").isOverScan();
                if (SWTUtil.isSWT) {
                    _ = Inheritance.call(commandList.?, "add", .{ GameInputMappingCanvas.DISPLAY });
                } else if (!isOverScan) {
                    _ = Inheritance.call(commandList.?, "add", .{ gameCommandsFactory.?.DISPLAY_OPTIONS });
                    _ = Inheritance.call(commandList.?, "add", .{ gameCommandsFactory.?.DISPLAY_LOAD_FORM });
                    _ = Inheritance.call(commandList.?, "add", .{ GameInputMappingCanvas.DISPLAY });
                }
            }
            // catch (Exception e):
            _ = Inheritance.call(commandList.?, "add", .{ gameCommandsFactory.?.DISPLAY_ABOUT });
            const commandArray: []?Object = commandList.?.toArray();
            return commandArray;
        }
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        const commandArray: []?Object = self.getCustomCommands();
        const size: i32 = @as(i32, @intCast(commandArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self, "addCommand", .{ Inheritance.cast(?*Command, commandArray[@intCast(index)]) });
            }
        }
        _ = Inheritance.callStatic(CustomGameMenuUtil, "add", .{ self });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    // throws Exception
    pub fn initPostPaint(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn mediaInit(self: *Self) void {
        _ = self;
        _ = Inheritance.callStatic(AllBinaryMediaManager, "init", .{ EarlySoundsFactory.getInstance() });
    }
    

    pub fn itemStateChanged(self: *Self, item: ?*Item) void {
        _ = item;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED, self });
    }
    

    // throws Exception
    pub fn initMenu(self: *Self) void {
        _ = self.close();
        const commandTextItemArrayFactory: ?*CommandTextItemArrayFactory = Inheritance.upcast(?*CommandTextItemArrayFactory, Inheritance.receiverOf(DemoLimitedCommandTextItemArrayFactory.getInstance().?, "getCommandTextItemArrayFactory").getCommandTextItemArrayFactory());
        const items: []?*ABCustomItem = Inheritance.call(commandTextItemArrayFactory.?, "getInstance", .{ Inheritance.receiver(self, "getCommandStack").getCommandStack(), self.basicColorFactory.?.BLACK, self.basicColorFactory.?.WHITE });
        const formType: ?*FormType = Inheritance.upcast(?*FormType, Inheritance.receiverOf(FormTypeFactory.getInstance().?, "getFormType").getFormType());
        const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.formUtil.?.createFormRectangle());
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonLabels").*.?.START_LABEL }).?, "append", .{ Object.toString(Object.of(Inheritance.fieldPointer(self, "displayInfo").*)) }))), self, String.literal("initMenu") });
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.callStatic(CommandCurrentSelectionFormFactory, "getInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, items, rectangle, formType, 15, true, self.basicColorFactory.?.BLACK, self.basicColorFactory.?.WHITE }));
        _ = Inheritance.call(self, "setMenuForm", .{ scrollSelectionForm });
        const formType2: ?*FormType = Inheritance.upcast(?*FormType, Inheritance.receiverOf(FormTypeFactory.getInstance().?, "getFormType").getFormType());
        const rectangle2: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.formUtil.?.createFormRectangle());
        _ = Inheritance.call(scrollSelectionForm.?, "init", .{ rectangle2, formType2 });
        if (!Object.same(self.getMenuForm(), ScrollSelectionFormNoneFactory.getInstance())) {
            _ = Inheritance.call(self, "setMenuInputProcessor", .{ Inheritance.callStatic(CommandFormInputProcessor, "create4", .{ BasicArrayListD.create(), -1, self, self.getMenuForm() }) });
        }
        _ = self.open();
    }
    

    pub fn open(self: *Self) void {
        _ = Inheritance.call(BasicMotionGesturesHandler.getInstance().?, "addListenerInterface", .{ self.getMenuInputProcessor() });
        _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "addListener", .{ self.getMenuInputProcessor() });
    }
    

    pub fn close(self: *Self) void {
        _ = Inheritance.call(BasicMotionGesturesHandler.getInstance().?, "removeListener", .{ self.getMenuInputProcessor() });
        _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "removeListener", .{ self.getMenuInputProcessor() });
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return DemoCanvas.id;
    }
    

    pub fn keyPressed(self: *Self, keyCode: i32) void {
        _ = Inheritance.call(self, "keyPressedByDevice", .{ keyCode, 0 });
    }
    

    pub fn keyReleased(self: *Self, keyCode: i32) void {
        _ = Inheritance.call(self, "keyReleasedByDevice", .{ keyCode, 0 });
    }
    

    pub fn keyRepeated(self: *Self, keyCode: i32) void {
        _ = Inheritance.call(self, "keyRepeatedByDevice", .{ keyCode, 0 });
    }
    

    pub fn keyPressedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = deviceId;
        _ = Inheritance.call(self, "addGameKeyEvent", .{ keyCode, false });
    }
    

    pub fn keyReleasedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = deviceId;
        _ = Inheritance.call(self, "removeGameKeyEvent", .{ keyCode, false });
    }
    

    pub fn keyRepeatedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = deviceId;
        if (self.isSingleKeyRepeatableProcessing) {
            _ = Inheritance.call(self, "addGameKeyEvent", .{ keyCode, true });
        }
    }
    

    pub fn addGameKeyEvent(self: *Self, keyCode: i32, repeated: bool) void {
        _ = repeated;
        { // try
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(self.inputToGameKeyMapping.?, "getInstanceForCanvas", .{ self, keyCode }));
            if (!Object.same(gameKey, self.NONE)) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self, gameKey }));
                _ = Inheritance.call(DownGameKeyEventHandler.getInstance().?, "fireEvent", .{ gameKeyEvent });
            } else {
                if (self.lastKeyNotMapped != keyCode) {
                    self.lastKeyNotMapped = keyCode;
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameInputStrings.?.NO_KEY }).?, "appendint", .{ keyCode }))), self, self.gameInputStrings.?.ADD_KEY_EVENT });
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Key Event Error"), self, self.gameInputStrings.?.ADD_KEY_EVENT, e });
    }
    

    pub fn removeGameKeyEvent(self: *Self, keyCode: i32, repeated: bool) void {
        _ = repeated;
        { // try
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(self.inputToGameKeyMapping.?, "getInstanceForCanvas", .{ self, keyCode }));
            if (!Object.same(gameKey, self.NONE)) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self, gameKey }));
                _ = Inheritance.call(UpGameKeyEventHandler.getInstance().?, "fireEvent", .{ gameKeyEvent });
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameInputStrings.?.NO_KEY }).?, "appendint", .{ keyCode }))), self, self.gameInputStrings.?.REMOVE_KEY_EVENT });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Key Event Error"), self, self.gameInputStrings.?.REMOVE_KEY_EVENT, e });
    }
    

    pub fn pause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = self.close();
        _ = Inheritance.call(self, "setPaused", .{ true });
        self.gameRunnable = Inheritance.upcast(@TypeOf(self.gameRunnable), NullWaitGameRunnable.getInstance());
        _ = Inheritance.receiver(self.gameCanvas.?, "pause").pause();
    }
    

    pub fn unPause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = self.open();
        _ = Inheritance.receiver(self.gameCanvas.?, "unPause").unPause();
        self.gameRunnable = Inheritance.upcast(@TypeOf(self.gameRunnable), self.gameCanvas.?.gameRunnable);
        _ = Inheritance.call(self, "setPaused", .{ false });
    }
    

    pub fn isPausable(self: *Self) bool {
        _ = self;
        if (Object.same(Inheritance.receiverOf(CurrentDisplayableFactory.getInstance().?, "getUsedRunnable").getUsedRunnable(), NullWaitGameRunnable.getInstance())) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isGameOver(self: *Self) bool {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED }).?, "append", .{ String.literal(" since not a game") }))), self, String.literal("isGameOver") });
        return false;
    }
    

    // throws Exception
    pub fn setLoadStateHashtable(self: *Self, hashtable: ?*ABHashtable) void {
        _ = hashtable;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Trying to continue a demo lol - only continue a game canvas not the demo"), self, String.literal("setLoadStateHashtable") });
    }
    

    // throws Exception
    pub fn getLoadStateHashtable(self: *Self) ?*ABHashtable {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Trying to continue a demo lol - only continue a game canvas not the demo"), self, String.literal("getLoadStateHashtable") });
        return Inheritance.upcast(?*ABHashtable, Inheritance.fieldPointer(self, "stdUtil").*.?.NULL_TABLE);
    }
    

    // throws Exception
    pub fn getCurrentStateHashtable(self: *Self) ?*ABHashtable {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Trying to save the AI lol"), self, String.literal("getCurrentStateHashtable") });
        return Inheritance.upcast(?*ABHashtable, Inheritance.fieldPointer(self, "stdUtil").*.?.NULL_TABLE);
    }
    

    pub fn setHighScoreSubmitted(self: *Self, isNotUsed: bool) void {
        _ = isNotUsed;
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.paintableInterface.?, "paint", .{ graphics });
        _ = Inheritance.call(self.paintedSpecialAnimationInterface.?, "paintXY", .{ graphics, 0, 0 });
        _ = Inheritance.call(self.highScoresPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.getBasicGameDemoPaintable().?, "paint", .{ graphics });
        _ = Inheritance.call(self.overlayPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.fullscreenPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.progressPaintable.?, "paint", .{ graphics });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.paintableInterface.?, "paintThreed", .{ graphics });
        _ = Inheritance.call(self.paintedSpecialAnimationInterface.?, "paintThreedXYZ", .{ graphics, 0, 0, 0 });
    }
    

    pub fn processGameOver(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Not Implemented since not a game"), self, String.literal("setGameOver") });
    }
    

    pub fn demoStateChange(self: *Self) void {
        var newState: i32 = self.state + 1;
        if (newState > 2) {
            newState = 0;
        } else if (newState == 2) {
            if (!self.highScoresHelper.?.isAnyHighScores()) {
                newState = 0;
            } else {
                const highScores: ?*HighScores = Inheritance.upcast(?*HighScores, self.highScoresHelper.?.getNextHighScores());
                if (Object.same(highScores, NullHighScoresSingletonFactory.getInstance())) {
                    newState = 0;
                } else {
                    _ = Inheritance.call(self.getRealHighScoresPaintable().?, "setHighScores", .{ highScores });
                }
            }
        }
        _ = Inheritance.call(self, "setState", .{ newState });
        _ = self.updateDemoState();
    }
    

    pub fn updateDemoState(self: *Self) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "createInstance", .{ self.state }))), self, self.SET_STATE });
        _ = Inheritance.call(self.getBasicGameDemoPaintable().?, "setState", .{ self.state });
        if (self.state == 0) {
            self.highScoresPaintable = Inheritance.upcast(@TypeOf(self.highScoresPaintable), NullPaintable.getInstance());
            self.paintedSpecialAnimationInterface = Inheritance.upcast(@TypeOf(self.paintedSpecialAnimationInterface), self.getSpecialAnimationInterface());
            if (!Inheritance.receiver(self.demoGameRunnable.?, "isRunning").isRunning() and Inheritance.receiver(self.gameCanvas.?, "isInitialized").isInitialized()) {
                _ = Inheritance.receiverOf(self.getSpecialAnimationInterface().?, "reset").reset();
            }
        } else if (self.state == 1) {
            self.paintedSpecialAnimationInterface = Inheritance.upcast(@TypeOf(self.paintedSpecialAnimationInterface), SpecialAnimation.getInstance());
        } else if (self.state == 2) {
            self.highScoresPaintable = Inheritance.upcast(@TypeOf(self.highScoresPaintable), self.getRealHighScoresPaintable());
        }
        const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
        _ = Inheritance.receiver(gameAdState.?, "processPageAdState").processPageAdState();
    }
    

    // throws Exception
    pub fn getNextRandom(self: *Self) i32 {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn createGameLayerManager(self: *Self, randomValue: i32) ?*AllBinaryGameLayerManager {
        _ = randomValue;
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn createRunnable(self: *Self, randomLevel: i32) ?*GameCanvasRunnableInterface {
        _ = randomLevel;
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn create(self: *Self) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("create") });
        self.highScoresPaintable = Inheritance.upcast(@TypeOf(self.highScoresPaintable), NullPaintable.getInstance());
        const randomLevel: i32 = self.getNextRandom();
        self.gameCanvas = Inheritance.cast(?*AllBinaryGameCanvas, Inheritance.call(self, "createRunnable", .{ randomLevel }));
        self.basicColor = Inheritance.upcast(@TypeOf(self.basicColor), Inheritance.receiverOf(Inheritance.receiver(self.gameCanvas.?, "getLayerManager").getLayerManager().?, "getForegroundBasicColor").getForegroundBasicColor());
        _ = Inheritance.call(self.getRealHighScoresPaintable().?, "setBasicColorP", .{ self.basicColor });
        _ = Inheritance.call(self.gameCanvas.?, "setGameCanvasStartListener", .{ self });
        const gameInfo: ?*GameInfo = Inheritance.upcast(?*GameInfo, Inheritance.receiverOf(Inheritance.receiver(self.gameCanvas.?, "getLayerManager").getLayerManager().?, "getGameInfo").getGameInfo());
        _ = Inheritance.call(self.getHighScoresFactoryInterface().?, "fetchHighScores", .{ gameInfo, self.highScoresHelper });
    }
    

    // throws Exception
    pub fn start(self: *Self) void {
        const gameCanvas: ?*AllBinaryGameCanvas = self.gameCanvas;
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Game Thread in DemoCanvas: ") }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ gameCanvas }) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.START });
        self.canvasThread = Inheritance.upcast(@TypeOf(self.canvasThread), Inheritance.call(self.threadFactoryUtil.?, "getInstanceGameCanvasRunnable", .{ gameCanvas }));
        _ = Inheritance.call(self.gameCanvas.?, "setThread", .{ self.canvasThread });
        _ = Inheritance.call(self.threadFactoryUtil.?, "start", .{ self.canvasThread });
        if (Object.same(Inheritance.receiver(self, "getWait").getWait(), NullWaitGameRunnable.getInstance().?.WAIT)) {
            _ = Inheritance.call(self, "setWait", .{ self.getTempWait() });
        }
    }
    

    pub fn preDemoProcess(self: *Self) void {
        if (!Inheritance.receiver(self.gameCanvas.?, "isInitialized").isInitialized() or Object.same(Inheritance.receiver(self.gameCanvas.?, "getTitle").getTitle(), NullGameCanvas.NO_GAME)) {
            if (AllBinaryMediaManager.update()) {
                if (!Inheritance.receiverOf(PrimaryPlayerQueueFactory.getInstance().?, "process").process()) {
                    _ = Inheritance.receiverOf(SecondaryPlayerQueueFactory.getInstance().?, "process").process();
                }
            }
        }
        _ = Inheritance.receiver(self.overlayPaintable.?, "update").update();
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self.base.process();
        _ = Inheritance.receiverOf(self.getMenuInputProcessor().?, "processInputList").processInputList();
        _ = self.preDemoProcess();
        if (self.state == 0) {
            const indexedAnimationBehavior: ?*IndexedAnimationBehavior = Inheritance.upcast(?*IndexedAnimationBehavior, (Inheritance.cast(?*IndexedAnimationBehavior, Inheritance.receiverOf(self.getSpecialAnimationInterface().?, "getAnimationBehavior").getAnimationBehavior())));
            if (indexedAnimationBehavior.?.loopIndex < 1) {
                _ = self.timeDelayHelper.?.setStartTimeTNT();
            }
            const demoGameMidlet: ?*DemoGameMidlet = Inheritance.cast(?*DemoGameMidlet, Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener());
            if (!Object.same(self.gameCanvas, NullGameCanvas.getInstance()) and Inheritance.receiver(self.gameCanvas.?, "isGameOver").isGameOver()) {
                _ = self.stopGameDemo();
                const randomLevel: i32 = self.getNextRandom();
                const gameInfo: ?*GameInfo = Inheritance.upcast(?*GameInfo, Inheritance.receiverOf(Inheritance.receiver(self.gameCanvas.?, "getLayerManager").getLayerManager().?, "getGameInfo").getGameInfo());
                _ = Inheritance.call(gameInfo.?, "setCurrentLevel", .{ randomLevel });
                _ = Inheritance.call(self.gameCanvas.?, "setGameOver", .{ false });
                _ = self.start();
            } else if (Object.same(self.gameCanvas, NullGameCanvas.getInstance()) and Inheritance.receiver(demoGameMidlet.?, "isReady").isReady()) {
                if (!Inheritance.receiver(self.demoGameRunnable.?, "isRunning").isRunning()) {
                    _ = self.startDemoGame();
                    _ = Inheritance.call(self.demoGameRunnable.?, "setRunning", .{ true });
                    const thread: ?*Thread = Inheritance.upcast(?*Thread, Inheritance.call(self.threadFactoryUtil.?, "getInstanceForRunnable", .{ self.demoGameRunnable }));
                    _ = Inheritance.call(self.demoGameRunnable.?, "setThread", .{ thread });
                    _ = Inheritance.call(self.threadFactoryUtil.?, "start", .{ thread });
                }
            }
        }
    }
    

    // throws Exception
    pub fn startDemoGame(self: *Self) void {
        _ = Inheritance.callStatic(DemoCanvasProgressUtil, "showProgress", .{ self });
    }
    

    // throws Exception
    pub fn stopGameDemo(self: *Self) void {
        if (!Object.same(self.gameCanvas, NullGameCanvas.getInstance())) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Set Running False"), self, String.literal("stopGameDemo") });
            _ = Inheritance.call(self.gameCanvas.?, "setRunning", .{ false });
        }
        _ = Inheritance.call(ThreadUtil.getInstance().?, "join", .{ self.canvasThread });
    }
    

    pub fn showGamePaintable(self: *Self) void {
        const METHOD_NAME: ?*String = String.literal("showGamePaintable");
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, METHOD_NAME });
        const isDefault: bool = J2MEUtil.isHTML();
        if (!Object.same(self.gameCanvas, NullGameCanvas.getInstance()) and (Inheritance.receiver(self.gameCanvas.?, "isRunning").isRunning() or isDefault or SWTUtil.isSWT) and !(Object.same(Inheritance.receiver(self.gameCanvas.?, "getType").getType(), NullGameCanvas.TYPE))) {
            self.gameRunnable = Inheritance.upcast(@TypeOf(self.gameRunnable), self.gameCanvas.?.gameRunnable);
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Showing Game"), self, METHOD_NAME });
            _ = Inheritance.call(self, "setPaintableInterface", .{ self.gameCanvas });
        } else {
            self.gameRunnable = Inheritance.upcast(@TypeOf(self.gameRunnable), NullWaitGameRunnable.getInstance());
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Not Showing Game"), self, METHOD_NAME });
            _ = Inheritance.call(self, "setPaintableInterface", .{ self.getDefaultPaintableInterface() });
        }
    }
    

    pub fn isReadyForStateChange(self: *Self) bool {
        return !Inheritance.receiver(self.demoGameRunnable.?, "isRunning").isRunning() and Inheritance.receiver(self.gameCanvas.?, "isInitialized").isInitialized();
    }
    

    // throws Exception
    pub fn processGame(self: *Self) void {
        _ = self.gameRunnable.?.run();
        if (!Inheritance.receiver(self.specialAnimationInterface.?, "isComplete").isComplete() and self.isReadyForStateChange()) {
            _ = Inheritance.receiver(self.specialAnimationInterface.?, "nextFrame").nextFrame();
        }
        if (self.timeDelayHelper.?.isTimeTNT() and self.isReadyForStateChange()) {
            _ = self.demoStateChange();
        } else {
            _ = self.process();
        }
    }
    

    pub fn run(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START_RUNNABLE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
        { // try
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Demo Thread") });
            _ = Inheritance.receiver(self, "setCurrentThread").setCurrentThread();
            _ = Inheritance.call(self, "setRunning", .{ true });
            if (Inheritance.call(features.?, "isFeature", .{ MainFeatureFactory.getInstance().?.LOAD_ONDEMAND })) {
                _ = Inheritance.receiver(progressCanvas.?, "end").end();
            } else {
                _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Demo Thread Running") });
            }
            _ = Inheritance.call(self.fullScreenUtil.?, "initOnRun", .{ self, Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener() });
            _ = self.initMenu();
            _ = self.initPostPaint();
            _ = self.updateDemoState();
            if (Inheritance.call(features.?, "isDefault", .{ openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD })) {
                while (Object.same(self.gameCanvas, NullGameCanvas.getInstance()) or !Inheritance.receiver(self.gameCanvas.?, "isInitialized").isInitialized()) {
                    _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "loopTimeHelper").*.?, "setStartTimeTNT").setStartTimeTNT();
                    _ = self.processGame();
                    _ = Inheritance.receiver(self, "processLoopSleep").processLoopSleep();
                }
                const demoGameRunnable: ?*DemoGameRunnable = Inheritance.callStatic(DemoGameRunnable, "create1", .{ self });
                const currentDisplayableFactory: ?*CurrentDisplayableFactory = Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.getInstance());
                _ = Inheritance.call(currentDisplayableFactory.?, "setRunnable", .{ demoGameRunnable });
                _ = Inheritance.call(currentDisplayableFactory.?, "setMyCanvas", .{ self });
                _ = Inheritance.receiverOf(OpenGLThreadUtil.getInstance().?, "onResume").onResume();
            }
            if (Inheritance.call(features.?, "isDefault", .{ openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD }) or J2MEUtil.isHTML()) {
                const demoGameRunnable: ?*DemoGameRunnable = Inheritance.callStatic(DemoGameRunnable, "create1", .{ self });
                const currentDisplayableFactory: ?*CurrentDisplayableFactory = Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.getInstance());
                _ = Inheritance.call(currentDisplayableFactory.?, "setRunnable", .{ demoGameRunnable });
                _ = Inheritance.call(currentDisplayableFactory.?, "setMyCanvas", .{ self });
            } else {
                while (Inheritance.receiver(self, "isRunning").isRunning()) {
                    _ = self.run3();
                }
                _ = self.end();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN, e });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END_RUNNABLE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
    }
    

    // throws Exception
    pub fn run3(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "loopTimeHelper").*.?, "setStartTimeTNT").setStartTimeTNT();
        _ = self.processGame();
        _ = Inheritance.receiver(self, "processLoopSleep").processLoopSleep();
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        _ = Inheritance.call(&self.base, "setRunning", .{ running });
        { // try
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
            if (running) {
            } else {
                if ((Inheritance.call(features.?, "isDefault", .{ openGLFeatureFactory.?.OPENGL }) or J2MEUtil.isHTML()) or SWTUtil.isSWT) {
                    const currentDisplayableFactory: ?*CurrentDisplayableFactory = Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.getInstance());
                    _ = currentDisplayableFactory.?.clearRunnable();
                    _ = self.end();
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "SET_RUNNING").*, e });
    }
    

    // throws Exception
    pub fn end(self: *Self) void {
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        _ = Inheritance.call(self.baseGameStatistics.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ DemoCanvas.BOT_GAME_STATS }).?, "append", .{ Object.toString(Object.of(self.baseGameStatistics)) }).?, "append", .{ CommonSeps.getInstance().?.NEW_LINE }))) });
        _ = self.baseGameStatistics.?.init();
        if (Inheritance.call(features.?, "isFeature", .{ MainFeatureFactory.getInstance().?.LOAD_ONDEMAND })) {
            _ = Inheritance.receiver(progressCanvas.?, "start").start();
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Demo End"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
        _ = self.close();
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "removeListener", .{ self });
        _ = self.stopGameDemo();
    }
    

    pub fn setGameState(self: *Self, gameState: ?*GameState) void {
        _ = gameState;
        _ = self;
    }
    

    pub fn getGameState(self: *Self) ?*GameState {
        return Inheritance.upcast(?*GameState, self.gameStateFactory.?.PLAYING_GAME_STATE);
    }
    

    pub fn getGameCanvasRunnableInterface(self: *Self) ?*AllBinaryGameCanvas {
        return self.gameCanvas;
    }
    

    pub fn isDemoLoading(self: *Self) bool {
        const gameCanvas: ?*AllBinaryGameCanvas = self.gameCanvas;
        if (Object.same(gameCanvas, NullGameCanvas.getInstance())) {
            return true;
        } else if (Inheritance.receiver(gameCanvas.?, "isInitialized").isInitialized()) {
            return false;
        }
        return true;
    }
    

    pub fn getState(self: *Self) i32 {
        return self.state;
    }
    

    pub fn setState(self: *Self, state: i32) void {
        self.state = state;
    }
    

    pub fn isHighScoreSubmitted(self: *Self) bool {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Wow the AI got a high score!"), self, String.literal("isHighScoreSubmitted") });
        return false;
    }
    

    pub fn getRealHighScoresPaintable(self: *Self) ?*HighScoresPaintable {
        return self.realHighScoresPaintable;
    }
    

    pub fn setSpecialAnimationInterface(self: *Self, specialAnimationInterface: ?*SpecialAnimation) void {
        _ = Inheritance.call(specialAnimationInterface.?, "setFrame", .{ 0 });
        self.specialAnimationInterface = specialAnimationInterface;
    }
    

    pub fn getSpecialAnimationInterface(self: *Self) ?*SpecialAnimation {
        return self.specialAnimationInterface;
    }
    

    pub fn setPaintableInterface(self: *Self, paintableInterface: ?*PaintableInterface) void {
        self.paintableInterface = paintableInterface;
    }
    

    pub fn getPaintableInterface(self: *Self) ?*PaintableInterface {
        return self.paintableInterface;
    }
    

    pub fn setDefaultPaintableInterface(self: *Self, defaultPaintableInterface: ?*Paintable) void {
        self.defaultPaintableInterface = defaultPaintableInterface;
    }
    

    pub fn getDefaultPaintableInterface(self: *Self) ?*Paintable {
        return self.defaultPaintableInterface;
    }
    

    pub fn getHighScoresFactoryInterface(self: *Self) ?*HighScoresFactoryInterface {
        return self.highScoresFactoryInterface;
    }
    

    pub fn setMenuInputProcessor(self: *Self, menuInputProcessor: ?*BasicMenuInputProcessor) void {
        self.menuInputProcessor = menuInputProcessor;
    }
    

    pub fn getMenuInputProcessor(self: *Self) ?*BasicMenuInputProcessor {
        return self.menuInputProcessor;
    }
    

    pub fn getMenuForm(self: *Self) ?*ScrollSelectionForm {
        return self.menuForm;
    }
    

    pub fn setMenuForm(self: *Self, menuForm: ?*ScrollSelectionForm) void {
        self.menuForm = menuForm;
    }
    

    pub fn isInitialized(self: *Self) bool {
        return self.initialized;
    }
    

    pub fn getOverlayPaintable(self: *Self) ?*Paintable {
        return Inheritance.upcast(?*Paintable, self.overlayPaintable);
    }
    

    pub fn setBasicGameDemoPaintable(self: *Self, basicGameDemoPaintable: ?*StatePaintable) void {
        self.basicGameDemoPaintable = basicGameDemoPaintable;
    }
    

    pub fn getBasicGameDemoPaintable(self: *Self) ?*StatePaintable {
        return self.basicGameDemoPaintable;
    }
    

    pub fn setTempWait(self: *Self, tempWait: i32) void {
        self.tempWait = tempWait;
    }
    

    pub fn getTempWait(self: *Self) i32 {
        return self.tempWait;
    }
    

    pub fn isSingleThread(self: *Self) bool {
        _ = self;
        return Inheritance.receiverOf(OpenGLFeatureUtil.getInstance().?, "isAnyThreed").isAnyThreed() or SWTUtil.isSWT;
    }
    

    pub fn isRunningInAnotherThread(self: *Self) bool {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        if (Inheritance.call(features.?, "isDefault", .{ openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD })) {
            return true;
        } else {
            return Inheritance.receiver(self, "isRunning").isRunning();
        }
    }
    

    pub fn getGameInitializationInterfaceFactoryInterface(self: *Self) ?*BasicBuildGameInitializerFactory {
        return self.gameInitializationInterfaceFactoryInterface;
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return DemoCanvas.TYPE;
    }
};

