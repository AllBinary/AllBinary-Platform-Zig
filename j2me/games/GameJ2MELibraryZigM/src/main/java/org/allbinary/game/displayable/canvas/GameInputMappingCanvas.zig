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
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const InputMappingInterface = @import("org/allbinary/game/input/mapping/InputMappingInterface.zig").InputMappingInterface;
const PersistentInputMapping = @import("org/allbinary/game/input/mapping/PersistentInputMapping.zig").PersistentInputMapping;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const ColorFillBasePaintable = @import("org/allbinary/game/paint/ColorFillBasePaintable.zig").ColorFillBasePaintable;
const ColorFillPaintableFactory = @import("org/allbinary/game/paint/ColorFillPaintableFactory.zig").ColorFillPaintableFactory;
const HelpPaintable = @import("org/allbinary/game/paint/help/HelpPaintable.zig").HelpPaintable;
const InputMappingHelpPaintable = @import("org/allbinary/game/paint/help/InputMappingHelpPaintable.zig").InputMappingHelpPaintable;
const ProcessPaintable = @import("org/allbinary/graphics/paint/ProcessPaintable.zig").ProcessPaintable;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GameCommandCanvas = @import("org/allbinary/game/displayable/canvas/GameCommandCanvas.zig").GameCommandCanvas;
const GameInputMappingInstructionsCanvas = @import("org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.zig").GameInputMappingInstructionsCanvas;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameInputMappingCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameInputMappingCanvas";
    base: GameCommandCanvas = undefined,
    paintable: ?*ProcessPaintable = null,
    helpPaintable: ?*InputMappingHelpPaintable = null,
    colorFillPaintable: ?*ColorFillBasePaintable = null,
    inputMapping: ?*PersistentInputMapping = null,
    NONE: ?*GameKey = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    selectedGameKey: ?*GameKey = null,
    selectedInput: ?*Input = null,
    inputFactory: ?*InputFactory = null,
    // Implements InputMappingInterface
    pub const NAME: ?*String = String.literal("GameInputMappingCanvas");
    pub var DISPLAY: ?*Command = undefined;
    pub var DEFAULT: ?*Command = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DISPLAY = Inheritance.callStatic(Command, "create4", .{ String.literal("Controls"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 2 });
        DEFAULT = Inheritance.callStatic(Command, "create4", .{ String.literal("Default"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 2 });
    }

    fn initFields(this: *Self) void {
        
        
        
        
        this.NONE = Inheritance.upcast(?*GameKey, GameKeyFactory.getInstance().?.NONE);
        
        this.selectedGameKey = this.NONE;
        this.selectedInput = Inheritance.upcast(?*Input, this.NONE);
        this.inputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
    }
    

    pub fn create4(abeClientInformation: ?*AbeClientInformationInterface, commandListener: ?*CommandListener, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, helpPaintable: ?*HelpPaintable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameCommandCanvas, "create4", .{ commandListener, GameInputMappingCanvas.NAME, Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(allBinaryGameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        if (helpPaintable == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Help Paintable Exception"); break :exception error.Exception; }});
        }
        this.abeClientInformation = abeClientInformation;
        this.helpPaintable = Inheritance.cast(?*InputMappingHelpPaintable, helpPaintable);
        this.inputMapping = Inheritance.upcast(@TypeOf(this.inputMapping), Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance());
        this.paintable = ProcessPaintable.create();
        this.colorFillPaintable = Inheritance.upcast(@TypeOf(this.colorFillPaintable), Inheritance.call(ColorFillPaintableFactory.getInstance().?, "getInstance", .{ Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), false }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = self.base.close();
        _ = Inheritance.receiver(self.paintable.?, "process").process();
        self.selectedGameKey = self.NONE;
        self.selectedInput = Inheritance.upcast(@TypeOf(self.selectedInput), self.NONE);
        _ = self.update();
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ GameCommandsFactory.getInstance().?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "addCommand", .{ GameInputMappingCanvas.DEFAULT });
        _ = Inheritance.call(self, "addCommand", .{ GameInputMappingInstructionsCanvas.DISPLAY });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
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
        _ = Inheritance.call(self, "addGameKey", .{ keyCode, false });
        _ = Inheritance.call(&self.base, "keyPressedByDevice", .{ keyCode, 0 });
    }
    

    pub fn addGameKey(self: *Self, keyCode: i32, repeated: bool) void {
        _ = repeated;
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Raw Device Key Code: ") }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, keyCode)))}) catch unreachable) }))), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ADD_KEY_EVENT });
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(Inheritance.fieldPointer(self, "inputToGameKeyMapping").*.?, "getInstanceForCanvas", .{ self, keyCode }));
            const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(self.inputFactory.?, "getInstanceById", .{ keyCode }));
            _ = Inheritance.call(self, "processInputMapping", .{ gameKey, input });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Key Event Error"), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ADD_KEY_EVENT, e });
    }
    

    // throws Exception
    pub fn processInputMapping(self: *Self, gameKey: ?*GameKey, input: ?*Input) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Start Passed GameKey: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ gameKey }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Input: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ input }) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS });
        if (!Object.same(self.selectedGameKey, self.NONE)) {
            _ = Inheritance.call(self, "gameActionCrud", .{ gameKey, input });
        } else {
            _ = Inheritance.call(self, "setSelectedAction", .{ gameKey });
        }
    }
    

    pub fn setSelectedAction(self: *Self, gameKey: ?*GameKey) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Selected GameKey: ") }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ gameKey }) }))), self, String.literal("setSelectedAction") });
        self.selectedGameKey = gameKey;
        self.selectedInput = Inheritance.upcast(@TypeOf(self.selectedInput), self.NONE);
        _ = Inheritance.call(self.helpPaintable.?, "update", .{ self.selectedGameKey, self.selectedInput });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
    }
    

    // throws Exception
    pub fn gameActionCrud(self: *Self, gameKey: ?*GameKey, input: ?*Input) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Start GameKey: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ self.selectedGameKey }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Input: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ self.selectedInput }) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("gameActionCrud") });
        if (Object.same(self.selectedInput, self.NONE)) {
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.inputMapping.?.getInputMapping().?, "getMappedInput", .{ self.selectedGameKey }));
            const isInputAlreadyMappedToSelectedAction: bool = Inheritance.call(list.?, "contains", .{ input });
            if (isInputAlreadyMappedToSelectedAction) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Already Mapped Input: ") }).?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ input }) }))), self, String.literal("gameActionCrud") });
                self.selectedInput = input;
                _ = Inheritance.call(self.helpPaintable.?, "update", .{ self.selectedGameKey, self.selectedInput });
                _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
            } else {
                _ = Inheritance.call(self, "addNewMapping", .{ gameKey, input });
            }
        } else if (Inheritance.call(self.inputMapping.?, "isDelete", .{ input })) {
            _ = self.deleteCurrentMapping();
        } else {
            _ = Inheritance.call(self, "setSelectedAction", .{ gameKey });
        }
    }
    

    // throws Exception
    pub fn addNewMapping(self: *Self, gameKey: ?*GameKey, input: ?*Input) void {
        const METHOD_NAME: ?*String = String.literal("addNewMapping");
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, METHOD_NAME });
        const isInputAlreadyMapped: bool = Inheritance.call(self.inputMapping.?.getInputMapping().?, "isMapped", .{ input });
        if (!isInputAlreadyMapped and !Inheritance.call(self.inputMapping.?, "isSystemInput", .{ input })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Add Key Mapping : GameKey: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ self.selectedGameKey }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Input: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ self.selectedInput }) });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
            _ = Inheritance.call(self.inputMapping.?.getInputMapping().?, "add", .{ self.selectedGameKey, input });
            self.selectedInput = input;
            _ = self.update();
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to"), self, METHOD_NAME });
            _ = Inheritance.call(self, "setSelectedAction", .{ gameKey });
        }
    }
    

    // throws Exception
    pub fn deleteCurrentMapping(self: *Self) void {
        const METHOD_NAME: ?*String = String.literal("deleteCurrentMapping");
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.inputMapping.?.getInputMapping().?, "getMappedInput", .{ self.selectedGameKey }));
        if (list.?.size() > 1) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Start GameKey: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Remove Key Mapping: GameKey: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ self.selectedGameKey }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Input: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.fieldPointer(self, "stringUtil").*.?, "toString", .{ self.selectedInput }) });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
            _ = Inheritance.call(self.inputMapping.?.getInputMapping().?, "remove", .{ self.selectedGameKey, self.selectedInput });
            self.selectedInput = Inheritance.upcast(@TypeOf(self.selectedInput), self.NONE);
            _ = self.update();
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Can't Remove Last Key Mapping"), self, METHOD_NAME });
        }
    }
    

    // throws Exception
    pub fn setDefault(self: *Self) void {
        _ = Inheritance.call(self.inputMapping.?, "setDefault", .{ self.abeClientInformation });
        _ = Inheritance.call(self.helpPaintable.?, "update", .{ self.NONE, self.NONE });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = Inheritance.call(self.inputMapping.?, "update", .{ self.abeClientInformation });
        _ = Inheritance.call(self.helpPaintable.?, "update", .{ self.selectedGameKey, self.selectedInput });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.colorFillPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.helpPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(self.paintable.?, "paint", .{ graphics });
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
    }
};

