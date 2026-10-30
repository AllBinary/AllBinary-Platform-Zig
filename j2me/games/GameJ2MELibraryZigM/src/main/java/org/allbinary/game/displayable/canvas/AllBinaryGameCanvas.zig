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
// const ChoiceGroup = @import("javax/microedition/lcdui/ChoiceGroup.zig").ChoiceGroup;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
// const NullCommandListener = @import("javax/microedition/lcdui/NullCommandListener.zig").NullCommandListener;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const GameAdStateFactory = @import("org/allbinary/business/advertisement/GameAdStateFactory.zig").GameAdStateFactory;
const BaseGameStatistics = @import("org/allbinary/canvas/BaseGameStatistics.zig").BaseGameStatistics;
const GameStatisticsFactory = @import("org/allbinary/canvas/GameStatisticsFactory.zig").GameStatisticsFactory;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const RunnableCanvas = @import("org/allbinary/canvas/RunnableCanvas.zig").RunnableCanvas;
const DebugFactory = @import("org/allbinary/debug/DebugFactory.zig").DebugFactory;
const NoDebug = @import("org/allbinary/debug/NoDebug.zig").NoDebug;
const GameAdState = @import("org/allbinary/game/GameAdState.zig").GameAdState;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const GameStrings = @import("org/allbinary/game/GameStrings.zig").GameStrings;
const GameTypeFactory = @import("org/allbinary/game/GameTypeFactory.zig").GameTypeFactory;
const Intermission = @import("org/allbinary/game/Intermission.zig").Intermission;
const IntermissionCompositeInterface = @import("org/allbinary/game/IntermissionCompositeInterface.zig").IntermissionCompositeInterface;
const IntermissionEnableListenerInterface = @import("org/allbinary/game/IntermissionEnableListenerInterface.zig").IntermissionEnableListenerInterface;
const IntermissionInterface = @import("org/allbinary/game/IntermissionInterface.zig").IntermissionInterface;
const PlayerTypesFactory = @import("org/allbinary/game/PlayerTypesFactory.zig").PlayerTypesFactory;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const InGameFeatures = @import("org/allbinary/game/configuration/InGameFeatures.zig").InGameFeatures;
const InGameOptionsForm = @import("org/allbinary/game/configuration/InGameOptionsForm.zig").InGameOptionsForm;
const ChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/ChangedGameFeatureListener.zig").ChangedGameFeatureListener;
const GameInitializedEvent = @import("org/allbinary/game/configuration/event/GameInitializedEvent.zig").GameInitializedEvent;
const GameInitializedEventHandler = @import("org/allbinary/game/configuration/event/GameInitializedEventHandler.zig").GameInitializedEventHandler;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const GameFeatureUtil = @import("org/allbinary/game/configuration/feature/GameFeatureUtil.zig").GameFeatureUtil;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const SensorFeatureFactory = @import("org/allbinary/game/configuration/feature/SensorFeatureFactory.zig").SensorFeatureFactory;
const TouchFeatureFactory = @import("org/allbinary/game/configuration/feature/TouchFeatureFactory.zig").TouchFeatureFactory;
const GameLevelDisplayChangeEventListenersFactory = @import("org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory.zig").GameLevelDisplayChangeEventListenersFactory;
const BasicBuildGameInitializerFactory = @import("org/allbinary/game/init/BasicBuildGameInitializerFactory.zig").BasicBuildGameInitializerFactory;
const GameInitializationUtil = @import("org/allbinary/game/init/GameInitializationUtil.zig").GameInitializationUtil;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;
const InputProcessor = @import("org/allbinary/game/input/InputProcessor.zig").InputProcessor;
const NoPlayerGameInput = @import("org/allbinary/game/input/NoPlayerGameInput.zig").NoPlayerGameInput;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const GameKeyEventHandler = @import("org/allbinary/game/input/event/GameKeyEventHandler.zig").GameKeyEventHandler;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const SWTUtil = @import("org/allbinary/game/layer/SWTUtil.zig").SWTUtil;
const ColorFillBasePaintable = @import("org/allbinary/game/paint/ColorFillBasePaintable.zig").ColorFillBasePaintable;
const ColorFillPaintableFactory = @import("org/allbinary/game/paint/ColorFillPaintableFactory.zig").ColorFillPaintableFactory;
const ResourceLoadingLevel = @import("org/allbinary/game/resource/ResourceLoadingLevel.zig").ResourceLoadingLevel;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresFactoryInterface = @import("org/allbinary/game/score/HighScoresFactoryInterface.zig").HighScoresFactoryInterface;
const HighScoresPaintable = @import("org/allbinary/game/score/HighScoresPaintable.zig").HighScoresPaintable;
const NullHighScoresSingletonFactory = @import("org/allbinary/game/score/NullHighScoresSingletonFactory.zig").NullHighScoresSingletonFactory;
const HighScoreTextBox = @import("org/allbinary/game/score/displayable/HighScoreTextBox.zig").HighScoreTextBox;
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;
const GameStateFactory = @import("org/allbinary/game/state/GameStateFactory.zig").GameStateFactory;
const GraphicsStrings = @import("org/allbinary/graphics/GraphicsStrings.zig").GraphicsStrings;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const ScreenCapture = @import("org/allbinary/graphics/ScreenCapture.zig").ScreenCapture;
const ScreenCaptureFactory = @import("org/allbinary/graphics/ScreenCaptureFactory.zig").ScreenCaptureFactory;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const GameTickDisplayInfoSingleton = @import("org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.zig").GameTickDisplayInfoSingleton;
const MyCommandsFactory = @import("org/allbinary/graphics/displayable/command/MyCommandsFactory.zig").MyCommandsFactory;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const DisplayChangeEventHandler = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.zig").DisplayChangeEventHandler;
const DisplayChangeEventListener = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventListener.zig").DisplayChangeEventListener;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const CommandCurrentSelectionFormFactory = @import("org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.zig").CommandCurrentSelectionFormFactory;
const FormPaintable = @import("org/allbinary/graphics/form/FormPaintable.zig").FormPaintable;
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
const NullInitUpdatePaintable = @import("org/allbinary/graphics/paint/NullInitUpdatePaintable.zig").NullInitUpdatePaintable;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const OpenGLImageSpecificFactory = @import("org/allbinary/image/opengles/OpenGLImageSpecificFactory.zig").OpenGLImageSpecificFactory;
const SensorGameUpdateProcessor = @import("org/allbinary/input/gyro/SensorGameUpdateProcessor.zig").SensorGameUpdateProcessor;
const SingleSensorGameUpdateProcessor = @import("org/allbinary/input/gyro/SingleSensorGameUpdateProcessor.zig").SingleSensorGameUpdateProcessor;
const BaseTouchInput = @import("org/allbinary/input/motion/button/BaseTouchInput.zig").BaseTouchInput;
const NoButtonsTouchInputFactory = @import("org/allbinary/input/motion/button/NoButtonsTouchInputFactory.zig").NoButtonsTouchInputFactory;
const TouchButtonFactory = @import("org/allbinary/input/motion/button/TouchButtonFactory.zig").TouchButtonFactory;
const TouchButtonsPaintableFactory = @import("org/allbinary/input/motion/button/TouchButtonsPaintableFactory.zig").TouchButtonsPaintableFactory;
const TouchScreenFactory = @import("org/allbinary/input/motion/button/TouchScreenFactory.zig").TouchScreenFactory;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const AllBinaryMediaManager = @import("org/allbinary/media/audio/AllBinaryMediaManager.zig").AllBinaryMediaManager;
const PlayerQueue = @import("org/allbinary/media/audio/PlayerQueue.zig").PlayerQueue;
const PrimaryPlayerQueueFactory = @import("org/allbinary/media/audio/PrimaryPlayerQueueFactory.zig").PrimaryPlayerQueueFactory;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const SelectSound = @import("org/allbinary/media/audio/SelectSound.zig").SelectSound;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const SecondaryThreadPool = @import("org/allbinary/thread/SecondaryThreadPool.zig").SecondaryThreadPool;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const AllBinaryGameCanvasInterface = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.zig").AllBinaryGameCanvasInterface;
const BaseGameBehavior = @import("org/allbinary/game/displayable/canvas/BaseGameBehavior.zig").BaseGameBehavior;
const BaseMenuBehavior = @import("org/allbinary/game/displayable/canvas/BaseMenuBehavior.zig").BaseMenuBehavior;
const BasicMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.zig").BasicMenuInputProcessor;
const BasicPopupMenuPaintable = @import("org/allbinary/game/displayable/canvas/BasicPopupMenuPaintable.zig").BasicPopupMenuPaintable;
const CheatGameInputProcessor = @import("org/allbinary/game/displayable/canvas/CheatGameInputProcessor.zig").CheatGameInputProcessor;
const DemoGameBehavior = @import("org/allbinary/game/displayable/canvas/DemoGameBehavior.zig").DemoGameBehavior;
const DemoPaintableInterface = @import("org/allbinary/game/displayable/canvas/DemoPaintableInterface.zig").DemoPaintableInterface;
const EndGameInfo = @import("org/allbinary/game/displayable/canvas/EndGameInfo.zig").EndGameInfo;
const EndGamePaintable = @import("org/allbinary/game/displayable/canvas/EndGamePaintable.zig").EndGamePaintable;
const EndGameProcessor = @import("org/allbinary/game/displayable/canvas/EndGameProcessor.zig").EndGameProcessor;
const FormInputProcessor = @import("org/allbinary/game/displayable/canvas/FormInputProcessor.zig").FormInputProcessor;
const FormUtil = @import("org/allbinary/game/displayable/canvas/FormUtil.zig").FormUtil;
const GameCanvasInputProcessor = @import("org/allbinary/game/displayable/canvas/GameCanvasInputProcessor.zig").GameCanvasInputProcessor;
const GameCanvasPauseRunnable = @import("org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable.zig").GameCanvasPauseRunnable;
const GameCanvasRunnable = @import("org/allbinary/game/displayable/canvas/GameCanvasRunnable.zig").GameCanvasRunnable;
const GameCanvasRunnableInterface = @import("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.zig").GameCanvasRunnableInterface;
const GameLimitedCommandTextItemArrayFactory = @import("org/allbinary/game/displayable/canvas/GameLimitedCommandTextItemArrayFactory.zig").GameLimitedCommandTextItemArrayFactory;
const GameProcessor = @import("org/allbinary/game/displayable/canvas/GameProcessor.zig").GameProcessor;
const InGameMenuBehavior = @import("org/allbinary/game/displayable/canvas/InGameMenuBehavior.zig").InGameMenuBehavior;
const MenuListener = @import("org/allbinary/game/displayable/canvas/MenuListener.zig").MenuListener;
const MyFormUtil = @import("org/allbinary/game/displayable/canvas/MyFormUtil.zig").MyFormUtil;
const NoMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/NoMenuInputProcessor.zig").NoMenuInputProcessor;
const NullDemoPaintable = @import("org/allbinary/game/displayable/canvas/NullDemoPaintable.zig").NullDemoPaintable;
const NullWaitGameRunnable = @import("org/allbinary/game/displayable/canvas/NullWaitGameRunnable.zig").NullWaitGameRunnable;
const PopupCommandFormInputProcessor = @import("org/allbinary/game/displayable/canvas/PopupCommandFormInputProcessor.zig").PopupCommandFormInputProcessor;
const PopupMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/PopupMenuInputProcessor.zig").PopupMenuInputProcessor;
const PopupMenuInterface = @import("org/allbinary/game/displayable/canvas/PopupMenuInterface.zig").PopupMenuInterface;
const StartIntermissionProcessor = @import("org/allbinary/game/displayable/canvas/StartIntermissionProcessor.zig").StartIntermissionProcessor;
const Integer = @import("java/lang/Integer.zig").Integer;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const AllBinaryGameCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.AllBinaryGameCanvas";
    pub const java_interfaces = .{ AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, PopupMenuInterface };
    base: RunnableCanvas = undefined,
    basicColorFactory: ?*BasicColorFactory = null,
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    touchFeatureFactory: ?*TouchFeatureFactory = null,
    openGLFeatureFactory: ?*OpenGLFeatureFactory = null,
    touchButtonFactory: ?*TouchButtonFactory = null,
    gameAdStateFactory: ?*GameAdStateFactory = null,
    gameStrings: ?*GameStrings = null,
    gameInputStrings: ?*GameInputStrings = null,
    gameStateFactory: ?*GameStateFactory = null,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    gameTickDisplayInfoSingleton: ?*GameTickDisplayInfoSingleton = null,
    gameRunnable: ?*GameCanvasRunnable = null,
    gamePauseRunnable: ?*GameCanvasPauseRunnable = null,
    formUtil: ?*FormUtil = null,
    myFormUtil: ?*MyFormUtil = null,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    gameSpecificPaintable: ?*Paintable = null,
    sensorGameUpdateProcessor: ?*SensorGameUpdateProcessor = null,
    endGameInfo: ?*EndGameInfo = null,
    startIntermissionInterface: ?*IntermissionInterface = null,
    endLevelIntermissionInterface: ?*IntermissionInterface = null,
    gameLayerManager: ?*AllBinaryGameLayerManager = null,
    gameState: ?*GameState = null,
    gameOver: bool = false,
    initialized: bool = false,
    gameStateTimeHelper: ?*TimeDelayHelper = null,
    highScoresHelper: ?*HighScoresHelperBaseInterface = null,
    highScoreSubmitted: bool = false,
    realHighScoresPaintable: ?*HighScoresPaintable = null,
    highScoresPaintable: ?*Paintable = null,
    localPlayerGameInputList: ?*BasicArrayList = null,
    isCheating: bool = false,
    hashtable: ?*ABHashtable = null,
    isSingleKeyRepeatableProcessing: bool = false,
    gameInitializationInterfaceFactoryInterface: ?*BasicBuildGameInitializerFactory = null,
    touchButtonsPaintable: ?*Paintable = null,
    touchPaintable: ?*Paintable = null,
    cheatProcessor: ?*PlayerGameInput = null,
    gameInputProcessor: ?*Processor = null,
    endGameProcessor: ?*Processor = null,
    realEndGameProcessor: ?*Processor = null,
    startIntermissionProcessor: ?*Processor = null,
    realStartIntermissionProcessor: ?*Processor = null,
    endGamePaintable: ?*Paintable = null,
    endGameStatePaintable: ?*Paintable = null,
    nonBotPaintable: ?*Paintable = null,
    intermissionPaintable: ?*Paintable = null,
    startIntermissionPaintable: ?*InitUpdatePaintable = null,
    mainStateProcessor: ?*Processor = null,
    processGameProcessor: ?*Processor = null,
    highScoresFactoryInterface: ?*HighScoresFactoryInterface = null,
    startLevel: i32 = 0,
    mainMenuInputProcessor: ?*BasicMenuInputProcessor = null,
    popupMenuInputProcessor: ?*BasicMenuInputProcessor = null,
    menuInputProcessor: ?*BasicMenuInputProcessor = null,
    menuForm: ?*ScrollSelectionForm = null,
    formPaintable: ?*Paintable = null,
    openMenuPaintable: ?*Paintable = null,
    menuPaintable: ?*Paintable = null,
    currentTouchInputFactory: ?*BaseTouchInput = null,
    colorFillPaintable: ?*ColorFillBasePaintable = null,
    baseGameStatistics: ?*BaseGameStatistics = null,
    primaryPlayerQueue: ?*PlayerQueue = null,
    secondaryPlayerQueue: ?*PlayerQueue = null,
    BUILD_GAME: ?*String = null,
    gameTypeFactory: ?*GameTypeFactory = null,
    screenCapture: ?*ScreenCapture = null,
    basicMotionGesturesHandler: ?*BasicMotionGesturesHandler = null,
    gameKeyEventHandler: ?*GameKeyEventHandler = null,
    gameBehavior: ?*DemoGameBehavior = null,
    menuBehavior: ?*BaseMenuBehavior = null,
    progressPaintable: ?*PaintableInterface = null,
    fontHeightP: i32 = 0,
    gameCanvasStartListener: ?*DemoPaintableInterface = null,
    rawGameInputProcessor: ?*InputProcessor = null,
    rawInputProcessor: ?*InputProcessor = null,
    inputProcessor: ?*InputProcessor = null,
    YIELD_SLEEP: i64 = 0,
    // Implements AllBinaryGameCanvasInterface
    // Implements GameCanvasRunnableInterface
    // Implements MenuListener
    // Implements IntermissionCompositeInterface
    // Implements IntermissionEnableListenerInterface
    // Implements PopupMenuInterface
    // Implements DisplayChangeEventListener
    // Implements UpdateMyFontInterface
    const id: i32 = 0;
    pub const TYPE: i32 = 2;

    fn initFields(this: *Self) void {
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        this.touchFeatureFactory = Inheritance.upcast(?*TouchFeatureFactory, TouchFeatureFactory.getInstance());
        this.openGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        this.touchButtonFactory = Inheritance.upcast(?*TouchButtonFactory, TouchButtonFactory.getInstance());
        this.gameAdStateFactory = Inheritance.upcast(?*GameAdStateFactory, GameAdStateFactory.getInstance());
        this.gameStrings = Inheritance.upcast(?*GameStrings, GameStrings.getInstance());
        this.gameInputStrings = Inheritance.upcast(?*GameInputStrings, GameInputStrings.getInstance());
        this.gameStateFactory = Inheritance.upcast(?*GameStateFactory, GameStateFactory.getInstance());
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
        this.gameTickDisplayInfoSingleton = Inheritance.upcast(?*GameTickDisplayInfoSingleton, GameTickDisplayInfoSingleton.getInstance());
        this.gameRunnable = Inheritance.callStatic(GameCanvasRunnable, "create1", .{ this });
        this.gamePauseRunnable = Inheritance.callStatic(GameCanvasPauseRunnable, "create1", .{ this });
        this.formUtil = Inheritance.upcast(?*FormUtil, FormUtil.getInstance());
        this.myFormUtil = Inheritance.upcast(?*MyFormUtil, MyFormUtil.getInstance());
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.gameSpecificPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.sensorGameUpdateProcessor = Inheritance.upcast(?*SensorGameUpdateProcessor, SingleSensorGameUpdateProcessor.create());
        this.endGameInfo = EndGameInfo.create();
        this.startIntermissionInterface = Inheritance.upcast(?*IntermissionInterface, Intermission.create());
        this.endLevelIntermissionInterface = Inheritance.upcast(?*IntermissionInterface, Intermission.create());
        this.gameLayerManager = Inheritance.upcast(?*AllBinaryGameLayerManager, AllBinaryGameLayerManager.getNullInstance());
        this.gameState = Inheritance.upcast(?*GameState, this.gameStateFactory.?.NO_GAME_STATE);
        this.gameOver = false;
        this.initialized = false;
        this.gameStateTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        
        this.highScoreSubmitted = false;
        this.realHighScoresPaintable = HighScoresPaintable.create();
        this.highScoresPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.localPlayerGameInputList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.isCheating = false;
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.fieldPointer(this, "stdUtil").*.?.NULL_TABLE);
        this.isSingleKeyRepeatableProcessing = false;
        this.gameInitializationInterfaceFactoryInterface = Inheritance.upcast(?*BasicBuildGameInitializerFactory, BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY);
        this.touchButtonsPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.touchPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.cheatProcessor = Inheritance.upcast(?*PlayerGameInput, NoPlayerGameInput.getInstance());
        this.gameInputProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.endGameProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.realEndGameProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.startIntermissionProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.realStartIntermissionProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.endGamePaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.endGameStatePaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.nonBotPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.intermissionPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.startIntermissionPaintable = Inheritance.upcast(?*InitUpdatePaintable, NullInitUpdatePaintable.getInstance());
        this.mainStateProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.processGameProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        
        this.startLevel = 0;
        this.mainMenuInputProcessor = Inheritance.upcast(?*BasicMenuInputProcessor, NoMenuInputProcessor.getInstance());
        this.popupMenuInputProcessor = Inheritance.upcast(?*BasicMenuInputProcessor, NoMenuInputProcessor.getInstance());
        this.menuInputProcessor = Inheritance.upcast(?*BasicMenuInputProcessor, NoMenuInputProcessor.getInstance());
        this.menuForm = Inheritance.upcast(?*ScrollSelectionForm, ScrollSelectionForm.getNullScrollSelectionForm());
        this.formPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.openMenuPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.menuPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.currentTouchInputFactory = Inheritance.upcast(?*BaseTouchInput, NoButtonsTouchInputFactory.getInstance());
        this.colorFillPaintable = Inheritance.upcast(?*ColorFillBasePaintable, Inheritance.call(ColorFillPaintableFactory.getInstance().?, "getInstance", .{ this.basicColorFactory.?.BLACK, true }));
        this.baseGameStatistics = Inheritance.upcast(?*BaseGameStatistics, GameStatisticsFactory.getInstance());
        this.primaryPlayerQueue = Inheritance.upcast(?*PlayerQueue, PrimaryPlayerQueueFactory.getInstance());
        this.secondaryPlayerQueue = Inheritance.upcast(?*PlayerQueue, SecondaryPlayerQueueFactory.getInstance());
        this.BUILD_GAME = String.literal("buildGame");
        this.gameTypeFactory = Inheritance.upcast(?*GameTypeFactory, GameTypeFactory.getInstance());
        this.screenCapture = Inheritance.upcast(?*ScreenCapture, ScreenCaptureFactory.getInstance());
        this.basicMotionGesturesHandler = Inheritance.upcast(?*BasicMotionGesturesHandler, BasicMotionGesturesHandler.getInstance());
        this.gameKeyEventHandler = Inheritance.upcast(?*GameKeyEventHandler, GameKeyEventHandler.getInstance());
        this.gameBehavior = null;
        this.menuBehavior = null;
        this.progressPaintable = Inheritance.upcast(?*PaintableInterface, ProgressCanvasFactory.getLazyInstance());
        this.fontHeightP = 0;
        this.gameCanvasStartListener = Inheritance.upcast(?*DemoPaintableInterface, NullDemoPaintable.NULL_DEMO_PAINTABLE);
        this.rawGameInputProcessor = Inheritance.upcast(?*InputProcessor, Inheritance.callStatic(GameCanvasInputProcessor, "create1", .{ this }));
        this.rawInputProcessor = Inheritance.upcast(?*InputProcessor, Inheritance.callStatic(FormInputProcessor, "create1", .{ this }));
        this.inputProcessor = Inheritance.upcast(?*InputProcessor, this.getRawGameInputProcessor());
        this.YIELD_SLEEP = 100;
    }
    

    pub fn create5(commandListener: ?*CommandListener, gameLayerManager: ?*AllBinaryGameLayerManager, highScoresFactoryInterface: ?*HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: ?*BasicBuildGameInitializerFactory, buffered: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RunnableCanvas, "create3", .{ commandListener, CanvasStrings.getInstance().?.EMPTY_CHILD_NAME_LIST, true }).*;
        this.initFields();
        this.highScoresHelper = Inheritance.upcast(@TypeOf(this.highScoresHelper), highScoresFactoryInterface.?.createHighScoresHelper());
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        _ = Inheritance.call(this, "init", .{ gameLayerManager, buffered });
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        if (Object.same(Inheritance.receiverOf(Inheritance.receiver(this.gameLayerManager.?, "getGameInfo").getGameInfo().?, "getGameType").getGameType(), this.gameTypeFactory.?.BOT) or Object.same(Inheritance.receiverOf(Inheritance.receiver(this.gameLayerManager.?, "getGameInfo").getGameInfo().?, "getGameType").getGameType(), this.gameTypeFactory.?.NONE)) {
            this.gameBehavior = Inheritance.upcast(@TypeOf(this.gameBehavior), DemoGameBehavior.getInstance());
            this.menuBehavior = Inheritance.upcast(@TypeOf(this.menuBehavior), BaseMenuBehavior.getInstance());
        } else {
            this.gameBehavior = Inheritance.upcast(@TypeOf(this.gameBehavior), BaseGameBehavior.getInstance());
            this.menuBehavior = Inheritance.upcast(@TypeOf(this.menuBehavior), this.getInGameMenuBehavior());
        }
        _ = this.initPopupMenu();
        _ = this.initMenu();
        _ = this.initSpecialPaint();
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "addListenerInterface", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        { // try
            const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START }).?, "append", .{ Inheritance.fieldPointer(self, "canvasStrings").*.?.FD_WIDTH }).?, "appendint", .{ @as(i32, @intCast(Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font }))) }).?, "append", .{ Inheritance.fieldPointer(self, "canvasStrings").*.?.FD_HEIGHT }).?, "appendint", .{ @as(i32, @intCast(font.?.getHeight())) }))), self, Inheritance.fieldPointer(self, "canvasStrings").*.?.UPDATE_MEASUREMENT });
            self.fontHeightP = font.?.getHeight();
            _ = Inheritance.call(self.myFormUtil.?, "updateMeasurement", .{ graphics });
            const popupMenuRectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.myFormUtil.?.getPopupMenuRectangle());
            const basicPopupMenuPaintable: ?*BasicPopupMenuPaintable = Inheritance.upcast(?*BasicPopupMenuPaintable, (Inheritance.cast(?*BasicPopupMenuPaintable, self.getOpenMenuPaintable())));
            _ = Inheritance.call(basicPopupMenuPaintable.?, "init", .{ popupMenuRectangle });
            if (!Object.same(self.getPopupMenuInputProcessor(), NoMenuInputProcessor.getInstance())) {
                const popupMenuInputProcessor: ?*PopupMenuInputProcessor = Inheritance.upcast(?*PopupMenuInputProcessor, (Inheritance.cast(?*PopupMenuInputProcessor, self.getPopupMenuInputProcessor())));
                _ = Inheritance.call(popupMenuInputProcessor.?, "init", .{ popupMenuRectangle });
            }
            self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "canvasStrings").*.?.ON_DISPLAY_CHANGE_EVENT, e });
    }
    

    pub fn getInGameMenuBehavior(self: *Self) ?*BaseMenuBehavior {
        _ = self;
        return Inheritance.upcast(?*BaseMenuBehavior, InGameMenuBehavior.getInstance());
    }
    

    pub fn setCurrentThread(self: *Self) void {
        if (J2MEUtil.isHTML()) {
            _ = self.base.setCurrentThreadFake();
        } else {
            _ = self.base.setCurrentThread();
        }
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START }).?, "append", .{ Object.toString(Object.of(DisplayInfoSingleton.getInstance())) }))), self, Inheritance.fieldPointer(self, "canvasStrings").*.?.UPDATE_MEASUREMENT });
            self.myFontProcessor = self.updateMyFontProcessor;
            _ = Inheritance.call(self.menuBehavior.?, "onDisplayChangeEvent", .{ self, displayChangeEvent });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "canvasStrings").*.?.ON_DISPLAY_CHANGE_EVENT, e });
    }
    

    // throws Exception
    pub fn updateMenuFromEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = displayChangeEvent;
        const formType: ?*FormType = Inheritance.upcast(?*FormType, Inheritance.receiverOf(FormTypeFactory.getInstance().?, "getFormType").getFormType());
        const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.formUtil.?.createFormRectangle());
        _ = Inheritance.call(self.menuForm.?, "init", .{ rectangle, formType });
        if (!Object.same(self.currentTouchInputFactory, NoButtonsTouchInputFactory.getInstance())) {
            _ = Inheritance.call(self.touchButtonFactory.?, "toggle", .{ Inheritance.receiver(self, "isPaused").isPaused(), self.currentTouchInputFactory.?.getList() });
        }
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    // throws Exception
    pub fn processSleep(self: *Self) void {
        _ = self.base.processSleep();
        if (AllBinaryMediaManager.update()) {
            if (!self.primaryPlayerQueue.?.process()) {
                _ = self.secondaryPlayerQueue.?.process();
            }
        }
        if (Inheritance.receiver(self.menuInputProcessor.?, "processInputList").processInputList() != -1) {
            _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "runnableCanvasRefreshHelper").*.?, "process").process();
        }
    }
    

    // throws Exception
    pub fn initPopupMenu(self: *Self) void {
        if (Object.same(self.popupMenuInputProcessor, NoMenuInputProcessor.getInstance())) {
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            const popupMenuRectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.myFormUtil.?.getPopupMenuRectangle());
            if (Inheritance.call(features.?, "isFeature", .{ self.touchFeatureFactory.?.TOUCH_ENABLED })) {
                _ = Inheritance.call(self, "setOpenMenuPaintable", .{ Inheritance.callStatic(BasicPopupMenuPaintable, "create3", .{ popupMenuRectangle, Inheritance.receiver(self.gameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(self.gameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }) });
                _ = Inheritance.call(self, "setPopupMenuInputProcessor", .{ Inheritance.callStatic(PopupMenuInputProcessor, "create4", .{ BasicArrayListD.create(), -1, self, popupMenuRectangle }) });
            }
        } else {
        }
    }
    

    pub fn initMenu(self: *Self) void {
        { // try
            _ = Inheritance.call(self.menuBehavior.?, "initMenu", .{ self });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("initMenu"), e });
    }
    

    // throws Exception
    pub fn initMenu2(self: *Self) void {
        _ = self.closeMenu();
        const formType: ?*FormType = Inheritance.upcast(?*FormType, Inheritance.receiverOf(FormTypeFactory.getInstance().?, "getFormType").getFormType());
        const gameLimitedCommandTextItemArrayFactory: ?*GameLimitedCommandTextItemArrayFactory = Inheritance.upcast(?*GameLimitedCommandTextItemArrayFactory, GameLimitedCommandTextItemArrayFactory.getInstance());
        const commandTextItemArrayFactory: ?*CommandTextItemArrayFactory = Inheritance.upcast(?*CommandTextItemArrayFactory, gameLimitedCommandTextItemArrayFactory.?.getCommandTextItemArrayFactory());
        const items: []?*ABCustomItem = Inheritance.call(commandTextItemArrayFactory.?, "getInstance", .{ Inheritance.receiver(self, "getCommandStack").getCommandStack(), Inheritance.receiver(self.gameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(self.gameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() });
        const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.formUtil.?.createFormRectangle());
        _ = Inheritance.call(self, "setMenuForm", .{ Inheritance.callStatic(CommandCurrentSelectionFormFactory, "getInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, items, rectangle, formType, 25, false, Inheritance.receiver(self.gameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(self.gameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }) });
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, self.getMenuForm());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ self.touchFeatureFactory.?.TOUCH_ENABLED })) {
            self.mainMenuInputProcessor = Inheritance.upcast(@TypeOf(self.mainMenuInputProcessor), Inheritance.callStatic(PopupCommandFormInputProcessor, "create5", .{ BasicArrayListD.create(), -1, self, scrollSelectionForm, Inheritance.cast(?*PopupMenuInputProcessor, self.getPopupMenuInputProcessor()) }));
        } else {
        }
        _ = Inheritance.call(self, "setMenuInputProcessor", .{ self.getPopupMenuInputProcessor() });
        if (!Object.same(scrollSelectionForm, ScrollSelectionFormNoneFactory.getInstance())) {
            _ = Inheritance.call(self, "setFormPaintable", .{ Inheritance.callStatic(FormPaintable, "create1", .{ scrollSelectionForm }) });
        } else {
        }
        _ = self.closeMenu();
    }
    

    pub fn updateMenu(self: *Self) void {
        { // try
            _ = Inheritance.call(self.menuBehavior.?, "updateMenu", .{ self });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("initMenu"), e });
    }
    

    // throws Exception
    pub fn updateMenu2(self: *Self) void {
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, self.getMenuForm());
        _ = Inheritance.receiver(scrollSelectionForm.?, "deleteAll").deleteAll();
        const gameLimitedCommandTextItemArrayFactory: ?*GameLimitedCommandTextItemArrayFactory = Inheritance.upcast(?*GameLimitedCommandTextItemArrayFactory, GameLimitedCommandTextItemArrayFactory.getInstance());
        const commandTextItemArrayFactory: ?*CommandTextItemArrayFactory = Inheritance.upcast(?*CommandTextItemArrayFactory, gameLimitedCommandTextItemArrayFactory.?.getCommandTextItemArrayFactory());
        const items: []?*ABCustomItem = Inheritance.call(commandTextItemArrayFactory.?, "getInstance", .{ Inheritance.receiver(self, "getCommandStack").getCommandStack(), Inheritance.receiver(self.gameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(self.gameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() });
        const size: i32 = @as(i32, @intCast(items.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(scrollSelectionForm.?, "append", .{ items[@intCast(index)] });
            }
        }
        const formType: ?*FormType = Inheritance.upcast(?*FormType, Inheritance.receiverOf(FormTypeFactory.getInstance().?, "getFormType").getFormType());
        const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.formUtil.?.createFormRectangle());
        _ = Inheritance.call(scrollSelectionForm.?, "init", .{ rectangle, formType });
    }
    

    pub fn pause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.gameBehavior.?, "pause", .{ self });
        _ = self.closeMenu();
        _ = self.base.pause();
        _ = Inheritance.call(self.touchButtonFactory.?, "toggle", .{ Inheritance.receiver(self, "isPaused").isPaused(), Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance() });
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "tsUtil").*.?, "gc").gc();
    }
    

    pub fn unPause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.gameStrings.?.UNPAUSE });
        _ = self.closeMenu();
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "tsUtil").*.?, "gc").gc();
        _ = self.base.unPause();
        _ = Inheritance.call(self.touchButtonFactory.?, "toggle", .{ Inheritance.receiver(self, "isPaused").isPaused(), Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance() });
        _ = Inheritance.call(self.gameBehavior.?, "unPause", .{ self });
    }
    

    pub fn isPausable(self: *Self) bool {
        _ = self;
        if (Object.same(Inheritance.receiverOf(CurrentDisplayableFactory.getInstance().?, "getUsedRunnable").getUsedRunnable(), NullWaitGameRunnable.getInstance())) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn popupMenu(self: *Self) void {
        _ = Inheritance.call(self.menuBehavior.?, "popupMenu", .{ self });
    }
    

    // throws Exception
    pub fn popupMenu2(self: *Self) void {
        _ = Inheritance.call(self.primaryPlayerQueue.?, "add", .{ SelectSound.getInstance() });
        _ = Inheritance.call(self, "setMenuPaintable", .{ self.getFormPaintable() });
        _ = Inheritance.call(self, "setMenuInputProcessor", .{ self.mainMenuInputProcessor });
        _ = Inheritance.call(self.basicMotionGesturesHandler.?, "addListenerInterface", .{ self.mainMenuInputProcessor });
        _ = Inheritance.call(self.gameKeyEventHandler.?, "addListener", .{ self.mainMenuInputProcessor });
    }
    

    // throws Exception
    pub fn toggleMenu(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.gameStrings.?.TOGGLE_MENU });
        if (Object.same(self.getMenuPaintable(), self.getOpenMenuPaintable())) {
            _ = self.pause();
            _ = self.updateMenu();
            _ = self.popupMenu();
        } else if (Object.same(self.getMenuPaintable(), self.getFormPaintable())) {
            _ = Inheritance.call(self.primaryPlayerQueue.?, "add", .{ SelectSound.getInstance() });
            _ = self.unPause();
        }
    }
    

    pub fn closeMenu(self: *Self) void {
        _ = Inheritance.call(self.menuBehavior.?, "closeMenu", .{ self });
    }
    

    pub fn closeMenu2(self: *Self) void {
        _ = Inheritance.call(self, "setMenuPaintable", .{ self.getOpenMenuPaintable() });
        _ = Inheritance.call(self.basicMotionGesturesHandler.?, "removeListener", .{ self.mainMenuInputProcessor });
        _ = Inheritance.call(self.gameKeyEventHandler.?, "removeListener", .{ self.mainMenuInputProcessor });
        _ = Inheritance.call(self, "setMenuInputProcessor", .{ self.getPopupMenuInputProcessor() });
    }
    

    pub fn open(self: *Self) void {
        _ = Inheritance.call(self.basicMotionGesturesHandler.?, "addListenerInterface", .{ self.menuInputProcessor });
        _ = Inheritance.call(self.gameKeyEventHandler.?, "addListener", .{ self.menuInputProcessor });
    }
    

    pub fn close(self: *Self) void {
        _ = Inheritance.call(self.basicMotionGesturesHandler.?, "removeListener", .{ self.menuInputProcessor });
        _ = Inheritance.call(self.gameKeyEventHandler.?, "removeListener", .{ self.menuInputProcessor });
        _ = self.primaryPlayerQueue.?.clear();
        _ = self.secondaryPlayerQueue.?.clear();
    }
    

    // throws Exception
    pub fn processorInit(self: *Self) void {
        _ = Inheritance.call(self, "setMainStateProcessor", .{ Processor.getInstance() });
        _ = self.setProcessGameProcessorInit();
    }
    

    pub fn setProcessGameProcessorInit(self: *Self) void {
        _ = Inheritance.call(self, "setProcessGameProcessor", .{ Inheritance.callStatic(GameProcessor, "create1", .{ self }) });
    }
    

    pub fn initSpecialPaint(self: *Self) void {
        _ = Inheritance.call(self.menuBehavior.?, "initSpecialPaint", .{ self });
    }
    

    // throws Exception
    pub fn init(self: *Self, gameLayerManager: ?*AllBinaryGameLayerManager, buffered: bool) void {
        _ = self.gameStateTimeHelper.?.setStartTimeTNT();
        _ = Inheritance.call(self, "setHighScoreSubmitted", .{ false });
        _ = Inheritance.call(self, "setLayerManager", .{ gameLayerManager });
        if (!buffered) {
            const BUFF_MESSAGE: ?*String = String.literal("XXX Not Buffering Causes Concurrency Issues XXX");
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ BUFF_MESSAGE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CONSTRUCTOR });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Buffering is disabled"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(self, "setGameInputProcessor", .{ Processor.getInstance() });
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ GameFeatureFactory.getInstance().?.CHEATING })) {
            self.isCheating = true;
            self.cheatProcessor = Inheritance.upcast(@TypeOf(self.cheatProcessor), Inheritance.callStatic(CheatGameInputProcessor, "create1", .{ self }));
            _ = Inheritance.call(self.gameKeyEventHandler.?, "addListener", .{ self.cheatProcessor });
        } else {
            self.isCheating = false;
            self.cheatProcessor = Inheritance.upcast(@TypeOf(self.cheatProcessor), NoPlayerGameInput.getInstance());
        }
        self.realEndGameProcessor = Inheritance.upcast(@TypeOf(self.realEndGameProcessor), Inheritance.callStatic(EndGameProcessor, "create1", .{ self }));
        _ = Inheritance.call(self, "setEndGameProcessor", .{ Processor.getInstance() });
        self.realStartIntermissionProcessor = Inheritance.upcast(@TypeOf(self.realStartIntermissionProcessor), Inheritance.callStatic(StartIntermissionProcessor, "create1", .{ self }));
        self.startIntermissionProcessor = Inheritance.upcast(@TypeOf(self.startIntermissionProcessor), Processor.getInstance());
        _ = Inheritance.call(self, "setEndGameStatePaintable", .{ Inheritance.callStatic(EndGamePaintable, "create1", .{ self }) });
        _ = Inheritance.call(self, "setEndGamePaintable", .{ NullPaintable.getInstance() });
        _ = Inheritance.call(self, "setIntermissionPaintable", .{ NullPaintable.getInstance() });
        _ = Inheritance.call(self.getStartIntermissionInterface().?, "setListener", .{ self });
    }
    

    pub fn notifyIntermission(self: *Self, enable: bool) void {
        if (enable) {
            self.startIntermissionProcessor = self.realStartIntermissionProcessor;
        } else {
            self.startIntermissionProcessor = Inheritance.upcast(@TypeOf(self.startIntermissionProcessor), Processor.getInstance());
        }
        if (enable) {
            _ = Inheritance.call(self, "setIntermissionPaintable", .{ self.getStartIntermissionPaintable() });
        } else {
            _ = Inheritance.call(self, "setIntermissionPaintable", .{ NullPaintable.getInstance() });
        }
    }
    

    // throws Exception
    pub fn mediaInit(self: *Self) void {
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED, self });
    }
    

    // throws Exception
    pub fn initConfigurable(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Setting Configurables") });
        _ = Inheritance.call(GameInitializationUtil.getInstance().?, "initGame", .{ abeClientInformation, self, self.gameInitializationInterfaceFactoryInterface });
        const gameFeatureFactory: ?*GameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        const changedGameFeatureListener: ?*ChangedGameFeatureListener = Inheritance.upcast(?*ChangedGameFeatureListener, ChangedGameFeatureListener.getInstance());
        if (Inheritance.call(changedGameFeatureListener.?, "isChangedFeature", .{ gameFeatureFactory.?.SOUND })) {
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Sound Changing To: ") }).?, "appendboolean", .{ Inheritance.call(features.?, "isFeature", .{ gameFeatureFactory.?.SOUND }) }))), self, String.literal("initConfigurable") });
            _ = self.mediaInit();
            _ = Inheritance.call(changedGameFeatureListener.?, "remove", .{ gameFeatureFactory.?.SOUND });
        }
        const sensorFeatureFactory: ?*SensorFeatureFactory = Inheritance.upcast(?*SensorFeatureFactory, SensorFeatureFactory.getInstance());
        if (Inheritance.call(changedGameFeatureListener.?, "isChangedFeature", .{ sensorFeatureFactory.?.ORIENTATION_SENSORS }) or Inheritance.call(changedGameFeatureListener.?, "isChangedFeature", .{ sensorFeatureFactory.?.NO_ORIENTATION }) or Inheritance.call(changedGameFeatureListener.?, "isChangedFeature", .{ sensorFeatureFactory.?.SIMULATED_ORIENTATION_SENSORS })) {
            _ = Inheritance.call(changedGameFeatureListener.?, "remove", .{ sensorFeatureFactory.?.NO_ORIENTATION });
            _ = Inheritance.call(changedGameFeatureListener.?, "remove", .{ sensorFeatureFactory.?.ORIENTATION_SENSORS });
            _ = Inheritance.call(changedGameFeatureListener.?, "remove", .{ sensorFeatureFactory.?.SIMULATED_ORIENTATION_SENSORS });
        }
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        _ = Inheritance.call(self, "loadResourceLoadingLevel", .{ resourceLoadingLevelFactory.?.LOAD_GAME });
    }
    

    // throws Exception
    pub fn initApp(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.call(self, "initConfigurable", .{ abeClientInformation });
        _ = self.processorInit();
        _ = Inheritance.call(self.sensorGameUpdateProcessor.?, "process", .{ self.gameLayerManager });
        _ = Inheritance.call(self.sensorGameUpdateProcessor.?, "sendNotifications", .{ self.gameLayerManager });
        _ = self.initTouch();
    }
    

    // throws Exception
    pub fn initTouch(self: *Self) void {
        const gameInitializedEvent: ?*GameInitializedEvent = Inheritance.upcast(?*GameInitializedEvent, GameInitializationUtil.getInstance().?.EVENT);
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        _ = Inheritance.call(gameInitializedEvent.?, "setResourceLoadingLevel", .{ resourceLoadingLevelFactory.?.LOAD_TOUCH });
        _ = Inheritance.call(GameInitializedEventHandler.getInstance().?, "fireEvent", .{ gameInitializedEvent });
        _ = self.touchButtonFactory.?.defaultList();
        _ = self.updateTouch();
        _ = self.postInitTouch();
    }
    

    // throws Exception
    pub fn updateCurrentTouchInputFactory(self: *Self, nextTouchInput: ?*BaseTouchInput) void {
        if (!Object.same(nextTouchInput, self.currentTouchInputFactory)) {
            self.currentTouchInputFactory = nextTouchInput;
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(self.currentTouchInputFactory)), self, self.gameInputStrings.?.UDPATE_CURRENT_TOUCH_INPUT_FACTORY });
            _ = Inheritance.call(self.touchButtonFactory.?, "toggle", .{ Inheritance.receiver(self, "isPaused").isPaused(), self.currentTouchInputFactory.?.getList() });
        }
    }
    

    // throws Exception
    pub fn updateTouch(self: *Self) void {
        _ = Inheritance.call(self.gameBehavior.?, "updateTouch", .{ self });
    }
    

    // throws Exception
    pub fn updateTouch2(self: *Self) void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ self.touchFeatureFactory.?.AUTO_HIDE_SHOW_SCREEN_BUTTONS })) {
            if (Inheritance.receiverOf(Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo().?, "getCurrentLevel").getCurrentLevel() - self.getStartLevel() == 1) {
                _ = Inheritance.call(self, "setTouchPaintableP", .{ NullPaintable.getInstance() });
            }
        }
    }
    

    // throws Exception
    pub fn postInitTouch(self: *Self) void {
        _ = Inheritance.call(self, "setTouchButtonsPaintable", .{ Inheritance.callStatic(TouchButtonsPaintableFactory, "getInstance", .{ Inheritance.receiver(self.gameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }) });
        _ = self.updateScreenButtonPaintable();
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = self.addCommands();
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    pub fn addCommands(self: *Self) void {
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        const myCommandsFactory: ?*MyCommandsFactory = Inheritance.upcast(?*MyCommandsFactory, MyCommandsFactory.getInstance());
        if (!Object.same(DebugFactory.getInstance(), NoDebug.getInstance())) {
            _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.START_TRACE });
        }
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.RESTART_COMMAND });
        _ = Inheritance.call(self, "addCommand", .{ myCommandsFactory.?.PAUSE_COMMAND });
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.QUIT_COMMAND });
        const isOverScan: bool = Inheritance.receiverOf(Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance().?, "isOverScan").isOverScan();
        if (J2MEUtil.isHTML()) {
        } else if (SWTUtil.isSWT) {
        } else if (!isOverScan) {
            if (Inheritance.receiverOf(TouchScreenFactory.getInstance().?, "isTouch").isTouch() and Inheritance.receiver(InGameFeatures.create(), "isAny").isAny()) {
                _ = Inheritance.call(self, "addCommand", .{ InGameOptionsForm.DISPLAY });
            }
            _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.SAVE });
            _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.DISPLAY_LOAD_FORM });
        }
    }
    

    pub fn itemStateChanged(self: *Self, item: ?*Item) void {
        { // try
            const itemLabel: ?*String = Inheritance.upcast(?*String, item.?.getLabel());
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonLabels").*.?.ITEM_LABEL }).?, "append", .{ itemLabel }))), self, String.literal("itemStateChanged") });
            if (Object.instanceOf(Object.of(item), ChoiceGroup)) {
                const gameFeatureUtil: ?*GameFeatureUtil = Inheritance.upcast(?*GameFeatureUtil, GameFeatureUtil.getInstance());
                if (Inheritance.call(gameFeatureUtil.?, "isExclusive", .{ itemLabel })) {
                    _ = Inheritance.call(gameFeatureUtil.?, "updateExclusiveForChoiceGroup", .{ Inheritance.cast(?*ChoiceGroup, item) });
                } else {
                    _ = Inheritance.call(gameFeatureUtil.?, "updateMultiple", .{ Inheritance.cast(?*ChoiceGroup, item) });
                }
            }
            _ = Inheritance.call(self.sensorGameUpdateProcessor.?, "process", .{ self.gameLayerManager });
            _ = self.updateTouch();
            _ = self.updateScreenButtonPaintable();
            _ = Inheritance.call(self.sensorGameUpdateProcessor.?, "sendNotifications", .{ self.gameLayerManager });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("itemStateChanged"), e });
    }
    

    // throws Exception
    pub fn updateScreenButtonPaintable(self: *Self) void {
        _ = Inheritance.call(self.gameBehavior.?, "updateScreenButtonPaintable", .{ self });
    }
    

    pub fn updateScreenButtonPaintable2(self: *Self) void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ self.touchFeatureFactory.?.AUTO_HIDE_SHOW_SCREEN_BUTTONS })) {
            _ = Inheritance.call(self, "setTouchPaintableP", .{ self.getTouchButtonsPaintable() });
            _ = Inheritance.call(self, "setStartLevel", .{ Inheritance.receiverOf(Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo().?, "getCurrentLevel").getCurrentLevel() });
        } else if (Inheritance.call(features.?, "isFeature", .{ self.touchFeatureFactory.?.SHOW_SCREEN_BUTTONS })) {
            _ = Inheritance.call(self, "setTouchPaintableP", .{ self.getTouchButtonsPaintable() });
        } else if (Inheritance.call(features.?, "isFeature", .{ self.touchFeatureFactory.?.HIDE_SCREEN_BUTTONS })) {
            _ = Inheritance.call(self, "setTouchPaintableP", .{ NullPaintable.getInstance() });
        } else {
            _ = Inheritance.call(self, "setTouchPaintableP", .{ NullPaintable.getInstance() });
        }
    }
    

    pub fn getLayerManager(self: *Self) ?*AllBinaryGameLayerManager {
        return self.gameLayerManager;
    }
    

    pub fn setLayerManager(self: *Self, layerManager: ?*AllBinaryGameLayerManager) void {
        self.gameLayerManager = layerManager;
    }
    

    pub fn isGameOver(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return self.gameOver;
    }
    

    pub fn setGameOver(self: *Self, gameOver: bool) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.gameOver = gameOver;
    }
    

    // throws Exception
    pub fn processGameOver(self: *Self) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.gameStrings.?.SET_GAME_OVER });
        _ = Inheritance.call(self, "setGameOver", .{ true });
        _ = Inheritance.receiver(self, "removePauseCommand").removePauseCommand();
        _ = Inheritance.call(self, "setGameState", .{ self.gameStateFactory.?.SHOW_END_RESULT_GAME_STATE });
        _ = Inheritance.call(self, "setEndGamePaintable", .{ self.getEndGameStatePaintable() });
    }
    

    pub fn isHighScoreSubmitted(self: *Self) bool {
        return self.highScoreSubmitted;
    }
    

    // throws Exception
    pub fn setHighScoreSubmitted(self: *Self, highScoreSubmitted: bool) void {
        self.highScoreSubmitted = highScoreSubmitted;
        if (highScoreSubmitted) {
            _ = Inheritance.call(self.highScoresHelper.?, "setSelectedHighScores", .{ NullHighScoresSingletonFactory.getInstance() });
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("isHighScoreSubmitted: ") }).?, "appendboolean", .{ highScoreSubmitted }))), self, String.literal("setHighScoreSubmitted") });
    }
    

    pub fn getGameState(self: *Self) ?*GameState {
        return self.gameState;
    }
    

    // throws Exception
    pub fn setGameState(self: *Self, gameState: ?*GameState) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameStrings.?.GAME_STATE }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ gameState }) }))), self, self.gameStrings.?.SET_GAME_STATE });
        self.gameState = gameState;
        _ = self.gameStateTimeHelper.?.setStartTimeTNT();
        _ = self.updateEndGameProcessor();
        _ = self.updateGameKeyEventProcessor();
        _ = Inheritance.call(self.gameBehavior.?, "setGameState", .{ self });
    }
    

    // throws Exception
    pub fn updateGameState(self: *Self) void {
        const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
        _ = Inheritance.call(gameAdState.?, "processAdState", .{ self.gameState, Inheritance.receiverOf(Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo().?, "getGameType").getGameType() });
        if (!Object.same(self.gameState, self.gameStateFactory.?.PLAYING_GAME_STATE)) {
            _ = Inheritance.receiver(gameAdState.?, "processPageAdState").processPageAdState();
        }
    }
    

    pub fn updateGameKeyEventProcessor(self: *Self) void {
        if (!Object.same(self.getGameState(), self.gameStateFactory.?.PLAYING_GAME_STATE) or self.isCheating) {
        } else {
        }
    }
    

    pub fn removeAllGameKeyInputListenersOnBuild(self: *Self) void {
        _ = self.removeAllGameKeyInputListeners();
    }
    

    pub fn removeAllGameKeyInputListeners(self: *Self) void {
        _ = Inheritance.call(self.gameBehavior.?, "removeAllGameKeyInputListeners", .{ self });
    }
    

    pub fn removeAllGameKeyInputListeners2(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Remove PlayerInput Listeners"), self, String.literal("removeAllGameKeyInputListeners") });
        {
            var index: i32 = self.localPlayerGameInputList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const playerGameInput: ?*PlayerGameInput = Inheritance.cast(?*PlayerGameInput, Inheritance.call(self.localPlayerGameInputList.?, "get", .{ index }));
            _ = Inheritance.call(self, "removeKeyInputListener", .{ playerGameInput });
            _ = Inheritance.receiver(playerGameInput.?, "removeNonAIInputGameKeyEvents").removeNonAIInputGameKeyEvents();
            }
        }
    }
    

    pub fn removeKeyInputListener(self: *Self, playerGameInput: ?*PlayerGameInput) void {
        _ = Inheritance.call(self.gameKeyEventHandler.?, "removeListener", .{ playerGameInput });
    }
    

    // throws Exception
    pub fn updateEndGameProcessor(self: *Self) void {
        _ = Inheritance.call(self.gameBehavior.?, "updateEndGameProcessor", .{ self });
    }
    

    // throws Exception
    pub fn updateEndGameProcessor2(self: *Self) void {
        if (Object.same(self.getGameState(), self.gameStateFactory.?.SHOW_END_RESULT_GAME_STATE) or Object.same(self.getGameState(), self.gameStateFactory.?.SHOW_HIGH_SCORE_GAME_STATE)) {
            _ = Inheritance.call(self, "setEndGameProcessor", .{ self.realEndGameProcessor });
        } else {
            _ = Inheritance.call(self, "setEndGameProcessor", .{ Processor.getInstance() });
        }
    }
    

    // throws Exception
    pub fn buildGameInit(self: *Self, isPortion: bool) void {
        _ = isPortion;
        _ = self;
    }
    

    // throws Exception
    pub fn cleanupGame(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CLEANUP });
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 10, String.literal("Cleaning Up") });
        _ = self.primaryPlayerQueue.?.clear();
        _ = self.secondaryPlayerQueue.?.clear();
        _ = Inheritance.receiverOf(GameLevelDisplayChangeEventListenersFactory.getInstance().?, "clear").clear();
    }
    

    // throws Exception
    pub fn loadResourceLoadingLevel(self: *Self, resourceLoadingLevel: ?*ResourceLoadingLevel) void {
        _ = self;
        const gameInitializedEvent: ?*GameInitializedEvent = Inheritance.upcast(?*GameInitializedEvent, GameInitializationUtil.getInstance().?.EVENT);
        _ = Inheritance.call(gameInitializedEvent.?, "setResourceLoadingLevel", .{ resourceLoadingLevel });
        _ = Inheritance.call(GameInitializedEventHandler.getInstance().?, "fireEvent", .{ gameInitializedEvent });
    }
    

    // throws Exception
    pub fn loadResources(self: *Self, level: i32) void {
        _ = self;
        const gameInitializedEvent: ?*GameInitializedEvent = Inheritance.upcast(?*GameInitializedEvent, GameInitializationUtil.getInstance().?.EVENT);
        _ = Inheritance.call(gameInitializedEvent.?, "setLevel", .{ level });
        _ = Inheritance.call(GameInitializedEventHandler.getInstance().?, "fireEvent", .{ gameInitializedEvent });
    }
    

    // throws Exception
    pub fn updateColor(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn buildGame(self: *Self, portion: i32) void {
        _ = self.screenCapture.?.endRecording();
        _ = self.screenCapture.?.startRecording();
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ portion, String.literal("Generic Build") });
        _ = self.removeAllGameKeyInputListenersOnBuild();
        _ = self.updateTouch();
        _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ portion, String.literal("High Scores") });
        _ = Inheritance.call(self.highScoresFactoryInterface.?, "fetchHighScores", .{ Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo(), self.highScoresHelper });
        _ = Inheritance.call(self, "setHighScoresPaintable", .{ NullPaintable.getInstance() });
        _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ portion, String.literal("Finishing.") });
        _ = Inheritance.call(self.getEndGameInfoP().?, "update", .{ Inheritance.receiverOf(self.getLayerManager().?, "getGameInfo").getGameInfo(), self });
        self.isSingleKeyRepeatableProcessing = Inheritance.call(features.?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_REPEAT_PRESS });
        _ = Inheritance.call(self, "setGameOver", .{ false });
        _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ portion, String.literal("Finishing..") });
        _ = self.updateColor();
        _ = Inheritance.receiverOf(self.getStartIntermissionPaintable().?, "update").update();
        if (!self.isRunningInAnotherThread()) {
            return;
        }
        _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ portion, String.literal("Finishing...") });
        if (Inheritance.receiver(self, "isMainCanvas").isMainCanvas() or !self.isInitialized()) {
            if (Inheritance.call(features.?, "isFeature", .{ MainFeatureFactory.getInstance().?.LOAD_ONDEMAND })) {
                if (Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener() != null) {
                    _ = Inheritance.receiver(progressCanvas.?, "end").end();
                }
            } else {
                _ = Inheritance.receiver(progressCanvas.?, "end").end();
            }
            _ = Inheritance.call(self, "setInitialized", .{ true });
        }
        if (Object.same(Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener(), NullCommandListener.NULL_COMMAND_LISTENER)) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Show Game Paintable in DemoCanvas Thread"), self, self.BUILD_GAME });
            _ = self.gameCanvasStartListener.?.showGamePaintable();
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("No GameCanvasStartListener"), self, self.BUILD_GAME });
        }
        _ = Inheritance.call(self.colorFillPaintable.?, "setBasicColorP", .{ Inheritance.receiver(self.gameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor() });
        _ = Inheritance.call(self.gameBehavior.?, "buildGame", .{ self });
    }
    

    pub fn buildGame2(self: *Self) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameInputStrings.?.ENABLE_PLAYER_GAME_INPUTS }).?, "appendint", .{ self.localPlayerGameInputList.?.size() }))), self, self.BUILD_GAME });
        var playerGameInput: ?*PlayerGameInput = null;
        {
            var index: i32 = self.localPlayerGameInputList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            playerGameInput = Inheritance.cast(?*PlayerGameInput, Inheritance.call(self.localPlayerGameInputList.?, "get", .{ index }));
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameInputStrings.?.ENABLE_PLAYER_GAME_INPUT }).?, "append", .{ Object.toString(Object.of(playerGameInput)) }))), self, self.BUILD_GAME });
            _ = Inheritance.receiver(playerGameInput.?, "removeNonAIInputGameKeyEvents").removeNonAIInputGameKeyEvents();
            _ = Inheritance.call(self, "addKeyInputListener", .{ playerGameInput });
            }
        }
    }
    

    pub fn addKeyInputListener(self: *Self, playerGameInput: ?*PlayerGameInput) void {
        _ = self;
        _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "addListenerForPlayer", .{ playerGameInput, Inheritance.receiver(playerGameInput.?, "getPlayerInputId").getPlayerInputId() });
    }
    

    pub fn setGameCanvasStartListener(self: *Self, gameCanvasStartListener: ?*DemoPaintableInterface) void {
        self.gameCanvasStartListener = gameCanvasStartListener;
    }
    

    // throws Exception
    pub fn loadState(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.LOAD });
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, self.getLoadStateHashtable());
        if (hashtable != null and Inheritance.receiver(hashtable.?, "size").size() > 0) {
            const levelAsString: ?*String = Inheritance.cast(?*String, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, GameInfo.LEVEL_NAME) }));
            const level: i32 = Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ levelAsString }).?, "intValue").intValue();
            const gameInfo: ?*GameInfo = Inheritance.upcast(?*GameInfo, Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo());
            _ = Inheritance.call(gameInfo.?, "setCurrentLevel", .{ level });
        }
    }
    

    // throws Exception
    pub fn getLoadStateHashtable(self: *Self) ?*ABHashtable {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonLabels").*.?.START_LABEL }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ self.hashtable }) }))), self, String.literal("getLoadStateHashtable") });
        return self.hashtable;
    }
    

    pub fn setLoadStateHashtable(self: *Self, hashtable: ?*ABHashtable) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonLabels").*.?.START_LABEL }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ hashtable }) }))), self, String.literal("setLoadStateHashtable") });
        self.hashtable = hashtable;
    }
    

    pub fn getCurrentStateHashtable(self: *Self) ?*ABHashtable {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(Inheritance.fieldPointer(self, "stdUtil").*.?, "createHashtable").createHashtable());
        const level: i32 = Inheritance.receiverOf(Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo().?, "getCurrentLevel").getCurrentLevel();
        _ = Inheritance.call(hashtable.?, "put", .{ Object.toString(Object.of(GameInfo.LEVEL_NAME)), String.valueOf(level) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("End: ") }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ hashtable }) }))), self, String.literal("getCurrentStateHashtable") });
        return hashtable;
    }
    

    pub fn paintGameOver(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED, self });
    }
    

    pub fn draw(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.colorFillPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, Inheritance.receiver(self.gameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.gameSpecificPaintable.?, "paint", .{ graphics });
    }
    

    pub fn clear(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.colorFillPaintable.?, "paint", .{ graphics });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = self.baseGameStatistics.?.nextRefresh();
        _ = Inheritance.call(self, "draw", .{ graphics });
        _ = Inheritance.call(self.menuPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.progressPaintable.?, "paint", .{ graphics });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    // throws Exception
    pub fn processEndLevelIntermissionGameState(self: *Self) void {
        _ = self;
    }
    

    pub fn nonBotPaint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.endGamePaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.intermissionPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self, "paintIntermission", .{ graphics });
        _ = Inheritance.call(self.touchPaintable.?, "paint", .{ graphics });
    }
    

    pub fn paintIntermission(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
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
        _ = Inheritance.call(self.inputProcessor.?, "keyPressedByDevice", .{ keyCode, deviceId });
    }
    

    pub fn keyRepeatedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        if (self.isSingleKeyRepeatableProcessing) {
            _ = Inheritance.call(self.inputProcessor.?, "keyPressedByDevice", .{ keyCode, deviceId });
        }
    }
    

    pub fn keyReleasedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = Inheritance.call(self.inputProcessor.?, "keyReleasedByDevice", .{ self, keyCode, deviceId });
    }
    

    // throws Exception
    pub fn handleRawKey(self: *Self, keyCode: i32, deviceId: i32, repeated: bool) void {
        _ = keyCode;
        _ = deviceId;
        _ = repeated;
        _ = self;
    }
    

    pub fn endProgress(self: *Self, isProgress: bool) i32 {
        var portion: i32 = 30;
        if (isProgress and Inheritance.receiver(self, "isMainCanvas").isMainCanvas()) {
            const myCommandsFactory: ?*MyCommandsFactory = Inheritance.upcast(?*MyCommandsFactory, MyCommandsFactory.getInstance());
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            _ = Inheritance.receiver(progressCanvas.?, "start").start();
            _ = Inheritance.call(Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener().?, "commandAction", .{ myCommandsFactory.?.SET_DISPLAYABLE, progressCanvas });
            portion = 4;
        }
        return portion;
    }
    

    // throws Exception
    pub fn processPlayingGame(self: *Self) void {
        _ = Inheritance.receiver(self.cheatProcessor.?, "update").update();
        _ = Inheritance.receiverOf(self.sensorGameUpdateProcessor.?.getInputSensor().?, "update").update();
        _ = self.gameInputProcessor.?.process();
        _ = Inheritance.receiver(self.gameLayerManager.?, "process").process();
        _ = self.startIntermissionProcessor.?.process();
    }
    

    // throws Exception
    pub fn threadInit(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn processGame(self: *Self) void {
        _ = self.base.process();
        if (AllBinaryMediaManager.update()) {
            if (!self.primaryPlayerQueue.?.process()) {
                _ = self.secondaryPlayerQueue.?.process();
            }
        }
        _ = self.mainStateProcessor.?.process();
        _ = Inheritance.receiver(self.menuInputProcessor.?, "processInputList").processInputList();
        _ = self.endGameProcessor.?.process();
        _ = self.baseGameStatistics.?.nextFrame();
    }
    

    pub fn notifyDonePainting(self: *Self) void {
        {
            const monitor_N93352 = Object.monitor(self).enter();
            defer monitor_N93352.exit();
            _ = Inheritance.call(Inheritance.fieldPointer(self, "threadObjectUtil").*.?, "notifyObject", .{ self });
        }
    }
    

    // throws Exception
    pub fn shouldWait(self: *Self) void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (AndroidUtil.isAndroid()) {
        } else if (Inheritance.call(features.?, "isFeature", .{ self.openGLFeatureFactory.?.OPENGL_2D })) {
        } else {
            if (Inheritance.call(features.?, "isDefault", .{ self.openGLFeatureFactory.?.OPENGL })) {
                const openGLImageSpecificFactory: ?*OpenGLImageSpecificFactory = Inheritance.upcast(?*OpenGLImageSpecificFactory, OpenGLImageSpecificFactory.getInstance());
                while (openGLImageSpecificFactory.?.updating) {
                    _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(self.YIELD_SLEEP), .awake) catch {});
                }
            }
        }
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START_RUNNABLE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 50, String.literal("Game Thread") });
            _ = self.setCurrentThread();
            _ = Inheritance.call(self, "setRunning", .{ true });
            if (Object.same(Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener(), NullCommandListener.NULL_COMMAND_LISTENER)) {
                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(self.YIELD_SLEEP), .awake) catch {});
            }
            _ = self.shouldWait();
            _ = self.threadInit();
            if (Object.same(Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener(), NullCommandListener.NULL_COMMAND_LISTENER)) {
                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(self.YIELD_SLEEP), .awake) catch {});
            }
            _ = self.open();
            const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
            _ = Inheritance.receiver(gameAdState.?, "init").init();
            _ = Inheritance.call(gameAdState.?, "setGameIsReady", .{ true });
            _ = Inheritance.call(self.gameBehavior.?, "run", .{ self });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END_RUNNABLE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN, e });
    }
    

    // throws Exception
    pub fn run2(self: *Self) void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isDefault", .{ self.openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD }) or J2MEUtil.isHTML()) {
            if (Inheritance.call(features.?, "isDefault", .{ self.openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD })) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.receiverOf(self.openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD.?, "getName").getName(), self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
            }
            if (J2MEUtil.isHTML()) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ GraphicsStrings.getInstance().?.HTML, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
            }
            const currentDisplayableFactory: ?*CurrentDisplayableFactory = Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.getInstance());
            _ = Inheritance.call(currentDisplayableFactory.?, "setRunnable", .{ self.gameRunnable });
            _ = Inheritance.call(currentDisplayableFactory.?, "setDisplayable", .{ self });
            _ = Inheritance.receiverOf(OpenGLThreadUtil.getInstance().?, "onResume").onResume();
        } else if (Inheritance.call(features.?, "isDefault", .{ self.openGLFeatureFactory.?.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.receiverOf(self.openGLFeatureFactory.?.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.?, "getName").getName(), self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
            _ = Inheritance.receiverOf(OpenGLThreadUtil.getInstance().?, "onResume").onResume();
            while (Inheritance.receiver(self, "isRunning").isRunning()) {
                _ = self.run3();
            }
            _ = self.end();
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("this thread"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
            while (Inheritance.receiver(self, "isRunning").isRunning()) {
                _ = self.run3();
            }
            _ = self.end();
        }
    }
    

    // throws Exception
    pub fn run3(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "loopTimeHelper").*.?, "setStartTime", .{ self.gameTickTimeDelayHelper.?.setStartTime() });
        _ = self.gameTickDisplayInfoSingleton.?.update();
        _ = self.processGame();
        _ = Inheritance.receiver(self, "processLoopSleep").processLoopSleep();
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        _ = Inheritance.call(&self.base, "setRunning", .{ running });
        { // try
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            if (running) {
            } else {
                if (Inheritance.call(features.?, "isDefault", .{ self.openGLFeatureFactory.?.OPENGL }) or SWTUtil.isSWT) {
                    if (!Object.same(Inheritance.receiverOf(Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo().?, "getGameType").getGameType(), self.gameTypeFactory.?.BOT)) {
                        const currentDisplayableFactory: ?*CurrentDisplayableFactory = Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.getInstance());
                        _ = currentDisplayableFactory.?.clearRunnable();
                    }
                    _ = self.end();
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "SET_RUNNING").*, e });
    }
    

    // throws Exception
    pub fn end(self: *Self) void {
        _ = self.screenCapture.?.endRecording();
        _ = Inheritance.call(self.baseGameStatistics.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Object.toString(Object.of(self.baseGameStatistics)) }).?, "append", .{ CommonSeps.getInstance().?.NEW_LINE }))) });
        _ = self.baseGameStatistics.?.init();
        _ = Inheritance.call(self.gameKeyEventHandler.?, "removeListener", .{ self.cheatProcessor });
        _ = self.close();
        _ = self.removeAllGameKeyInputListeners();
        _ = self.endGameThread();
    }
    

    // throws Exception
    pub fn endGameThread(self: *Self) void {
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "removeListener", .{ self });
        _ = Inheritance.receiverOf(GameLevelDisplayChangeEventListenersFactory.getInstance().?, "clear").clear();
        const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, self.gameAdStateFactory.?.getCurrentInstance());
        _ = Inheritance.receiver(gameAdState.?, "notPlayingAdState").notPlayingAdState();
    }
    

    pub fn createHighScore(self: *Self, score: i64) ?*HighScore {
        const gameInfo: ?*GameInfo = Inheritance.upcast(?*GameInfo, Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo());
        return Inheritance.callStatic(HighScore, "create4", .{ 0, String.literal("NONE"), Inheritance.callStatic(GameInfo, "create5", .{ gameInfo.?.getGameType(), gameInfo.?.getGameMode(), PlayerTypesFactory.getInstance().?.PLAYER_TYPE_ONE, 0, 0 }), score });
    }
    

    // throws Exception
    pub fn setHighScore(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, name: ?*String, score: i64, autoSubmit: bool, isLast: bool) void {
        _ = Inheritance.call(self.gameBehavior.?, "setHighScore", .{ abeClientInformation, self, name, score, autoSubmit, isLast });
    }
    

    // throws Exception
    pub fn setHighScore2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, name: ?*String, score: i64, autoSubmit: bool, isLast: bool) void {
        const highScore: ?*HighScore = Inheritance.upcast(?*HighScore, Inheritance.call(self, "createHighScore", .{ score }));
        const textBox: ?*HighScoreTextBox = Inheritance.callStatic(HighScoreTextBox, "create9", .{ self.highScoresFactoryInterface, self.highScoresHelper, abeClientInformation, Inheritance.receiver(self.gameLayerManager.?, "getGameInfo").getGameInfo(), Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener(), name, highScore, Inheritance.receiver(self.gameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(self.gameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() });
        if (isLast) {
            _ = Inheritance.call(Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener().?, "commandAction", .{ GameCommandsFactory.getInstance().?.SET_MENU_DISPLAYABLE, textBox });
        }
        if (autoSubmit) {
            const SaveHighScoreRunnable = struct {
                const Self = @This();
                pub const java_name = "org.allbinary.game.displayable.canvas.SaveHighScoreRunnable";
                pub const java_interfaces = .{ Runnable };
                progressCanvas: ?*ProgressCanvas = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
                    this.progressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
                

                pub fn run(self: *Self) void {
                    _ = self;
                    const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
                    { // try
                        if (Inheritance.fieldPointer(self, "isLast").*) {
                            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "textBox").*.?, "submit").submit();
                        } else {
                            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "textBox").*.?, "saveHighScore").saveHighScore();
                        }
                    }
                    // catch (Exception e):
//                         const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                         _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("run"), e });
//                         _ = Inheritance.receiver(Inheritance.fieldPointer(self, "progressCanvas").*.?, "end").end();
                }
            };
            _ = Inheritance.call(SecondaryThreadPool.getInstance().?, "runTask", .{ SaveHighScoreRunnable.create() });
        }
    }
    

    pub fn getGameStateTimeHelper(self: *Self) ?*TimeDelayHelper {
        return self.gameStateTimeHelper;
    }
    

    pub fn setInitialized(self: *Self, initialized: bool) void {
        self.initialized = initialized;
    }
    

    pub fn isInitialized(self: *Self) bool {
        return self.initialized;
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return AllBinaryGameCanvas.id;
    }
    

    pub fn setProgressPaintable(self: *Self, paintable: ?*PaintableInterface) void {
        self.progressPaintable = paintable;
    }
    

    pub fn getStartIntermissionInterface(self: *Self) ?*IntermissionInterface {
        return self.startIntermissionInterface;
    }
    

    pub fn getEndLevelIntermissionInterface(self: *Self) ?*IntermissionInterface {
        return self.endLevelIntermissionInterface;
    }
    

    pub fn setTouchPaintableP(self: *Self, paintable: ?*Paintable) void {
        self.touchPaintable = Inheritance.upcast(@TypeOf(self.touchPaintable), paintable);
    }
    

    pub fn getTouchPaintableP(self: *Self) ?*Paintable {
        return self.touchPaintable;
    }
    

    pub fn setEndGamePaintable(self: *Self, endGamePaintable: ?*Paintable) void {
        self.endGamePaintable = endGamePaintable;
    }
    

    pub fn getEndGamePaintable(self: *Self) ?*Paintable {
        return self.endGamePaintable;
    }
    

    pub fn setIntermissionPaintable(self: *Self, intermissionPaintable: ?*Paintable) void {
        self.intermissionPaintable = intermissionPaintable;
    }
    

    pub fn getIntermissionPaintable(self: *Self) ?*Paintable {
        return self.intermissionPaintable;
    }
    

    pub fn getEndGameInfoP(self: *Self) ?*EndGameInfo {
        return self.endGameInfo;
    }
    

    pub fn setHighScoresPaintable(self: *Self, highScoresPaintable: ?*Paintable) void {
        self.highScoresPaintable = highScoresPaintable;
    }
    

    pub fn getHighScoresPaintable(self: *Self) ?*Paintable {
        return self.highScoresPaintable;
    }
    

    pub fn getRealHighScoresPaintable(self: *Self) ?*HighScoresPaintable {
        return self.realHighScoresPaintable;
    }
    

    pub fn clearPlayerGameInputList(self: *Self) void {
        var playerGameInput: ?*PlayerGameInput = null;
        {
            var index: i32 = self.localPlayerGameInputList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            playerGameInput = Inheritance.cast(?*PlayerGameInput, Inheritance.call(self.localPlayerGameInputList.?, "get", .{ index }));
            _ = Inheritance.call(self.gameKeyEventHandler.?, "removeListener", .{ playerGameInput });
            }
        }
        _ = self.localPlayerGameInputList.?.clear();
    }
    

    pub fn addPlayerGameInput(self: *Self, playerGameInput: ?*PlayerGameInput) void {
        _ = Inheritance.call(self.localPlayerGameInputList.?, "add", .{ playerGameInput });
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
    

    pub fn getStartLevel(self: *Self) i32 {
        return self.startLevel;
    }
    

    pub fn setStartLevel(self: *Self, startLevel: i32) void {
        self.startLevel = startLevel;
    }
    

    pub fn setTouchButtonsPaintable(self: *Self, touchButtonsPaintable: ?*Paintable) void {
        self.touchButtonsPaintable = touchButtonsPaintable;
    }
    

    pub fn getTouchButtonsPaintable(self: *Self) ?*Paintable {
        return self.touchButtonsPaintable;
    }
    

    pub fn setGameInputProcessor(self: *Self, gameInputProcessor: ?*Processor) void {
        self.gameInputProcessor = gameInputProcessor;
    }
    

    pub fn getGameInputProcessor(self: *Self) ?*Processor {
        return self.gameInputProcessor;
    }
    

    pub fn setEndGameProcessor(self: *Self, endGameProcessor: ?*Processor) void {
        self.endGameProcessor = endGameProcessor;
    }
    

    pub fn getEndGameProcessor(self: *Self) ?*Processor {
        return self.endGameProcessor;
    }
    

    pub fn setEndGameStatePaintable(self: *Self, endGameStatePaintable: ?*Paintable) void {
        self.endGameStatePaintable = endGameStatePaintable;
    }
    

    pub fn getEndGameStatePaintable(self: *Self) ?*Paintable {
        return self.endGameStatePaintable;
    }
    

    pub fn setNonBotPaintableP(self: *Self, nonBotPaintable: ?*Paintable) void {
        self.nonBotPaintable = nonBotPaintable;
    }
    

    pub fn getNonBotPaintableP(self: *Self) ?*Paintable {
        return self.nonBotPaintable;
    }
    

    pub fn setStartIntermissionPaintable(self: *Self, startIntermissionPaintable: ?*InitUpdatePaintable) void {
        self.startIntermissionPaintable = startIntermissionPaintable;
    }
    

    pub fn getStartIntermissionPaintable(self: *Self) ?*InitUpdatePaintable {
        return self.startIntermissionPaintable;
    }
    

    pub fn setMainStateProcessor(self: *Self, mainStateProcessor: ?*Processor) void {
        self.mainStateProcessor = mainStateProcessor;
    }
    

    pub fn getMainStateProcessor(self: *Self) ?*Processor {
        return self.mainStateProcessor;
    }
    

    pub fn setProcessGameProcessor(self: *Self, processGameProcessor: ?*Processor) void {
        self.processGameProcessor = processGameProcessor;
    }
    

    pub fn getProcessGameProcessor(self: *Self) ?*Processor {
        return self.processGameProcessor;
    }
    

    pub fn setOpenMenuPaintable(self: *Self, openMenuPaintable: ?*Paintable) void {
        self.openMenuPaintable = openMenuPaintable;
    }
    

    pub fn getOpenMenuPaintable(self: *Self) ?*Paintable {
        return self.openMenuPaintable;
    }
    

    pub fn setPopupMenuInputProcessor(self: *Self, popupMenuInputProcessor: ?*BasicMenuInputProcessor) void {
        self.popupMenuInputProcessor = popupMenuInputProcessor;
    }
    

    pub fn getPopupMenuInputProcessor(self: *Self) ?*BasicMenuInputProcessor {
        return self.popupMenuInputProcessor;
    }
    

    pub fn getSensorGameUpdateProcessor(self: *Self) ?*SensorGameUpdateProcessor {
        return self.sensorGameUpdateProcessor;
    }
    

    pub fn getRawGameInputProcessor(self: *Self) ?*InputProcessor {
        return self.rawGameInputProcessor;
    }
    

    pub fn getRawInputProcessor(self: *Self) ?*InputProcessor {
        return self.rawInputProcessor;
    }
    

    pub fn setInputProcessor(self: *Self, inputProcessor: ?*InputProcessor) void {
        self.inputProcessor = inputProcessor;
    }
    

    pub fn getInputProcessor(self: *Self) ?*InputProcessor {
        return self.inputProcessor;
    }
    

    pub fn setMenuPaintable(self: *Self, menuPaintable: ?*Paintable) void {
        self.menuPaintable = menuPaintable;
    }
    

    pub fn getMenuPaintable(self: *Self) ?*Paintable {
        return self.menuPaintable;
    }
    

    pub fn setFormPaintable(self: *Self, formPaintable: ?*Paintable) void {
        self.formPaintable = formPaintable;
    }
    

    pub fn getFormPaintable(self: *Self) ?*Paintable {
        return self.formPaintable;
    }
    

    pub fn setGameSpecificPaintableP(self: *Self, gameSpecificPaintable: ?*Paintable) void {
        self.gameSpecificPaintable = gameSpecificPaintable;
    }
    

    pub fn getGameSpecificPaintableP(self: *Self) ?*Paintable {
        return self.gameSpecificPaintable;
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
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return AllBinaryGameCanvas.TYPE;
    }
};

