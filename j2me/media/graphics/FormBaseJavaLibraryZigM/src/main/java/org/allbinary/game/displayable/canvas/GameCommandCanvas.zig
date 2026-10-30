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
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const NullCommandListener = @import("javax/microedition/lcdui/NullCommandListener.zig").NullCommandListener;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const RepaintBehavior = @import("org/allbinary/game/displayable/RepaintBehavior.zig").RepaintBehavior;
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
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const DisplayChangeEventHandler = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.zig").DisplayChangeEventHandler;
const DisplayChangeEventListener = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventListener.zig").DisplayChangeEventListener;
const ScreenRepaintProcessorFactory = @import("org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.zig").ScreenRepaintProcessorFactory;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const CommandCurrentSelectionFormFactory = @import("org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.zig").CommandCurrentSelectionFormFactory;
const FormPaintable = @import("org/allbinary/graphics/form/FormPaintable.zig").FormPaintable;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;
const PaintableForm = @import("org/allbinary/graphics/form/PaintableForm.zig").PaintableForm;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const ScrollSelectionFormNoneFactory = @import("org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.zig").ScrollSelectionFormNoneFactory;
const CommandTextItemArrayFactory = @import("org/allbinary/graphics/form/item/CommandTextItemArrayFactory.zig").CommandTextItemArrayFactory;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const AllCommandsVisitor = @import("org/allbinary/graphics/form/item/validation/AllCommandsVisitor.zig").AllCommandsVisitor;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.zig").BasicMenuInputProcessor;
const ImmediateCommandFormInputProcessor = @import("org/allbinary/game/displayable/canvas/ImmediateCommandFormInputProcessor.zig").ImmediateCommandFormInputProcessor;
const MenuListener = @import("org/allbinary/game/displayable/canvas/MenuListener.zig").MenuListener;
const NoMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/NoMenuInputProcessor.zig").NoMenuInputProcessor;

pub const GameCommandCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameCommandCanvas";
    pub const java_interfaces = .{ MenuListener };
    base: MyCanvas = undefined,
    repaintProcessor: ?*Processor = null,
    gameInputStrings: ?*GameInputStrings = null,
    foregroundBasicColor: ?*BasicColor = null,
    backgroundBasicColor: ?*BasicColor = null,
    inputToGameKeyMapping: ?*InputToGameKeyMapping = null,
    gameKeyFactory: ?*GameKeyFactory = null,
    gameKeyEventFactory: ?*GameKeyEventFactory = null,
    downGameKeyEventHandler: ?*DownGameKeyEventHandler = null,
    upGameKeyEventHandler: ?*UpGameKeyEventHandler = null,
    repaintBehavior: ?*RepaintBehavior = null,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    foregroundColor: i32 = 0,
    backgroundColor: i32 = 0,
    menuInputProcessor: ?*BasicMenuInputProcessor = null,
    menuPaintable: ?*Paintable = null,
    menuForm: ?*PaintableForm = null,
    isSingleKeyRepeatableProcessing: bool = false,
    fontHeight: i32 = 0,
    // Implements MenuListener
    // Implements DisplayChangeEventListener
    // Implements UpdateMyFontInterface
    const id: i32 = 0;

    fn initFields(this: *Self) void {
        this.repaintProcessor = Inheritance.upcast(?*Processor, Inheritance.call(ScreenRepaintProcessorFactory.getInstance().?, "create", .{ this }));
        this.gameInputStrings = Inheritance.upcast(?*GameInputStrings, GameInputStrings.getInstance());
        
        
        this.inputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, Inheritance.receiverOf(Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance().?, "getInputMapping").getInputMapping());
        this.gameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        this.gameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        this.downGameKeyEventHandler = Inheritance.upcast(?*DownGameKeyEventHandler, DownGameKeyEventHandler.getInstance());
        this.upGameKeyEventHandler = Inheritance.upcast(?*UpGameKeyEventHandler, UpGameKeyEventHandler.getInstance());
        
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        
        
        this.menuInputProcessor = Inheritance.upcast(?*BasicMenuInputProcessor, NoMenuInputProcessor.getInstance());
        this.menuPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.menuForm = Inheritance.upcast(?*PaintableForm, PaintableForm.getNullPaintableForm());
        this.isSingleKeyRepeatableProcessing = Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_REPEAT_PRESS });
        this.fontHeight = 0;
    }
    

    pub fn create4(cmdListener: ?*CommandListener, name: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MyCanvas, "create2", .{ name, CanvasStrings.getInstance().?.EMPTY_CHILD_NAME_LIST }).*;
        this.initFields();
        this.repaintBehavior = Inheritance.upcast(@TypeOf(this.repaintBehavior), RepaintBehavior.getInstance());
        this.foregroundBasicColor = foregroundBasicColor;
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundColor = this.foregroundBasicColor.?.intValue();
        this.backgroundColor = this.backgroundBasicColor.?.intValue();
        _ = Inheritance.call(this, "initCommands", .{ cmdListener });
        if (!Object.same(cmdListener, NullCommandListener.NULL_COMMAND_LISTENER)) {
            { // try
                _ = this.initMenu();
                _ = this.repaintProcessor.?.process();
            }
            // catch (Exception e):
//                 std.debug.panic("{any}", .{error.RuntimeException});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        { // try
            const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START }).?, "append", .{ Inheritance.fieldPointer(self, "canvasStrings").*.?.FD_WIDTH }).?, "appendint", .{ @as(i32, @intCast(Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font }))) }).?, "append", .{ Inheritance.fieldPointer(self, "canvasStrings").*.?.FD_HEIGHT }).?, "appendint", .{ @as(i32, @intCast(font.?.getHeight())) }))), self, Inheritance.fieldPointer(self, "canvasStrings").*.?.UPDATE_MEASUREMENT });
            self.fontHeight = font.?.getHeight();
            const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, Inheritance.call(self, "createRectangle", .{ Inheritance.receiver(self.menuForm.?, "size").size() }));
            _ = Inheritance.call(self.menuForm.?, "init", .{ rectangle, FormTypeFactory.getInstance().?.VERTICAL_CENTER_FORM });
            _ = self.update();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "canvasStrings").*.?.ON_DISPLAY_CHANGE_EVENT, e });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = displayChangeEvent;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START }).?, "append", .{ Object.toString(Object.of(DisplayInfoSingleton.getInstance())) }))), self, Inheritance.fieldPointer(self, "canvasStrings").*.?.ON_DISPLAY_CHANGE_EVENT });
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ GameCommandsFactory.getInstance().?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    // throws Exception
    pub fn initMenu(self: *Self) void {
        const form: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, self.createForm());
        self.menuForm = Inheritance.upcast(@TypeOf(self.menuForm), form);
        if (!Object.same(form, ScrollSelectionFormNoneFactory.getInstance())) {
            _ = Inheritance.call(self, "setMenuInputProcessor", .{ Inheritance.callStatic(ImmediateCommandFormInputProcessor, "create4", .{ BasicArrayListD.create(), -1, self, form }) });
            self.menuPaintable = Inheritance.upcast(@TypeOf(self.menuPaintable), Inheritance.callStatic(FormPaintable, "create1", .{ form }));
        }
        _ = Inheritance.call(self.repaintBehavior.?, "onChangeRepaint", .{ self });
    }
    

    // throws Exception
    pub fn createForm(self: *Self) ?*ScrollSelectionForm {
        const items: []?*ABCustomItem = Inheritance.call(Inheritance.callStatic(CommandTextItemArrayFactory, "create1", .{ AllCommandsVisitor.create() }), "getInstance", .{ Inheritance.receiver(self, "getCommandStack").getCommandStack(), self.backgroundBasicColor, self.foregroundBasicColor });
        const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, Inheritance.call(self, "createRectangle", .{ @as(i32, @intCast(items.len)) }));
        return Inheritance.upcast(?*ScrollSelectionForm, Inheritance.callStatic(CommandCurrentSelectionFormFactory, "getInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().?.VERTICAL_CENTER_FORM, 15, false, self.backgroundBasicColor, self.foregroundBasicColor }));
    }
    

    pub fn createRectangle(self: *Self, size: i32) ?*Rectangle {
        const height: i32 = size * self.fontHeight;
        const startY: i32 = ((divide_N70488: { const left_N70488 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastHeight").getLastHeight() * 2; const right_N70488 = 3; break :divide_N70488 if (comptime @typeInfo(@TypeOf(left_N70488)) == .int or @TypeOf(left_N70488) == comptime_int) @divTrunc(left_N70488, right_N70488) else left_N70488 / right_N70488; })) - height;
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const rectangle: ?*Rectangle = Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(pointFactory.?, "createXY", .{ 30, startY }), Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastWidth").getLastWidth() - 30, startY });
        return rectangle;
    }
    

    pub fn open(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("open") });
        _ = Inheritance.call(BasicMotionGesturesHandler.getInstance().?, "addListenerInterface", .{ self.getMenuInputProcessor() });
        _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "addListener", .{ self.getMenuInputProcessor() });
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "addListenerInterface", .{ self });
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CLOSE });
        _ = Inheritance.call(BasicMotionGesturesHandler.getInstance().?, "removeListener", .{ self.getMenuInputProcessor() });
        _ = Inheritance.call(GameKeyEventHandler.getInstance().?, "removeListener", .{ self.getMenuInputProcessor() });
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "removeListener", .{ self });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = self.repaintProcessor.?.process();
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return GameCommandCanvas.id;
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
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "appendint", .{ keyCode }))), self, self.gameInputStrings.?.KEY_PRESSED });
        _ = Inheritance.call(self, "addGameKeyEvent", .{ keyCode, 0, false });
    }
    

    pub fn keyReleasedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = Inheritance.call(self, "removeGameKeyEvent", .{ keyCode, deviceId, false });
    }
    

    pub fn keyRepeatedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        if (self.isSingleKeyRepeatableProcessing) {
            _ = Inheritance.call(self, "addGameKeyEvent", .{ keyCode, deviceId, true });
        }
    }
    

    pub fn addGameKeyEvent(self: *Self, keyCode: i32, deviceId: i32, repeated: bool) void {
        _ = repeated;
        { // try
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(self.inputToGameKeyMapping.?, "getInstanceForCanvas", .{ self, keyCode }));
            if (!Object.same(gameKey, self.gameKeyFactory.?.NONE)) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self, gameKey }));
                _ = Inheritance.call(self.downGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.call(self.downGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameInputStrings.?.NO_KEY }).?, "appendint", .{ keyCode }))), self, self.gameInputStrings.?.ADD_KEY_EVENT });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Key Event Error"), self, self.gameInputStrings.?.ADD_KEY_EVENT, e });
    }
    

    pub fn removeGameKeyEvent(self: *Self, keyCode: i32, deviceId: i32, repeated: bool) void {
        _ = repeated;
        { // try
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(self.inputToGameKeyMapping.?, "getInstanceForCanvas", .{ self, keyCode }));
            if (!Object.same(gameKey, self.gameKeyFactory.?.NONE)) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self, gameKey }));
                _ = Inheritance.call(self.upGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.call(self.upGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameInputStrings.?.NO_KEY }).?, "appendint", .{ keyCode }))), self, self.gameInputStrings.?.REMOVE_KEY_EVENT });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Key Event Error"), self, self.gameInputStrings.?.REMOVE_KEY_EVENT, e });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self.menuPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.repaintBehavior.?, "repaint", .{ self });
    }
    

    pub fn setMenuInputProcessor(self: *Self, menuInputProcessor: ?*BasicMenuInputProcessor) void {
        self.menuInputProcessor = menuInputProcessor;
    }
    

    pub fn getMenuInputProcessor(self: *Self) ?*BasicMenuInputProcessor {
        return self.menuInputProcessor;
    }
};

